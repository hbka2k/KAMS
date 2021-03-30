package kr.or.jobkams.controller;

import kr.or.jobkams.common.Constants;
import kr.or.jobkams.common.EgovProperties;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.*;
import kr.or.jobkams.service.BasicService;
import kr.or.jobkams.service.BbsService;
import kr.or.jobkams.service.impl.FileMngService;
import kr.or.jobkams.util.FileMngUtil;
import kr.or.jobkams.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Program Name : kr.or.jobkams.controller
 * Author : shlee
 * Date : 2021-03-15
 * Description :
 * History :
 * Version :
 */
@Controller
public class BbsController extends CommonController {

    @Autowired
    private BbsService bbsService;

    @Autowired
    private FileMngService fileMngService;

    @Autowired
    private FileMngUtil fileUtil;

    @Autowired
    private BasicService basicService;

    public BbsController() {
    }

    @RequestMapping("/cont/bbs/matching_list.do")
    public String cont_bbs_matching_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/matching_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            searchVo.setSearchKind("1");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(1);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_matching_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/matching_inscr";
        String menu_url = "cont/bbs/matching_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            // 카테고리 - 매칭스토리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(1);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_matching_inproc(final MultipartHttpServletRequest multiRequest,
                                         @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                         BindingResult bindingResult,
                                         Model model,
                                         SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(1);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/matching_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_view.do", method = RequestMethod.GET)
    public String cont_bbs_matching_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/matching_view";
        String menu_url = "cont/bbs/matching_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            /*List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(1);
            model.addAttribute("cateList", cateList);*/
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_matching_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/matching_upscr";
        String menu_url = "cont/bbs/matching_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(1);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_matching_upproc(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/matching_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/matching_delete.do", method = RequestMethod.POST)
    public String cont_bbs_matching_delete(final MultipartHttpServletRequest multiRequest,
                                         @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                         BindingResult bindingResult,
                                         Model model,
                                         SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/matching_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/job_news_list.do")
    public String cont_bbs_job_news_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_news_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            searchVo.setSearchKind("2");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(2);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_job_news_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_news_inscr";
        String menu_url = "cont/bbs/job_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(2);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_job_news_inproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(2);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/job_news_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_view.do", method = RequestMethod.GET)
    public String cont_bbs_job_news_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_news_view";
        String menu_url = "cont/bbs/job_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_job_news_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_news_upscr";
        String menu_url = "cont/bbs/job_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(2);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_job_news_upproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/job_news_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_news_delete.do", method = RequestMethod.POST)
    public String cont_bbs_job_news_delete(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/job_news_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/corp_news_list.do")
    public String cont_bbs_corp_news_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/corp_news_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            searchVo.setSearchKind("3"); // 매칭스토리
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(3);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_corp_news_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/corp_news_inscr";
        String menu_url = "cont/bbs/corp_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(3);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_corp_news_inproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(3);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/corp_news_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_view.do", method = RequestMethod.GET)
    public String cont_bbs_corp_news_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/corp_news_view";
        String menu_url = "cont/bbs/corp_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_corp_news_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/corp_news_upscr";
        String menu_url = "cont/bbs/corp_news_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(3);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_corp_news_upproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/corp_news_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/corp_news_delete.do", method = RequestMethod.POST)
    public String cont_bbs_corp_news_delete(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/corp_news_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/employ_welfare_list.do")
    public String cont_bbs_employ_welfare_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/employ_welfare_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            searchVo.setSearchKind("7");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(7);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_employ_welfare_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/employ_welfare_inscr";
        String menu_url = "cont/bbs/employ_welfare_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(7);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_employ_welfare_inproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(7);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/employ_welfare_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_view.do", method = RequestMethod.GET)
    public String cont_bbs_employ_welfare_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/employ_welfare_view";
        String menu_url = "cont/bbs/employ_welfare_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_empoly_welfare_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/employ_welfare_upscr";
        String menu_url = "cont/bbs/employ_welfare_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(7);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_empoly_welfare_upproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/employ_welfare_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/employ_welfare_delete.do", method = RequestMethod.POST)
    public String cont_bbs_employ_welfare_delete(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/employ_welfare_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_info_list.do", method = RequestMethod.GET)
    public String cont_bbs_job_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_info_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        /*if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }
        }*/

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_info_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_job_info_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_info_inscr";
        String menu_url = "cont/bbs/job_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        /*if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }
        }*/

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_info_view.do", method = RequestMethod.GET)
    public String cont_bbs_job_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_info_view";
        String menu_url = "cont/bbs/job_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        /*if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }
        }*/

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/job_info_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_job_info_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/job_info_upscr";
        String menu_url = "cont/bbs/job_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        /*if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }
        }*/

        return ret_url;
    }

    @RequestMapping("/cont/bbs/file_info_list.do")
    public String cont_bbs_file_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/file_info_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            searchVo.setSearchKind("4");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(4);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_file_info_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/file_info_inscr";
        String menu_url = "cont/bbs/file_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(4);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_file_info_inproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(4);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/file_info_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_view.do", method = RequestMethod.GET)
    public String cont_bbs_file_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/file_info_view";
        String menu_url = "cont/bbs/file_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_file_info_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/file_info_upscr";
        String menu_url = "cont/bbs/file_info_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(4);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_file_info_upproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/file_info_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/file_info_delete.do", method = RequestMethod.POST)
    public String cont_bbs_file_info_delete(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                           BindingResult bindingResult,
                                           Model model,
                                           SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/file_info_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/faq_list.do")
    public String cont_bbs_faq_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/faq_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            searchVo.setSearchKind("5");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(5);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_faq_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/faq_inscr";
        String menu_url = "cont/bbs/faq_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(5);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_faq_inproc(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                bbsDetailVo.setBbs_idx(5);
                if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                    bbsDetailVo.setTop_yn("N");
                }

                bbsService.insertBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/faq_list.do");
                model.addAttribute("altmsg", "저장되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_view.do", method = RequestMethod.GET)
    public String cont_bbs_faq_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/faq_view";
        String menu_url = "cont/bbs/faq_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_faq_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/faq_upscr";
        String menu_url = "cont/bbs/faq_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(5);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_faq_upproc(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                    bbsDetailVo.setTop_yn("N");
                }

                bbsService.updateBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/faq_list.do");
                model.addAttribute("altmsg", "수정되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/faq_delete.do", method = RequestMethod.POST)
    public String cont_bbs_faq_delete(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/faq_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/notice_list.do")
    public String cont_bbs_notice_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/notice_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            searchVo.setSearchKind("6");
            List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
            for(BbsDetailVo item : itemList) {
                String cate_nm = bbsService.selectBbsCateName(item.getCate_idx());
                item.setCate_nm(cate_nm);

                item.setIs_new(Util.getNewYn(item.getReg_dt()));
            }
            int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(6);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_inscr.do", method = RequestMethod.GET)
    public String cont_bbs_notice_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/notice_inscr";
        String menu_url = "cont/bbs/notice_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(6);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_inscr.do", method = RequestMethod.POST)
    public String cont_bbs_notice_inproc(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 이미지파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);
                if (cmm.isFtype_flag()) {
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if (cmm.getChkcnt() > 0) {
                        List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                        atchFileId = fileMngService.insertFileInfs(result);
                    }

                    bbsDetailVo.setAtch_file_id(atchFileId);
                    bbsDetailVo.setReg_id(adminLoginVo.getAdmin_id());
                    bbsDetailVo.setBbs_idx(6);
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.insertBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/notice_list.do");
                    model.addAttribute("altmsg", "저장되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_view.do", method = RequestMethod.GET)
    public String cont_bbs_notice_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/notice_view";
        String menu_url = "cont/bbs/notice_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            String cate_nm = bbsService.selectBbsCateName(bbsDetailVo.getCate_idx());
            bbsDetailVo.setCate_nm(cate_nm);

            model.addAttribute("bbsDetailVo", bbsDetailVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_notice_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/notice_upscr";
        String menu_url = "cont/bbs/notice_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

            BbsDetailVo bbsDetailVo = new BbsDetailVo();
            bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

            bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

            bbsService.updateBbsDetailViewCnt(bbsDetailVo);

            // 첨부파일 처리
            String atchFileId = bbsDetailVo.getAtch_file_id();
            String min_img_path = EgovProperties.getProperty("bd.file.url.path");
            FileVo fvo = new FileVo();
            fvo.setAtch_file_id(atchFileId);
            List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
            for(FileVo fileVo : fileVoList){
                fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
            }
            bbsDetailVo.setFileList(fileVoList);

            bbsDetailVo.setReg_nm(basicService.selectAdminName(bbsDetailVo.getReg_id()));
            bbsDetailVo.setUp_nm(basicService.selectAdminName(bbsDetailVo.getUp_id()));

            model.addAttribute("bbsDetailVo", bbsDetailVo);

            // 카테고리
            List<BbsCateVo> cateList = bbsService.selectBbsCateListEx(6);
            model.addAttribute("cateList", cateList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_notice_upproc(final MultipartHttpServletRequest multiRequest,
                                            @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                            BindingResult bindingResult,
                                            Model model,
                                            SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                // 첨부파일 처리
                CommonVo cmm = this.getAttachFileInfo(multiRequest);

                if(cmm.isFtype_flag()){
                    // 첨부파일 정보 등록
                    String atchFileId = "";
                    if(cmm.getChkcnt() > 0){

                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> chkList = fileMngService.selectFileInfs(fvo);

                        if(chkList.size() > 0){
                            // 기존에 등록 된게 있으면
                            int cnt = fileMngService.getMaxFileSN(fvo);

                            List<FileVo> _result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_",cnt, bbsDetailVo.getAtch_file_id(), EgovProperties.getProperty("bd.file.path"));
                            fileMngService.updateFileInfs(_result);
                        }else{
                            //없으면 신규 등록 한다.
                            List<FileVo> result = fileUtil.parseFileInf(cmm.getTmpfiles(), "BBS_", 1, "", EgovProperties.getProperty("bd.file.path"));
                            atchFileId = fileMngService.insertFileInfs(result);
                            bbsDetailVo.setAtch_file_id(atchFileId);
                        }
                    } else {
                        FileVo fvo = new FileVo();
                        fvo.setAtch_file_id(bbsDetailVo.getAtch_file_id());
                        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
                        if (fileVoList.size() == 0) {
                            bbsDetailVo.setAtch_file_id("");
                        }
                    }

                    bbsDetailVo.setUp_id(adminLoginVo.getAdmin_id());
                    if("".equals(Util.nvl(bbsDetailVo.getTop_yn()))) {
                        bbsDetailVo.setTop_yn("N");
                    }

                    bbsService.updateBbsDetailInfo(bbsDetailVo);

                    model.addAttribute("msg", "alterloc");
                    model.addAttribute("locurl", "/artmore_adm/cont/bbs/notice_list.do");
                    model.addAttribute("altmsg", "수정되었습니다.");

                } else {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "허용되지 않은 파일 형태 입니다.");
                    return ret_url;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/notice_delete.do", method = RequestMethod.POST)
    public String cont_bbs_notice_delete(final MultipartHttpServletRequest multiRequest,
                                      @ModelAttribute("bbsDetailVo") BbsDetailVo bbsDetailVo,
                                      BindingResult bindingResult,
                                      Model model,
                                      SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.deleteBbsDetailInfo(bbsDetailVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/notice_list.do");
                model.addAttribute("altmsg", "삭제 되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "삭제에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping("/cont/bbs/bbs_mng_list.do")
    public String cont_bbs_bbs_mng_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/bbs_mng_list";
        String in_url = "/" + ret_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            if(!"".equals(menuMstVo.getRet_url()))  {
                model.addAttribute("msg", "alterBack");
                model.addAttribute("altmsg", "접근권한이 없습니다.");

                return "common/message";
            }

            List<BbsMstVo> itemList = bbsService.selectBbsMstList(searchVo);
            int totalCount = bbsService.selectBbsMstListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/bbs_mng_upscr.do", method = RequestMethod.GET)
    public String cont_bbs_bbs_mng_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/bbs/bbs_mng_upscr";
        String menu_url = "cont/bbs/bbs_mng_list";
        String in_url = "/" + menu_url + Constants.global_ext;

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        // 공통
        MenuMstVo menuMstVo = this.getMenuMstInfo(in_url, adminLoginVo, "4");
        model  = this.setCommonModel(menuMstVo, model);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {
            int bbs_idx = ServletRequestUtils.getIntParameter(request, "bbs_idx", 0);

            BbsMstVo bbsMstVo = new BbsMstVo();
            bbsMstVo.setBbs_idx(bbs_idx);

            bbsMstVo = bbsService.selectBbsMst(bbsMstVo);

            model.addAttribute("bbsMstVo", bbsMstVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/bbs/bbs_mng_upscr.do", method = RequestMethod.POST)
    public String cont_bbs_bbs_mng_upproc(final MultipartHttpServletRequest multiRequest,
                                      @ModelAttribute("bbsMstVo") BbsMstVo bbsMstVo,
                                      BindingResult bindingResult,
                                      Model model,
                                      SessionStatus status)  throws Exception {

        String ret_url = "common/message";

        try {
            // 모든 POST에 XSS 처리
            /*for (Field field : memberVo.getClass().getDeclaredFields()){
                field.setAccessible(true);
                Object value=field.get(memberVo);
                if(value instanceof String){
                    field.set(memberVo, SafeHtmlUtil.sanitize(Util.nvl(value)));
                }
            }*/

            HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {
                bbsService.updateBbsMst(bbsMstVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/bbs/bbs_mng_list.do");
                model.addAttribute("altmsg", "수정되었습니다.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }
}

package kr.or.jobkams.controller;

import kr.or.jobkams.common.EgovProperties;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.model.FileVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.service.BbsService;
import kr.or.jobkams.service.ComJobService;
import kr.or.jobkams.service.FileMngService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ComJobController extends CommonController {

    @Autowired
    private ComJobService comjobService;

    @Autowired
    private BbsService bbsService;

    @Autowired
    private FileMngService fileMngService;

    public ComJobController() {
    }

    /* 04 기업/직업 정보 */
    @RequestMapping(value = "/sub/comJob/com_info_list.do", method = RequestMethod.GET)
    public String sub_comJob_com_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_info_list";

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request, 8);
        this.getModel(request, model, 8);

        searchVo.setSearchKind("8");

        List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
        for(BbsDetailVo item : itemList) {
            //item.setIs_new(Util.getNewYn(item.getReg_dt()));
        }
        int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
        PageHolder pageholder = this.setPageNumRow(request, totalCount);
        //PageHolder pageholder = this.setPageNumRowEx(request, totalCount, 8);

        model.addAttribute("pageholder", pageholder);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("itemList", itemList);

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/com_info_view.do", method = RequestMethod.GET)
    public String sub_comJob_com_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_info_view";

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

        // 이전/다음 목록 가져오기
        BbsDetailVo next = bbsService.selectNextBbs(bbsDetailVo);
        BbsDetailVo prev = bbsService.selectPrevBbs(bbsDetailVo);

        if (next != null) {
            bbsDetailVo.setNext(next);
        }

        if (prev != null) {
            bbsDetailVo.setPrev(prev);
        }

        model.addAttribute("bbsDetailVo", bbsDetailVo);

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/com_visit_list.do", method = RequestMethod.GET)
    public String sub_comJob_com_visit_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_visit_list";

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request, 10);
        this.getModel(request, model, 10);

        searchVo.setSearchKind("3");

        List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
        for(BbsDetailVo item : itemList) {
            //item.setIs_new(Util.getNewYn(item.getReg_dt()));
        }
        int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
        PageHolder pageholder = this.setPageNumRow(request, totalCount);
        //PageHolder pageholder = this.setPageNumRowEx(request, totalCount, 8);

        model.addAttribute("pageholder", pageholder);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("itemList", itemList);

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/com_visit_view.do", method = RequestMethod.GET)
    public String sub_comJob_com_visit_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_visit_view";

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

        // 이전/다음 목록 가져오기
        BbsDetailVo next = bbsService.selectNextBbs(bbsDetailVo);
        BbsDetailVo prev = bbsService.selectPrevBbs(bbsDetailVo);

        if (next != null) {
            bbsDetailVo.setNext(next);
        }

        if (prev != null) {
            bbsDetailVo.setPrev(prev);
        }

        model.addAttribute("bbsDetailVo", bbsDetailVo);

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/job_info_list.do", method = RequestMethod.GET)
    public String sub_comJob_job_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_info_list";

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request, 10);
        this.getModel(request, model, 10);

        searchVo.setSearchKind("8");

        List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
        for(BbsDetailVo item : itemList) {
            //item.setIs_new(Util.getNewYn(item.getReg_dt()));
        }
        int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
        PageHolder pageholder = this.setPageNumRow(request, totalCount);
        //PageHolder pageholder = this.setPageNumRowEx(request, totalCount, 8);

        model.addAttribute("pageholder", pageholder);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("itemList", itemList);

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/job_info_view.do", method = RequestMethod.GET)
    public String sub_comJob_job_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_info_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/job_curation_list.do", method = RequestMethod.GET)
    public String sub_comJob_job_curation_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_curation_list";

        ContMstVo contMstVo = comjobService.selectContMstByIdx(1);

        model.addAttribute("contMstVo", contMstVo);

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/job_curation_view.do", method = RequestMethod.GET)
    public String sub_comJob_job_curation_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_curation_view";

        return ret_url;
    }
}

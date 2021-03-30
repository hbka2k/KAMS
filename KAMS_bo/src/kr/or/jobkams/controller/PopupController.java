package kr.or.jobkams.controller;

import kr.or.jobkams.common.Constants;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.AdminLoginVo;
import kr.or.jobkams.model.BbsCateVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.service.BbsService;
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
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
@Controller
public class PopupController extends CommonController {

    @Autowired
    private BbsService bbsService;

    public PopupController() {
    }

    @RequestMapping("/popup/bbs/cate_list.do")
    public String cate_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

        String ret_url = "popup/bbs/cate_list";

        HttpSession session = request.getSession();
        AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

        // 파라미터 세팅
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        int bbs_idx = ServletRequestUtils.getIntParameter(request, "bbs_idx", 0);

        if(adminLoginVo == null) {
            model.addAttribute("msg", "alterloc");
            model.addAttribute("locurl", Constants.login_url);
            model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            ret_url =  "common/message";
        } else {

            if("".equals(searchVo.getSearchVal())) {
                searchVo.setSearchVal(String.valueOf(bbs_idx));
                model.addAttribute("searchVal", String.valueOf(bbs_idx));
            }

            List<BbsCateVo> itemList = bbsService.selectBbsCateList(searchVo);
            for(BbsCateVo item : itemList) {
                int bbs_cnt = bbsService.selectBbsCateCount(item);
                item.setBbs_cnt(bbs_cnt);
            }
            int totalCount = bbsService.selectBbsCateListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

            String bbs_name = bbsService.selectBbsMstName(searchVo.getSearchVal());
            model.addAttribute("bbs_name", bbs_name);
        }

        return ret_url;
    }

    @RequestMapping(value = "/popup/bbs/cate_insert.do", method = RequestMethod.POST)
    public String cate_insert(final MultipartHttpServletRequest multiRequest,
                              @ModelAttribute("bbsCateVo") BbsCateVo bbsCateVo,
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
                bbsCateVo.setReg_id(adminLoginVo.getAdmin_id());
                bbsService.insertBbsCateInfo(bbsCateVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/popup/bbs/cate_list.do?bbs_idx=" + bbsCateVo.getBbs_idx());
                model.addAttribute("altmsg", "저장되었습니다.");
            }
        } catch (Exception e) {
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/popup/bbs/cate_update.do", method = RequestMethod.POST)
    public String cate_update(final MultipartHttpServletRequest multiRequest,
                              @ModelAttribute("bbsCateVo") BbsCateVo bbsCateVo,
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
                bbsCateVo.setUp_id(adminLoginVo.getAdmin_id());
                bbsService.updateBbsCateInfo(bbsCateVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/popup/bbs/cate_list.do?bbs_idx=" + bbsCateVo.getBbs_idx());
                model.addAttribute("altmsg", "수정되었습니다.");
            }
        } catch (Exception e) {
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "수정에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/popup/bbs/cate_delete.do", method = RequestMethod.POST)
    public String cate_delete(final MultipartHttpServletRequest multiRequest,
                              @ModelAttribute("bbsCateVo") BbsCateVo bbsCateVo,
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
                bbsService.deleteBbsCateInfo(bbsCateVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/popup/bbs/cate_list.do?bbs_idx=" + bbsCateVo.getBbs_idx());
                model.addAttribute("altmsg", "삭제되었습니다.");
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
}


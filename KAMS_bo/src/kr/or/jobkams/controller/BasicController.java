package kr.or.jobkams.controller;

import kr.or.jobkams.common.Constants;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.*;
import kr.or.jobkams.service.AppService;
import kr.or.jobkams.service.BasicService;
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
public class BasicController extends CommonController {

    @Autowired
    private BasicService basicService;

    @Autowired
    private AppService appService;

    public BasicController() {
    }

    @RequestMapping("/cont/basic/admin_list.do")
    public String cont_basic_admin_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_list";
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

            List<AdminVo> itemList = basicService.selectAdminList(searchVo);
            for(AdminVo item : itemList) {
                String code_nm = appService.selectCodeNm(item.getCode_idx());
                item.setPart_nm(code_nm);
            }
            int totalCount = basicService.selectAdminListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_inscr.do", method = RequestMethod.GET)
    public String cont_basic_admin_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_inscr";
        String menu_url = "cont/basic/admin_list";
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
            // 부서코드
            List<CodeVo> codeList = appService.selectCodeList("PART_CD");
            model.addAttribute("codeList", codeList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_inscr.do", method = RequestMethod.POST)
    public String cont_basic_admin_inproc(final MultipartHttpServletRequest multiRequest,
                                           @ModelAttribute("adminVo") AdminVo adminVo,
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

            /*HttpSession session = multiRequest.getSession();
            AdminLoginVo adminLoginVo = (AdminLoginVo) session.getAttribute(Constants.ADMIN_LOGIN_VO);

            if(adminLoginVo == null) {
                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", Constants.login_url);
                model.addAttribute("altmsg", "로그인 후 사용가능합니다.");
            } else {*/
                //아이디 중복 체크
                int count  = basicService.selectAdminId(adminVo.getAdmin_id());
                if(count != 0)  {
                    model.addAttribute("msg", "alterBack");
                    model.addAttribute("altmsg", "중복된 아이디가 존재합니다.");
                    return ret_url;
                }

                adminVo.setReg_id("admin1234");
                adminVo.setPwd(adminVo.getAdmin_id());

                basicService.insertAdmin(adminVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/basic/admin_list.do");
                model.addAttribute("altmsg", "저장되었습니다.");

            //}
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("msg", "alterBack");
            model.addAttribute("altmsg", "저장에 실패하였습니다.");
        } finally {
            status.setComplete();
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_view.do", method = RequestMethod.GET)
    public String cont_basic_admin_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_view";
        String menu_url = "cont/basic/admin_list";
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
            String admin_id = ServletRequestUtils.getStringParameter(request, "admin_id", "");

            AdminVo adminVo = new AdminVo();
            adminVo.setAdmin_id(admin_id);

            adminVo = basicService.selectAdmin(adminVo);

            String code_nm = appService.selectCodeNm(adminVo.getCode_idx());
            adminVo.setPart_nm(code_nm);

            model.addAttribute("adminVo", adminVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_upscr.do", method = RequestMethod.GET)
    public String cont_basic_admin_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_upscr";
        String menu_url = "cont/basic/admin_list";
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
            String admin_id = ServletRequestUtils.getStringParameter(request, "admin_id", "");

            AdminVo adminVo = new AdminVo();
            adminVo.setAdmin_id(admin_id);

            adminVo = basicService.selectAdmin(adminVo);

            String code_nm = appService.selectCodeNm(adminVo.getCode_idx());
            adminVo.setPart_nm(code_nm);

            model.addAttribute("adminVo", adminVo);

            // 부서코드
            List<CodeVo> codeList = appService.selectCodeList("PART_CD");
            model.addAttribute("codeList", codeList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_upscr.do", method = RequestMethod.POST)
    public String cont_basic_admin_upproc(final MultipartHttpServletRequest multiRequest,
                                              @ModelAttribute("adminVo") AdminVo adminVo,
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
                adminVo.setUp_id(adminLoginVo.getAdmin_id());
                basicService.updateAdmin(adminVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/basic/admin_list.do");
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

    @RequestMapping("/cont/basic/admin_grp_list.do")
    public String cont_basic_admin_grp_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_grp_list";
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

            List<AdminRuleVo> itemList = basicService.selectAdminRuleList(searchVo);
            int totalCount = basicService.selectAdminRuleListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_grp_inscr.do", method = RequestMethod.GET)
    public String cont_basic_admin_grp_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_grp_inscr";
        String menu_url = "cont/basic/admin_grp_list";
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

        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_grp_inscr.do", method = RequestMethod.POST)
    public String cont_basic_admin_grp_inproc(final MultipartHttpServletRequest multiRequest,
                                                 @ModelAttribute("adminRuleVo") AdminRuleVo adminRuleVo,
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
                adminRuleVo.setReg_id(adminLoginVo.getAdmin_id());

                String menu_info = Util.getArrayToStr(adminRuleVo.getMenu_array());
                adminRuleVo.setMenu_info(menu_info);

                basicService.insertAdminRule(adminRuleVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/basic/admin_grp_list.do");
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

    @RequestMapping(value = "/cont/basic/admin_grp_view.do", method = RequestMethod.GET)
    public String cont_basic_admin_grp_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_grp_view";
        String menu_url = "cont/basic/admin_grp_list";
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
            int admin_rule_idx = ServletRequestUtils.getIntParameter(request, "admin_rule_idx", 0);

            AdminRuleVo adminRuleVo = new AdminRuleVo();
            adminRuleVo.setAdmin_rule_idx(admin_rule_idx);

            adminRuleVo = basicService.selectAdminRule(adminRuleVo);

            String menu_info = adminRuleVo.getMenu_info();
            String[] tokens = menu_info.split(",");
            MenuIndexVo menuIndexVo = setMenuIndex(tokens);

            adminRuleVo.setMenu_array(tokens);
            adminRuleVo.setMenuIndexVo(menuIndexVo);

            model.addAttribute("adminRuleVo", adminRuleVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_grp_upscr.do", method = RequestMethod.GET)
    public String cont_basic_admin_grp_upscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/admin_grp_upscr";
        String menu_url = "cont/basic/admin_grp_list";
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
            int admin_rule_idx = ServletRequestUtils.getIntParameter(request, "admin_rule_idx", 0);

            AdminRuleVo adminRuleVo = new AdminRuleVo();
            adminRuleVo.setAdmin_rule_idx(admin_rule_idx);

            adminRuleVo = basicService.selectAdminRule(adminRuleVo);

            String menu_info = adminRuleVo.getMenu_info();
            String[] tokens = menu_info.split(",");
            MenuIndexVo menuIndexVo = setMenuIndex(tokens);

            adminRuleVo.setMenu_array(tokens);
            adminRuleVo.setMenuIndexVo(menuIndexVo);

            model.addAttribute("adminRuleVo", adminRuleVo);
        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/admin_grp_upscr.do", method = RequestMethod.POST)
    public String cont_basic_admin_grp_upproc(final MultipartHttpServletRequest multiRequest,
                                                    @ModelAttribute("adminRuleVo") AdminRuleVo adminRuleVo,
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
                adminRuleVo.setUp_id(adminLoginVo.getAdmin_id());

                String menu_info = Util.getArrayToStr(adminRuleVo.getMenu_array());
                adminRuleVo.setMenu_info(menu_info);

                basicService.updateAdminRule(adminRuleVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/basic/admin_grp_list.do");
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

    @RequestMapping(value = "/cont/basic/menu_mng.do", method = RequestMethod.GET)
    public String cont_basic_menu_mng(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/menu_mng";
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

    @RequestMapping(value = "/cont/basic/comm_code_list.do", method = RequestMethod.GET)
    public String cont_basic_comm_code_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/comm_code_list";
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

    @RequestMapping(value = "/cont/basic/comm_code_inscr.do", method = RequestMethod.GET)
    public String cont_basic_comm_code_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/comm_code_inscr";
        String menu_url = "cont/basic/comm_code_list";
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

    @RequestMapping(value = "/cont/basic/genre_code_list.do", method = RequestMethod.GET)
    public String cont_basic_genre_code_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/genre_code_list";
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

    @RequestMapping(value = "/cont/basic/genre_code_inscr.do", method = RequestMethod.GET)
    public String cont_basic_genre_code_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/genre_code_inscr";
        String menu_url = "cont/basic/genre_code_list";
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

    @RequestMapping(value = "/cont/basic/sector_code_list.do", method = RequestMethod.GET)
    public String cont_basic_sector_code_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/sector_code_list";
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

    @RequestMapping(value = "/cont/basic/sector_code_inscr.do", method = RequestMethod.GET)
    public String cont_basic_sector_code_inscr(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/sector_code_inscr";
        String menu_url = "cont/basic/sector_code_list";
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

    @RequestMapping("/cont/basic/ip_mng.do")
    public String cont_basic_ip_mng(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "cont/basic/ip_mng";
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

            List<IpConVo> itemList = basicService.selectIpConList(searchVo);
            int totalCount = basicService.selectIpConListTotal(searchVo);
            PageHolder pageholder = this.setPageNumRow(request, totalCount);

            model.addAttribute("pageholder", pageholder);
            model.addAttribute("totalCount", totalCount);
            model.addAttribute("itemList", itemList);

        }

        return ret_url;
    }

    @RequestMapping(value = "/cont/basic/ip_inscr.do", method = RequestMethod.POST)
    public String cont_system_ip_inproc(final MultipartHttpServletRequest multiRequest,
                                        @ModelAttribute("ipConVo") IpConVo ipConVo,
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
                ipConVo.setReg_id(adminLoginVo.getAdmin_id());
                basicService.insertIpConInfo(ipConVo);

                model.addAttribute("msg", "alterloc");
                model.addAttribute("locurl", "/artmore_adm/cont/basic/ip_mng.do");
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

    private MenuIndexVo setMenuIndex(String[] arrMenu) {
        MenuIndexVo menuIndexVo = new MenuIndexVo();

        for(String token : arrMenu) {
            if ("1".equals(token)) { menuIndexVo.setMenu_1("Y"); }
            else if ("2".equals(token)) { menuIndexVo.setMenu_2("Y"); }
            else if ("3".equals(token)) { menuIndexVo.setMenu_3("Y"); }
            else if ("4".equals(token)) { menuIndexVo.setMenu_4("Y"); }
            else if ("5".equals(token)) { menuIndexVo.setMenu_5("Y"); }
            else if ("6".equals(token)) { menuIndexVo.setMenu_6("Y"); }
            else if ("7".equals(token)) { menuIndexVo.setMenu_7("Y"); }
            else if ("8".equals(token)) { menuIndexVo.setMenu_8("Y"); }
            else if ("9".equals(token)) { menuIndexVo.setMenu_9("Y"); }
            else if ("10".equals(token)) { menuIndexVo.setMenu_10("Y"); }
            else if ("11".equals(token)) { menuIndexVo.setMenu_11("Y"); }
            else if ("12".equals(token)) { menuIndexVo.setMenu_12("Y"); }
            else if ("13".equals(token)) { menuIndexVo.setMenu_13("Y"); }
            else if ("14".equals(token)) { menuIndexVo.setMenu_14("Y"); }
            else if ("15".equals(token)) { menuIndexVo.setMenu_15("Y"); }
            else if ("16".equals(token)) { menuIndexVo.setMenu_16("Y"); }
            else if ("17".equals(token)) { menuIndexVo.setMenu_17("Y"); }
            else if ("18".equals(token)) { menuIndexVo.setMenu_18("Y"); }
            else if ("19".equals(token)) { menuIndexVo.setMenu_19("Y"); }
            else if ("20".equals(token)) { menuIndexVo.setMenu_20("Y"); }
            else if ("21".equals(token)) { menuIndexVo.setMenu_21("Y"); }
            else if ("22".equals(token)) { menuIndexVo.setMenu_22("Y"); }
            else if ("23".equals(token)) { menuIndexVo.setMenu_23("Y"); }
            else if ("24".equals(token)) { menuIndexVo.setMenu_24("Y"); }
            else if ("25".equals(token)) { menuIndexVo.setMenu_25("Y"); }
            else if ("26".equals(token)) { menuIndexVo.setMenu_26("Y"); }
            else if ("27".equals(token)) { menuIndexVo.setMenu_27("Y"); }
            else if ("28".equals(token)) { menuIndexVo.setMenu_28("Y"); }
            else if ("29".equals(token)) { menuIndexVo.setMenu_29("Y"); }
            else if ("30".equals(token)) { menuIndexVo.setMenu_30("Y"); }
            else if ("31".equals(token)) { menuIndexVo.setMenu_31("Y"); }
            else if ("32".equals(token)) { menuIndexVo.setMenu_32("Y"); }
            else if ("33".equals(token)) { menuIndexVo.setMenu_33("Y"); }
            else if ("34".equals(token)) { menuIndexVo.setMenu_34("Y"); }
            else if ("35".equals(token)) { menuIndexVo.setMenu_35("Y"); }
            else if ("36".equals(token)) { menuIndexVo.setMenu_36("Y"); }
            else if ("37".equals(token)) { menuIndexVo.setMenu_37("Y"); }
            else if ("38".equals(token)) { menuIndexVo.setMenu_38("Y"); }
            else if ("39".equals(token)) { menuIndexVo.setMenu_39("Y"); }
            else if ("40".equals(token)) { menuIndexVo.setMenu_40("Y"); }
            else if ("41".equals(token)) { menuIndexVo.setMenu_41("Y"); }
            else if ("42".equals(token)) { menuIndexVo.setMenu_42("Y"); }
            else if ("43".equals(token)) { menuIndexVo.setMenu_43("Y"); }
            else if ("44".equals(token)) { menuIndexVo.setMenu_44("Y"); }
            else if ("45".equals(token)) { menuIndexVo.setMenu_45("Y"); }
            else if ("46".equals(token)) { menuIndexVo.setMenu_46("Y"); }
            else if ("47".equals(token)) { menuIndexVo.setMenu_47("Y"); }
            else if ("48".equals(token)) { menuIndexVo.setMenu_48("Y"); }
            else if ("49".equals(token)) { menuIndexVo.setMenu_49("Y"); }
            else if ("50".equals(token)) { menuIndexVo.setMenu_50("Y"); }
            else if ("51".equals(token)) { menuIndexVo.setMenu_51("Y"); }
            else if ("52".equals(token)) { menuIndexVo.setMenu_52("Y"); }
            else if ("53".equals(token)) { menuIndexVo.setMenu_53("Y"); }
            else if ("54".equals(token)) { menuIndexVo.setMenu_54("Y"); }
            else if ("55".equals(token)) { menuIndexVo.setMenu_55("Y"); }
            else if ("56".equals(token)) { menuIndexVo.setMenu_56("Y"); }
            else if ("57".equals(token)) { menuIndexVo.setMenu_57("Y"); }
            else if ("58".equals(token)) { menuIndexVo.setMenu_58("Y"); }
            else if ("59".equals(token)) { menuIndexVo.setMenu_59("Y"); }
            else if ("60".equals(token)) { menuIndexVo.setMenu_60("Y"); }
            else if ("61".equals(token)) { menuIndexVo.setMenu_61("Y"); }
            else if ("62".equals(token)) { menuIndexVo.setMenu_62("Y"); }
            else if ("63".equals(token)) { menuIndexVo.setMenu_63("Y"); }
            else if ("64".equals(token)) { menuIndexVo.setMenu_64("Y"); }
            else if ("65".equals(token)) { menuIndexVo.setMenu_65("Y"); }
            else if ("66".equals(token)) { menuIndexVo.setMenu_66("Y"); }
            else if ("67".equals(token)) { menuIndexVo.setMenu_67("Y"); }
            else if ("68".equals(token)) { menuIndexVo.setMenu_68("Y"); }
            else if ("69".equals(token)) { menuIndexVo.setMenu_69("Y"); }
            else if ("70".equals(token)) { menuIndexVo.setMenu_70("Y"); }
            else if ("71".equals(token)) { menuIndexVo.setMenu_71("Y"); }
            else if ("72".equals(token)) { menuIndexVo.setMenu_72("Y"); }
            else if ("73".equals(token)) { menuIndexVo.setMenu_73("Y"); }
            else if ("74".equals(token)) { menuIndexVo.setMenu_74("Y"); }
            else if ("75".equals(token)) { menuIndexVo.setMenu_75("Y"); }
            else if ("76".equals(token)) { menuIndexVo.setMenu_76("Y"); }
            else if ("77".equals(token)) { menuIndexVo.setMenu_77("Y"); }
            else if ("78".equals(token)) { menuIndexVo.setMenu_78("Y"); }
            else if ("79".equals(token)) { menuIndexVo.setMenu_79("Y"); }
            else if ("80".equals(token)) { menuIndexVo.setMenu_80("Y"); }
            else if ("81".equals(token)) { menuIndexVo.setMenu_81("Y"); }
            else if ("82".equals(token)) { menuIndexVo.setMenu_82("Y"); }
            else if ("83".equals(token)) { menuIndexVo.setMenu_83("Y"); }
            else if ("84".equals(token)) { menuIndexVo.setMenu_84("Y"); }
            else if ("85".equals(token)) { menuIndexVo.setMenu_85("Y"); }
            else if ("86".equals(token)) { menuIndexVo.setMenu_86("Y"); }
            else if ("87".equals(token)) { menuIndexVo.setMenu_87("Y"); }
            else if ("88".equals(token)) { menuIndexVo.setMenu_88("Y"); }
            else if ("89".equals(token)) { menuIndexVo.setMenu_89("Y"); }
            else if ("90".equals(token)) { menuIndexVo.setMenu_90("Y"); }
            else if ("91".equals(token)) { menuIndexVo.setMenu_91("Y"); }
            else if ("92".equals(token)) { menuIndexVo.setMenu_92("Y"); }
            else if ("93".equals(token)) { menuIndexVo.setMenu_93("Y"); }
            else if ("94".equals(token)) { menuIndexVo.setMenu_94("Y"); }
            else if ("95".equals(token)) { menuIndexVo.setMenu_95("Y"); }
            else if ("96".equals(token)) { menuIndexVo.setMenu_96("Y"); }
            else if ("97".equals(token)) { menuIndexVo.setMenu_97("Y"); }
            else if ("98".equals(token)) { menuIndexVo.setMenu_98("Y"); }
            else if ("99".equals(token)) { menuIndexVo.setMenu_99("Y"); }
            else if ("100".equals(token)) { menuIndexVo.setMenu_100("Y"); }
            else if ("101".equals(token)) { menuIndexVo.setMenu_101("Y"); }
            else if ("102".equals(token)) { menuIndexVo.setMenu_102("Y"); }
            else if ("103".equals(token)) { menuIndexVo.setMenu_103("Y"); }
            else if ("104".equals(token)) { menuIndexVo.setMenu_104("Y"); }
            else if ("105".equals(token)) { menuIndexVo.setMenu_105("Y"); }
            else if ("106".equals(token)) { menuIndexVo.setMenu_106("Y"); }
        }

        return menuIndexVo;
    }
}

package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MypageController extends CommonController {
    public MypageController() {
    }

    /* 마이페이지 */
    @RequestMapping(value = "/sub/mypage/main.do", method = RequestMethod.GET)
    public String sub_mypage_main(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/main";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/application_list.do", method = RequestMethod.GET)
    public String sub_mypage_application_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/application_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/calendar.do", method = RequestMethod.GET)
    public String sub_mypage_calendar(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/calendar";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/favorite_list.do", method = RequestMethod.GET)
    public String sub_mypage_favorite_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/favorite_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/info.do", method = RequestMethod.GET)
    public String sub_mypage_info(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/info";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/info_name.do", method = RequestMethod.GET)
    public String sub_mypage_info_name(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/info_name";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/info_pass.do", method = RequestMethod.GET)
    public String sub_mypage_info_pass(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/info_pass";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/info_pass_check.do", method = RequestMethod.GET)
    public String sub_mypage_info_pass_check(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/info_pass_check";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/info_pass_edit.do", method = RequestMethod.GET)
    public String sub_mypage_info_pass_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/info_pass_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/msg_list.do", method = RequestMethod.GET)
    public String sub_mypage_msg_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/msg_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/one_to_one_edit.do", method = RequestMethod.GET)
    public String sub_mypage_one_to_one_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/one_to_one_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/one_to_one_list.do", method = RequestMethod.GET)
    public String sub_mypage_one_to_one_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/one_to_one_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/one_to_one_view.do", method = RequestMethod.GET)
    public String sub_mypage_one_to_one_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/one_to_one_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/resume_form.do", method = RequestMethod.GET)
    public String sub_mypage_resume_form(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/resume_form";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/resume_form_edit.do", method = RequestMethod.GET)
    public String sub_mypage_resume_form_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/resume_form_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/resume_profile.do", method = RequestMethod.GET)
    public String sub_mypage_resume_profile(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/resume_profile";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/resume_setting.do", method = RequestMethod.GET)
    public String sub_mypage_resume_setting(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/resume_setting";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/scrap_list.do", method = RequestMethod.GET)
    public String sub_mypage_scrap_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/scrap_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/view_list.do", method = RequestMethod.GET)
    public String sub_mypage_view_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/view_list";

        return ret_url;
    }

    /* 마이페이지 - 기업 */
    @RequestMapping(value = "/sub/mypage/com_main.do", method = RequestMethod.GET)
    public String sub_mypage_com_main(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_main";

        return ret_url;
    }
    
    @RequestMapping(value = "/sub/mypage/com_applicant_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_applicant_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_applicant_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_contact_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_contact_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_contact_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info_pass.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info_pass(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info_pass";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info_pass_check.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info_pass_check(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info_pass_check";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info_pass_check2.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info_pass_check2(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info_pass_check2";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info_pass_check3.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info_pass_check3(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info_pass_check3";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_info_pass_edit.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_info_pass_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_info_pass_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_intro.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_intro(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_intro";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_recruit.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_recruit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_recruit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_recruit_cer.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_recruit_cer(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_recruit_cer";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_info_recruit_edit.do", method = RequestMethod.GET)
    public String sub_mypage_com_info_recruit_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_info_recruit_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_one_to_one_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_one_to_one_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_one_to_one_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_one_to_one_view.do", method = RequestMethod.GET)
    public String sub_mypage_com_one_to_one_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_one_to_one_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_recruit_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_recruit_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_recruit_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_recruit_edit.do", method = RequestMethod.GET)
    public String sub_mypage_com_recruit_edit(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_recruit_edit";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_recruit_add.do", method = RequestMethod.GET)
    public String sub_mypage_com_recruit_add(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_recruit_add";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_scrap_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_scrap_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_scrap_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/mypage/com_today_list.do", method = RequestMethod.GET)
    public String sub_mypage_com_today_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/mypage/com_today_list";

        return ret_url;
    }
}

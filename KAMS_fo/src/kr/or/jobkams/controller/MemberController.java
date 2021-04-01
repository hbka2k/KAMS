package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class MemberController extends CommonController {
    public MemberController() {
    }

    /* 회원가입 */
    @RequestMapping(value = "/member/type.do", method = RequestMethod.GET)
    public String sub_member_type(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/type";

        return ret_url;
    }

    @RequestMapping(value = "/member/agree.do", method = RequestMethod.GET)
    public String sub_member_agree(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/agree";

        return ret_url;
    }

    @RequestMapping(value = "/member/cer.do", method = RequestMethod.GET)
    public String sub_member_cer(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/cer";

        return ret_url;
    }

    @RequestMapping(value = "/member/cer_company.do", method = RequestMethod.GET)
    public String sub_member_cer_company(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/cer_company";

        return ret_url;
    }

    @RequestMapping(value = "/member/cer_double.do", method = RequestMethod.GET)
    public String sub_member_cer_double(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/cer_double";

        return ret_url;
    }

    @RequestMapping(value = "/member/cer_parent.do", method = RequestMethod.GET)
    public String sub_member_cer_parent(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/cer_parent";

        return ret_url;
    }

    @RequestMapping(value = "/member/form.do", method = RequestMethod.GET)
    public String sub_member_form(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/form";

        return ret_url;
    }

    @RequestMapping(value = "/member/form_company.do", method = RequestMethod.GET)
    public String sub_member_form_company(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/form_company";

        return ret_url;
    }

    @RequestMapping(value = "/member/result.do", method = RequestMethod.GET)
    public String sub_member_result(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/member/result";

        return ret_url;
    }
}

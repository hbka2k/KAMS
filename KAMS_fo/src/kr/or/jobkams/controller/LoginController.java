package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Program Name : kr.or.jobkams.controller
 * Author : shlee
 * Date : 2021-03-13
 * Description :
 * History :
 * Version :
 */
@Controller
public class LoginController extends CommonController {

    public LoginController() {
    }

//    @RequestMapping(value = "/login/login", method = RequestMethod.GET)
//    public String admin_login(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
//        String ret_url = "login/login";
//
//        return ret_url;
//    }

    @RequestMapping(value = "/login/login", method = RequestMethod.GET)
    public String sub_login_login(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/login/login";

        return ret_url;
    }

    @RequestMapping(value = "/login/login_company", method = RequestMethod.GET)
    public String sub_login_login_company(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/login/login_company";

        return ret_url;
    }

    @RequestMapping(value = "/login/find.do", method = RequestMethod.GET)
    public String sub_login_find(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/login/find";

        return ret_url;
    }

    @RequestMapping(value = "/login/find_result_id.do", method = RequestMethod.GET)
    public String sub_login_find_result_id(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/login/find_result_id";

        return ret_url;
    }

    @RequestMapping(value = "/login/find_result_pass.do", method = RequestMethod.GET)
    public String sub_login_find_result_pass(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/login/find_result_pass";

        return ret_url;
    }
}

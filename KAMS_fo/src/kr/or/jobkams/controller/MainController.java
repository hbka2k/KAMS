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
 * Date : 2021-03-19
 * Description :
 * History :
 * Version :
 */
@Controller
public class MainController extends CommonController {

    public MainController() {
    }

    @RequestMapping(value = "/main/main.do", method = RequestMethod.GET)
    public String admin_login(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "main/main";

        return ret_url;
    }
}

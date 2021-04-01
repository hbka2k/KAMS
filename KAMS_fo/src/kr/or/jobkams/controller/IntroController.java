package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class IntroController extends CommonController {
    public IntroController() {
    }

    /* 01 모아안내 */
    @RequestMapping(value = "/sub/intro/aboutArtmore.do", method = RequestMethod.GET)
    public String sub_intro_aboutArtmore(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/aboutArtmore";

        return ret_url;
    }

    @RequestMapping(value = "/sub/intro/matching_list.do", method = RequestMethod.GET)
    public String sub_intro_matching_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/matching_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/intro/matching_view.do", method = RequestMethod.GET)
    public String sub_intro_matching_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/matching_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/intro/useInfo.do", method = RequestMethod.GET)
    public String sub_intro_useInfo(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/useInfo";

        return ret_url;
    }
}

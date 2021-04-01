package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class CommunityController extends CommonController {
    public CommunityController() {
    }

    /* 06 커뮤니티 */
    @RequestMapping(value = "/sub/community/talk_list.do", method = RequestMethod.GET)
    public String sub_community_talk_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/talk_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/talk_view.do", method = RequestMethod.GET)
    public String sub_community_talk_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/talk_view";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/talk_write.do", method = RequestMethod.GET)
    public String sub_community_talk_write(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/talk_write";

        return ret_url;
    }

    @RequestMapping(value = "/sub/community/faq.do", method = RequestMethod.GET)
    public String sub_community_faq(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/faq";

        return ret_url;
    }

    @RequestMapping(value = "/sub/community/oneToOne_list.do", method = RequestMethod.GET)
    public String sub_community_oneToOne_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/oneToOne_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/oneToOne_view.do", method = RequestMethod.GET)
    public String sub_community_oneToOne_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/ooneToOne_viewt";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/oneToOne_write.do", method = RequestMethod.GET)
    public String sub_community_oneToOne_write(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/oneToOne_write";

        return ret_url;
    }

    @RequestMapping(value = "/sub/community/notice_list.do", method = RequestMethod.GET)
    public String sub_community_notice_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/notice_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/notice_view.do", method = RequestMethod.GET)
    public String sub_community_notice_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/notice_view";

        return ret_url;
    }
}

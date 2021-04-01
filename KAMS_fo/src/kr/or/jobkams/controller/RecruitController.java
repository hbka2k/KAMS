package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class RecruitController extends CommonController {
    public RecruitController() {
    }

    /* 02 채용정보 */
    @RequestMapping(value = "/sub/recruit/search_list.do", method = RequestMethod.GET)
    public String sub_recruit_search_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/search_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/search_view.do", method = RequestMethod.GET)
    public String sub_recruit_search_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/search_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/genre_list.do", method = RequestMethod.GET)
    public String sub_recruit_genre_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/genre_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/genre_view.do", method = RequestMethod.GET)
    public String sub_recruit_genre_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/genre_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/type_list.do", method = RequestMethod.GET)
    public String sub_recruit_type_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/type_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/type_view.do", method = RequestMethod.GET)
    public String sub_recruit_type_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/type_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/area_list.do", method = RequestMethod.GET)
    public String sub_recruit_area_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/area_list";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/area_view.do", method = RequestMethod.GET)
    public String sub_recruit_area_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/area_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/recruit/calendar.do", method = RequestMethod.GET)
    public String sub_recruit_calendar(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/recruit/calendar";

        return ret_url;
    }
}

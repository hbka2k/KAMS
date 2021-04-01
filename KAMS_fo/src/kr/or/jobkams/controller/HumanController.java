package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HumanController extends CommonController {
    public HumanController() {
    }

    /* 03 인재정보 */
    @RequestMapping(value = "/sub/human/search_list.do", method = RequestMethod.GET)
    public String sub_human_search_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/search_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/human/search_view.do", method = RequestMethod.GET)
    public String sub_human_search_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/search_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/human/genre_list.do", method = RequestMethod.GET)
    public String sub_human_genre_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/genre_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/human/genre_view.do", method = RequestMethod.GET)
    public String sub_human_genre_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/genre_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/human/type_list.do", method = RequestMethod.GET)
    public String sub_human_type_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/type_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/human/type_view.do", method = RequestMethod.GET)
    public String sub_human_type_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/type_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/human/area_list.do", method = RequestMethod.GET)
    public String sub_human_area_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/area_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/human/area_view.do", method = RequestMethod.GET)
    public String sub_human_area_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/human/area_view";

        return ret_url;
    }
}

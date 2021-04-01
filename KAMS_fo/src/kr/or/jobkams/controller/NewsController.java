package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class NewsController extends CommonController {
    public NewsController() {
    }

    /* 05 뉴스/자료 */
    @RequestMapping(value = "/sub/news/news_list.do", method = RequestMethod.GET)
    public String sub_news_news_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/news_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/news/news_view.do", method = RequestMethod.GET)
    public String sub_news_news_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/news_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/employ_list.do", method = RequestMethod.GET)
    public String sub_news_employ_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/employ_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/news/employ_view.do", method = RequestMethod.GET)
    public String sub_news_employ_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/employ_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/data_room_list.do", method = RequestMethod.GET)
    public String sub_news_data_room_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/data_room_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/news/data_room_view.do", method = RequestMethod.GET)
    public String sub_news_data_room_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/data_room_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_cal.do", method = RequestMethod.GET)
    public String sub_news_help_cal(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_cal";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_spell.do", method = RequestMethod.GET)
    public String sub_news_help_spell(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_spell";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_job_work.do", method = RequestMethod.GET)
    public String sub_news_help_job_work(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_job_work";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_grade.do", method = RequestMethod.GET)
    public String sub_news_help_grade(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_grade";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_lang.do", method = RequestMethod.GET)
    public String sub_news_help_lang(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_lang";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/help_word.do", method = RequestMethod.GET)
    public String sub_news_help_word(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/help_word";

        return ret_url;
    }

}

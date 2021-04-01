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

    @RequestMapping(value = "/sub/news/dataRoom_list.do", method = RequestMethod.GET)
    public String sub_news_dataRoom_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/dataRoom_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/news/dataRoom_view.do", method = RequestMethod.GET)
    public String sub_news_dataRoom_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/dataRoom_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpCal.do", method = RequestMethod.GET)
    public String sub_news_helpCal(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpCal";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpSpell.do", method = RequestMethod.GET)
    public String sub_news_helpSpell(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpSpell";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpJobWork.do", method = RequestMethod.GET)
    public String sub_news_helpJobWork(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpJobWork";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpGrade.do", method = RequestMethod.GET)
    public String sub_news_helpGrade(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpGrade";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpLang.do", method = RequestMethod.GET)
    public String sub_news_helpLang(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpLang";

        return ret_url;
    }

    @RequestMapping(value = "/sub/news/helpWord.do", method = RequestMethod.GET)
    public String sub_news_helpWord(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/helpWord";

        return ret_url;
    }

}

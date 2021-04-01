package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class TotalController extends CommonController {
    public TotalController() {
    }

    /* 통합검색 */
    @RequestMapping(value = "/sub/total/total.do", method = RequestMethod.GET)
    public String sub_total_total(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/total";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/job.do", method = RequestMethod.GET)
    public String sub_total_job(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/job";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/matching.do", method = RequestMethod.GET)
    public String sub_total_matching(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/matching";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/news.do", method = RequestMethod.GET)
    public String sub_total_news(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/news";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/data.do", method = RequestMethod.GET)
    public String sub_total_data(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/data";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/faq.do", method = RequestMethod.GET)
    public String sub_total_faq(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/faq";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/notice.do", method = RequestMethod.GET)
    public String sub_total_notice(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/notice";

        return ret_url;
    }

    @RequestMapping(value = "/sub/total/attatch.do", method = RequestMethod.GET)
    public String sub_total_attatch(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/total/attatch";

        return ret_url;
    }
}

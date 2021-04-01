package kr.or.jobkams.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class ComJobController extends CommonController {
    public ComJobController() {
    }

    /* 04 기업/직업 정보 */
    @RequestMapping(value = "/sub/comJob/com_info_list.do", method = RequestMethod.GET)
    public String sub_comJob_com_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_info_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/com_info_view.do", method = RequestMethod.GET)
    public String sub_comJob_com_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_info_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/com_visit_list.do", method = RequestMethod.GET)
    public String sub_comJob_com_visit_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_visit_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/com_visit_view.do", method = RequestMethod.GET)
    public String sub_comJob_com_visit_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/com_visit_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/job_info_list.do", method = RequestMethod.GET)
    public String sub_comJob_job_info_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_info_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/job_info_view.do", method = RequestMethod.GET)
    public String sub_comJob_job_info_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_info_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/job_curation_list.do", method = RequestMethod.GET)
    public String sub_comJob_job_curation_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_curation_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/job_curation_view.do", method = RequestMethod.GET)
    public String sub_comJob_job_curation_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/job_curation_view";

        return ret_url;
    }
}

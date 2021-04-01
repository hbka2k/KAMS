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
    @RequestMapping(value = "/sub/comJob/comInfo_list.do", method = RequestMethod.GET)
    public String sub_comJob_comInfo_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/comInfo_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/comInfo_view.do", method = RequestMethod.GET)
    public String sub_comJob_comInfo_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/comInfo_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/comVisit_list.do", method = RequestMethod.GET)
    public String sub_comJob_comVisit_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/comVisit_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/comVisit_view.do", method = RequestMethod.GET)
    public String sub_comJob_comVisit_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/comVisit_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/jobInfo_list.do", method = RequestMethod.GET)
    public String sub_comJob_jobInfo_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/jobInfo_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/jobInfo_view.do", method = RequestMethod.GET)
    public String sub_comJob_jobInfo_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/jobInfo_view";

        return ret_url;
    }

    @RequestMapping(value = "/sub/comJob/jobCuration_list.do", method = RequestMethod.GET)
    public String sub_comJob_jobCuration_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/jobCuration_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/comJob/jobCuration_view.do", method = RequestMethod.GET)
    public String sub_comJob_jobCuration_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/comJob/jobCuration_view";

        return ret_url;
    }
}

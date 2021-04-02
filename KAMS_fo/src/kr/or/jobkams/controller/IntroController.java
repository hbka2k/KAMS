package kr.or.jobkams.controller;

import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.service.IntroSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class IntroController extends CommonController {

    @Autowired
    private IntroSevice introSevice;

    public IntroController() {
    }

    /* 01 모아안내 */
    @RequestMapping(value = "/sub/intro/about_artmore.do", method = RequestMethod.GET)
    public String sub_intro_about_artmore(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/about_artmore";

        ContMstVo contMstVo = introSevice.selectContMstByIdx(1);

        model.addAttribute("contMstVo", contMstVo);

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

    @RequestMapping(value = "/sub/intro/use_info.do", method = RequestMethod.GET)
    public String sub_intro_use_info(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/use_info";

        ContMstVo private_terms = introSevice.selectContMstByIdx(2);
        ContMstVo corp_terms = introSevice.selectContMstByIdx(3);

        model.addAttribute("private_terms", private_terms);
        model.addAttribute("corp_terms", corp_terms);

        return ret_url;
    }
}

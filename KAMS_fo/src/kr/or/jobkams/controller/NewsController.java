package kr.or.jobkams.controller;

import kr.or.jobkams.common.EgovProperties;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.FileVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.service.BbsService;
import kr.or.jobkams.service.FileMngService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class NewsController extends CommonController {

    @Autowired
    private BbsService bbsService;

    @Autowired
    private FileMngService fileMngService;
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

        // 파라미터 세팅
        //SearchVo searchVo = this.getSearch(request, 8);
        //this.getModel(request, model, 8);
        SearchVo searchVo = this.getSearch(request, 10);
        this.getModel(request, model, 10);

        searchVo.setSearchKind("4");

        List<BbsDetailVo> itemList = bbsService.selectBbsDetailList(searchVo);
        for(BbsDetailVo item : itemList) {
            //item.setIs_new(Util.getNewYn(item.getReg_dt()));
        }
        int totalCount = bbsService.selectBbsDetailListTotal(searchVo);
        PageHolder pageholder = this.setPageNumRow(request, totalCount);
        //PageHolder pageholder = this.setPageNumRowEx(request, totalCount, 8);

        model.addAttribute("pageholder", pageholder);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("itemList", itemList);
        return ret_url;
    }
    @RequestMapping(value = "/sub/news/data_room_view.do", method = RequestMethod.GET)
    public String sub_news_data_room_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/news/data_room_view";

        int bbs_detail_idx = ServletRequestUtils.getIntParameter(request, "bbs_detail_idx", 0);

        BbsDetailVo bbsDetailVo = new BbsDetailVo();
        bbsDetailVo.setBbs_detail_idx(bbs_detail_idx);

        bbsDetailVo = bbsService.selectBbsDetailInfo(bbsDetailVo);

        bbsService.updateBbsDetailViewCnt(bbsDetailVo);

        // 첨부파일 처리
        String atchFileId = bbsDetailVo.getAtch_file_id();
        String min_img_path = EgovProperties.getProperty("bd.file.url.path");
        FileVo fvo = new FileVo();
        fvo.setAtch_file_id(atchFileId);
        List<FileVo> fileVoList = fileMngService.selectFileInfs(fvo);
        for(FileVo fileVo : fileVoList){
            fileVo.setFile_src(min_img_path + "/" + fileVo.getFile_nm());
        }
        bbsDetailVo.setFileList(fileVoList);

        // 이전/다음 목록 가져오기
        BbsDetailVo next = bbsService.selectNextBbs(bbsDetailVo);
        BbsDetailVo prev = bbsService.selectPrevBbs(bbsDetailVo);

        if (next != null) {
            bbsDetailVo.setNext(next);
        }

        if (prev != null) {
            bbsDetailVo.setPrev(prev);
        }

        model.addAttribute("bbsDetailVo", bbsDetailVo);

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

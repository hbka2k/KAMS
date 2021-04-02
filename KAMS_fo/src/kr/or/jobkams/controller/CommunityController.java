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
public class CommunityController extends CommonController {

    @Autowired
    private BbsService bbsService;

    @Autowired
    private FileMngService fileMngService;

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

    @RequestMapping(value = "/sub/community/one_to_one_list.do", method = RequestMethod.GET)
    public String sub_community_one_to_one_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/one_to_one_list";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/one_to_one_view.do", method = RequestMethod.GET)
    public String sub_community_one_to_one_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/one_to_one_view";

        return ret_url;
    }
    @RequestMapping(value = "/sub/community/one_to_one_write.do", method = RequestMethod.GET)
    public String sub_community_one_to_one_write(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/one_to_one_write";

        return ret_url;
    }

    @RequestMapping("/sub/community/notice_list.do")
    public String sub_community_notice_list(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/notice_list";

        // 파라미터 세팅
        //SearchVo searchVo = this.getSearch(request, 8);
        //this.getModel(request, model, 8);
        SearchVo searchVo = this.getSearch(request);
        this.getModel(request, model);

        searchVo.setSearchKind("6");

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
    @RequestMapping(value = "/sub/community/notice_view.do", method = RequestMethod.GET)
    public String sub_community_notice_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/community/notice_view";

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
}

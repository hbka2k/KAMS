package kr.or.jobkams.controller;

import kr.or.jobkams.common.EgovProperties;
import kr.or.jobkams.common.PageHolder;
import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.model.FileVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.service.BbsService;
import kr.or.jobkams.service.FileMngService;
import kr.or.jobkams.service.IntroSevice;
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
public class IntroController extends CommonController {

    @Autowired
    private IntroSevice introSevice;

    @Autowired
    private BbsService bbsService;

    @Autowired
    private FileMngService fileMngService;

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

        // 파라미터 세팅
        //SearchVo searchVo = this.getSearch(request, 8);
        //this.getModel(request, model, 8);
        SearchVo searchVo = this.getSearch(request, 8);
        this.getModel(request, model, 8);

        searchVo.setSearchKind("1");

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

    @RequestMapping(value = "/sub/intro/matching_view.do", method = RequestMethod.GET)
    public String sub_intro_matching_view(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        String ret_url = "sub/intro/matching_view";

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

package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.SearchVo;

import java.util.List;

public interface BbsRepository {
    List<BbsDetailVo> selectBbsDetailList(SearchVo searchVo) throws Exception;

    int selectBbsDetailListTotal(SearchVo searchVo) throws Exception;

    BbsDetailVo selectBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception;

    void updateBbsDetailViewCnt(BbsDetailVo bbsDetailVo) throws Exception;

    BbsDetailVo selectNextBbs(BbsDetailVo bbsDetailVo) throws Exception;

    BbsDetailVo selectPrevBbs(BbsDetailVo bbsDetailVo) throws Exception;
}

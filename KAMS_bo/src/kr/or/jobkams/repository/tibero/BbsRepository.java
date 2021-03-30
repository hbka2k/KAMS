package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.BbsCateVo;
import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.BbsMstVo;
import kr.or.jobkams.model.SearchVo;

import java.util.List;

/**
 * Program Name : kr.or.jobkams.repository.tibero
 * Author : shlee
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
public interface BbsRepository {
    List<BbsMstVo> selectBbsMstList(SearchVo searchVo) throws Exception;

    int selectBbsMstListTotal(SearchVo searchVo) throws Exception;

    List<BbsCateVo> selectBbsCateList(SearchVo searchVo) throws Exception;

    int selectBbsCateCount(BbsCateVo bbsCateVo) throws Exception;

    int selectBbsCateListTotal(SearchVo searchVo) throws Exception;

    String selectBbsMstName(String searchVal) throws Exception;

    void insertBbsCateInfo(BbsCateVo bbsCateVo) throws Exception;

    void updateBbsCateInfo(BbsCateVo bbsCateVo) throws Exception;

    void deleteBbsCateInfo(BbsCateVo bbsCateVo) throws Exception;

    List<BbsCateVo> selectBbsCateListEx(int bbs_idx) throws Exception;

    void insertBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception;

    List<BbsDetailVo> selectBbsDetailList(SearchVo searchVo) throws Exception;

    String selectBbsCateName(long cate_idx) throws Exception;

    int selectBbsDetailListTotal(SearchVo searchVo) throws Exception;

    void deleteBbsDetail(int bbs_detail_idx) throws Exception;

    BbsDetailVo selectBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception;

    void updateBbsDetailViewCnt(BbsDetailVo bbsDetailVo) throws Exception;

    void updateBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception;

    void deleteBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception;

    BbsMstVo selectBbsMst(BbsMstVo bbsMstVo) throws Exception;

    void updateBbsMst(BbsMstVo bbsMstVo) throws Exception;
}

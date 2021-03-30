package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.BbsCateVo;
import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.BbsMstVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.repository.tibero.BbsRepository;
import kr.or.jobkams.service.BbsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Program Name : kr.or.jobkams.service.impl
 * Author : shlee
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
@Service
public class BbsServiceImpl implements BbsService {

    @Autowired
    private BbsRepository bbsRepository;

    @Override
    public List<BbsMstVo> selectBbsMstList(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsMstList(searchVo);
    }

    @Override
    public int selectBbsMstListTotal(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsMstListTotal(searchVo);
    }

    @Override
    public List<BbsCateVo> selectBbsCateList(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsCateList(searchVo);
    }

    @Override
    public int selectBbsCateCount(BbsCateVo bbsCateVo) throws Exception {
        return bbsRepository.selectBbsCateCount(bbsCateVo);
    }

    @Override
    public int selectBbsCateListTotal(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsCateListTotal(searchVo);
    }

    @Override
    public String selectBbsMstName(String searchVal) throws Exception {
        return bbsRepository.selectBbsMstName(searchVal);
    }

    @Override
    public void insertBbsCateInfo(BbsCateVo bbsCateVo) throws Exception {
        bbsRepository.insertBbsCateInfo(bbsCateVo);
    }

    @Override
    public void updateBbsCateInfo(BbsCateVo bbsCateVo) throws Exception {
        bbsRepository.updateBbsCateInfo(bbsCateVo);
    }

    @Override
    public void deleteBbsCateInfo(BbsCateVo bbsCateVo) throws Exception {
        bbsRepository.deleteBbsCateInfo(bbsCateVo);
    }

    @Override
    public List<BbsCateVo> selectBbsCateListEx(int bbs_idx) throws Exception {
        return bbsRepository.selectBbsCateListEx(bbs_idx);
    }

    @Override
    public void insertBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception {
        bbsRepository.insertBbsDetailInfo(bbsDetailVo);
    }

    @Override
    public List<BbsDetailVo> selectBbsDetailList(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsDetailList(searchVo);
    }

    @Override
    public String selectBbsCateName(long cate_idx) throws Exception {
        return bbsRepository.selectBbsCateName(cate_idx);
    }

    @Override
    public int selectBbsDetailListTotal(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsDetailListTotal(searchVo);
    }

    @Override
    public void deleteBbsDetail(int bbs_detail_idx) throws Exception {
        bbsRepository.deleteBbsDetail(bbs_detail_idx);
    }

    @Override
    public BbsDetailVo selectBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception {
        return bbsRepository.selectBbsDetailInfo(bbsDetailVo);
    }

    @Override
    public void updateBbsDetailViewCnt(BbsDetailVo bbsDetailVo) throws Exception {
        bbsRepository.updateBbsDetailViewCnt(bbsDetailVo);
    }

    @Override
    public void updateBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception {
        bbsRepository.updateBbsDetailInfo(bbsDetailVo);
    }

    @Override
    public void deleteBbsDetailInfo(BbsDetailVo bbsDetailVo) throws Exception {
        bbsRepository.deleteBbsDetailInfo(bbsDetailVo);
    }

    @Override
    public BbsMstVo selectBbsMst(BbsMstVo bbsMstVo) throws Exception {
        return bbsRepository.selectBbsMst(bbsMstVo);
    }

    @Override
    public void updateBbsMst(BbsMstVo bbsMstVo) throws Exception {
        bbsRepository.updateBbsMst(bbsMstVo);
    }
}

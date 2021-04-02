package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.BbsDetailVo;
import kr.or.jobkams.model.SearchVo;
import kr.or.jobkams.repository.tibero.BbsRepository;
import kr.or.jobkams.service.BbsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BbsServiceImpl implements BbsService {

    @Autowired
    private BbsRepository bbsRepository;

    @Override
    public List<BbsDetailVo> selectBbsDetailList(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsDetailList(searchVo);
    }

    @Override
    public int selectBbsDetailListTotal(SearchVo searchVo) throws Exception {
        return bbsRepository.selectBbsDetailListTotal(searchVo);
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
    public BbsDetailVo selectNextBbs(BbsDetailVo bbsDetailVo) throws Exception {
        return bbsRepository.selectNextBbs(bbsDetailVo);
    }

    @Override
    public BbsDetailVo selectPrevBbs(BbsDetailVo bbsDetailVo) throws Exception {
        return bbsRepository.selectPrevBbs(bbsDetailVo);
    }
}

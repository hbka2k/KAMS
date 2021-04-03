package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.repository.tibero.ComJobRepository;
import kr.or.jobkams.service.ComJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComJobServiceImpl implements ComJobService {

    @Autowired
    private ComJobRepository comJobRepositoryRepository;

    @Override
    public ContMstVo selectContMstByIdx(int cont_idx) throws Exception {
        return comJobRepositoryRepository.selectContMstByIdx(cont_idx);
    }

}

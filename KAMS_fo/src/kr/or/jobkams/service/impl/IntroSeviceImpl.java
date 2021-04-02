package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.repository.tibero.IntroRepository;
import kr.or.jobkams.service.IntroSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IntroSeviceImpl implements IntroSevice {

    @Autowired
    private IntroRepository introRepository;

    @Override
    public ContMstVo selectContMstByIdx(int cont_idx) throws Exception {
        return introRepository.selectContMstByIdx(cont_idx);
    }
}

package kr.or.jobkams.service.impl;

import kr.or.jobkams.repository.tibero.CommonRepository;
import kr.or.jobkams.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Program Name : kr.go.songpa.ssem.service.impl
 * Author : shlee
 * Date : 2020-09-16
 * Description :
 * History :
 * Version :
 */
@Service
public class CommonServiceImpl implements CommonService {
    @Autowired
    private CommonRepository commonRepository;

    @Override
    public String getNextStringId() throws Exception {
        String nextStringId = commonRepository.getNextStringId();
        commonRepository.setNextStringId();
        return nextStringId;
    }
}

package kr.or.jobkams.service;

import kr.or.jobkams.model.ContMstVo;

public interface IntroSevice {
    ContMstVo selectContMstByIdx(int cont_idx) throws Exception;
}

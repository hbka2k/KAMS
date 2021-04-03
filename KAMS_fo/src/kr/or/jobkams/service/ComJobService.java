package kr.or.jobkams.service;

import kr.or.jobkams.model.ContMstVo;

public interface ComJobService {
    ContMstVo selectContMstByIdx(int cont_idx) throws Exception;
}

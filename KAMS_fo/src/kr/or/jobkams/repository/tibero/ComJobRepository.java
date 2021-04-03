package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.ContMstVo;

public interface ComJobRepository {
    ContMstVo selectContMstByIdx(int cont_idx) throws Exception;
}

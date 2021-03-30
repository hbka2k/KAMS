package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.ContMstVo;

/**
 * Program Name : kr.or.jobkams.repository.tibero
 * Author : shlee
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
public interface ContentRepository {
    ContMstVo selectContent(int cont_idx) throws Exception;

    void updateContent(ContMstVo contMstVo) throws Exception;
}

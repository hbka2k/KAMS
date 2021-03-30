package kr.or.jobkams.service;

import kr.or.jobkams.model.ContMstVo;

/**
 * Program Name : kr.or.jobkams.service
 * Author : shlee
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
public interface ContentService {
    ContMstVo selectContent(int cont_idx) throws Exception;

    void updateContent(ContMstVo contMstVo) throws Exception;
}

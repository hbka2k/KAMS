package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.ContMstVo;
import kr.or.jobkams.repository.tibero.ContentRepository;
import kr.or.jobkams.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Program Name : kr.or.jobkams.service.impl
 * Author : shlee
 * Date : 2021-03-28
 * Description :
 * History :
 * Version :
 */
@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private ContentRepository contentRepository;

    @Override
    public ContMstVo selectContent(int cont_idx) throws Exception {
        return contentRepository.selectContent(cont_idx);
    }

    @Override
    public void updateContent(ContMstVo contMstVo) throws Exception {
        contentRepository.updateContent(contMstVo);
    }
}

package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.MenuVo;
import kr.or.jobkams.repository.tibero.AppRepository;
import kr.or.jobkams.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Program Name : kr.go.songpa.ssem.service.impl
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
@Service
public class AppServiceImpl implements AppService {

    @Autowired
    private AppRepository appRepository;

    @Override
    public List<MenuVo> seletTopMenuList(MenuVo menu) throws Exception {
        return appRepository.seletTopMenuList(menu);
    }

    @Override
    public MenuVo selectMenu(String url) throws Exception {
        return appRepository.selectMenu(url);
    }

    @Override
    public MenuVo selectMenuByIdx(int p_menu_idx) throws Exception {
        return appRepository.selectMenuByIdx(p_menu_idx);
    }

    @Override
    public List<MenuVo> selectSubMenuList(int menu_idx) throws Exception {
        return appRepository.selectSubMenuList(menu_idx);
    }

    @Override
    public String selectMenuUrl(int idx) throws Exception {
        return appRepository.selectMenuUrl(idx);
    }

    /*@Override
    public List<CodeVo> selectCodeList(String gubun) throws Exception {
        return appRepoistory.selectCodeList(gubun);
    }

    @Override
    public String selectCodeNm(int code_idx) throws Exception {
        return appRepoistory.selectCodeNm(code_idx);
    }

    @Override
    public List<GroupInfoVo> selectGroupList() throws Exception {
        return appRepoistory.selectGroupList();
    }

    @Override
    public String selectGroupName(int group_idx) throws Exception {
        return appRepoistory.selectGroupName(group_idx);
    }

    @Override
    public List<GroupInfoVo> getMasterGroupList() throws Exception {
        return appRepoistory.getMasterGroupList();
    }

    @Override
    public List<GroupInfoVo> getSubGroupList(int p_idx) throws Exception {
        return appRepoistory.getSubGroupList(p_idx);
    }

    @Override
    public List<GroupInfoVo> getSubGroupListEx(GroupInfoVo groupInfoVo) throws Exception {
        return appRepoistory.getSubGroupListEx(groupInfoVo);
    }*/
}

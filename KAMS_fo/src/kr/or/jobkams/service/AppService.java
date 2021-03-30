package kr.or.jobkams.service;

import kr.or.jobkams.model.MenuVo;

import java.util.List;

/**
 * Program Name : kr.go.songpa.ssem.service
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
public interface AppService {
    List<MenuVo> seletTopMenuList(MenuVo menu) throws Exception;

    MenuVo selectMenu(String url) throws Exception;

    MenuVo selectMenuByIdx(int p_menu_idx) throws Exception;

    List<MenuVo> selectSubMenuList(int menu_idx) throws Exception;

    String selectMenuUrl(int idx) throws Exception;

    /*List<CodeVo> selectCodeList(String gubun) throws Exception;

    String selectCodeNm(int code_idx) throws Exception;

    List<GroupInfoVo> selectGroupList() throws Exception;

    String selectGroupName(int group_idx) throws Exception;

    List<GroupInfoVo> getMasterGroupList() throws Exception;

    List<GroupInfoVo> getSubGroupList(int p_idx) throws Exception;

    List<GroupInfoVo> getSubGroupListEx(GroupInfoVo groupInfoVo) throws Exception;*/
}

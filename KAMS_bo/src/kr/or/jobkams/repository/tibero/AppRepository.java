package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.CodeVo;
import kr.or.jobkams.model.MenuVo;

import java.util.List;

/**
 * Program Name : kr.go.songpa.ssem.repository.tibero
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
public interface AppRepository {
    List<MenuVo> seletTopMenuList(MenuVo menu) throws Exception;

    MenuVo selectMenu(String url) throws Exception;

    MenuVo selectMenuByIdx(int p_menu_idx) throws Exception;

    List<MenuVo> selectSubMenuList(int menu_idx) throws Exception;

    String selectMenuUrl(int idx) throws Exception;

    List<CodeVo> selectCodeList(String part_cd) throws Exception;

    String selectCodeNm(int code_idx) throws Exception;
}

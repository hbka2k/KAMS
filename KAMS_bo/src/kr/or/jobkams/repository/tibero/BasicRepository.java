package kr.or.jobkams.repository.tibero;

import kr.or.jobkams.model.*;

import java.util.List;

/**
 * Program Name : kr.go.songpa.ssem.repository.tibero
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
public interface BasicRepository {
    void insertAdminRule(AdminRuleVo adminRuleVo) throws Exception;

    List<AdminRuleVo> selectAdminRuleListEx(String kind_cd) throws Exception;

    int selectAdminId(String admin_id) throws Exception;

    void insertAdmin(AdminVo adminVo) throws Exception;

    AdminLoginVo selectAdminInfo(AdminLoginVo adminLoginVo) throws Exception;

    void updateLoginSuccessInfo(AdminLoginVo adminLoginVo) throws Exception;

    void insertIpConInfo(IpConVo ipConVo) throws Exception;

    List<IpConVo> selectIpConList(SearchVo searchVo) throws Exception;

    int selectIpConListTotal(SearchVo searchVo) throws Exception;

    void deleteIpCon(int ip_con_idx) throws Exception;

    int selectIpCount(String remoteIP) throws Exception;

    List<AdminVo> selectAdminList(SearchVo searchVo) throws Exception;

    int selectAdminListTotal(SearchVo searchVo) throws Exception;

    AdminVo selectAdmin(AdminVo adminVo) throws Exception;

    void updateAdmin(AdminVo adminVo) throws Exception;

    List<AdminRuleVo> selectAdminRuleList(SearchVo searchVo) throws Exception;

    int selectAdminRuleListTotal(SearchVo searchVo) throws Exception;

    void deleteAdminRule(int admin_rule_idx) throws Exception;

    AdminRuleVo selectAdminRule(AdminRuleVo adminRuleVo) throws Exception;

    void updateAdminRule(AdminRuleVo adminRuleVo) throws Exception;

    String selectAdminName(String admin_id) throws Exception;

    int selectAdminCurPwd(AdminVo adminVo) throws Exception;

    void updateAdminPwd(AdminVo adminVo) throws Exception;
}

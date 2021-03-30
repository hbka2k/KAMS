package kr.or.jobkams.service.impl;

import kr.or.jobkams.model.*;
import kr.or.jobkams.repository.tibero.BasicRepository;
import kr.or.jobkams.service.BasicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Program Name : kr.or.jobkams.service.impl
 * Author : shlee
 * Date : 2021-03-25
 * Description :
 * History :
 * Version :
 */
@Service
public class BasicServiceImpl implements BasicService {

    @Autowired
    private BasicRepository basicRepository;

    @Override
    public void insertAdminRule(AdminRuleVo adminRuleVo) throws Exception {
        basicRepository.insertAdminRule(adminRuleVo);
    }

    @Override
    public List<AdminRuleVo> selectAdminRuleListEx(String kind_cd) throws Exception {
        return basicRepository.selectAdminRuleListEx(kind_cd);
    }

    @Override
    public int selectAdminId(String admin_id) throws Exception {
        return basicRepository.selectAdminId(admin_id);
    }

    @Override
    public void insertAdmin(AdminVo adminVo) throws Exception {
        basicRepository.insertAdmin(adminVo);
    }

    @Override
    public AdminLoginVo selectAdminInfo(AdminLoginVo adminLoginVo) throws Exception {
        return basicRepository.selectAdminInfo(adminLoginVo);
    }

    @Override
    public void updateLoginSuccessInfo(AdminLoginVo adminLoginVo) throws Exception {
        basicRepository.updateLoginSuccessInfo(adminLoginVo);
    }

    @Override
    public void insertIpConInfo(IpConVo ipConVo) throws Exception {
        basicRepository.insertIpConInfo(ipConVo);
    }

    @Override
    public List<IpConVo> selectIpConList(SearchVo searchVo) throws Exception {
        return basicRepository.selectIpConList(searchVo);
    }

    @Override
    public int selectIpConListTotal(SearchVo searchVo) throws Exception {
        return basicRepository.selectIpConListTotal(searchVo);
    }

    @Override
    public void deleteIpCon(int ip_con_idx) throws Exception {
        basicRepository.deleteIpCon(ip_con_idx);
    }

    @Override
    public int selectIpCount(String remoteIP) throws Exception {
        return basicRepository.selectIpCount(remoteIP);
    }

    @Override
    public List<AdminVo> selectAdminList(SearchVo searchVo) throws Exception {
        return basicRepository.selectAdminList(searchVo);
    }

    @Override
    public int selectAdminListTotal(SearchVo searchVo) throws Exception {
        return basicRepository.selectAdminListTotal(searchVo);
    }

    @Override
    public AdminVo selectAdmin(AdminVo adminVo) throws Exception {
        return basicRepository.selectAdmin(adminVo);
    }

    @Override
    public void updateAdmin(AdminVo adminVo) throws Exception {
        basicRepository.updateAdmin(adminVo);
    }

    @Override
    public List<AdminRuleVo> selectAdminRuleList(SearchVo searchVo) throws Exception {
        return basicRepository.selectAdminRuleList(searchVo);
    }

    @Override
    public int selectAdminRuleListTotal(SearchVo searchVo) throws Exception {
        return basicRepository.selectAdminRuleListTotal(searchVo);
    }

    @Override
    public void deleteAdminRule(int admin_rule_idx) throws Exception {
        basicRepository.deleteAdminRule(admin_rule_idx);
    }

    @Override
    public AdminRuleVo selectAdminRule(AdminRuleVo adminRuleVo) throws Exception {
        return basicRepository.selectAdminRule(adminRuleVo);
    }

    @Override
    public void updateAdminRule(AdminRuleVo adminRuleVo) throws Exception {
        basicRepository.updateAdminRule(adminRuleVo);
    }

    @Override
    public String selectAdminName(String admin_id) throws Exception {
        return basicRepository.selectAdminName(admin_id);
    }

    @Override
    public int selectAdminCurPwd(AdminVo adminVo) throws Exception {
        return basicRepository.selectAdminCurPwd(adminVo);
    }

    @Override
    public void updateAdminPwd(AdminVo adminVo) throws Exception {
        basicRepository.updateAdminPwd(adminVo);
    }
}

package kr.or.jobkams.model;

import java.io.Serializable;

/**
 * Program Name : kr.go.songpa.ssem.model
 * Author : shlee
 * Date : 2020-09-13
 * Description :
 * History :
 * Version :
 */
public class AdminLoginVo implements Serializable {

    private static final long serialVersionUID = -6743058582686303386L;

    private String admin_id;
    private long admin_rule_idx;
    private String name;
    private String email;
    private String use_yn;
    private String pwd;
    private String pwd_c;
    private String last_login_dt;
    private String last_login_ip;
    private long login_cnt;
    private long login_fail_cnt;
    private String pwd_mod_yn;
    private String reg_id;
    private String reg_dt;
    private String up_id;
    private String up_dt;

    private String menu_info;
    private String pwd_enc;
    private String pwd_cur;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    public long getAdmin_rule_idx() {
        return admin_rule_idx;
    }

    public void setAdmin_rule_idx(long admin_rule_idx) {
        this.admin_rule_idx = admin_rule_idx;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUse_yn() {
        return use_yn;
    }

    public void setUse_yn(String use_yn) {
        this.use_yn = use_yn;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getPwd_c() {
        return pwd_c;
    }

    public void setPwd_c(String pwd_c) {
        this.pwd_c = pwd_c;
    }

    public String getLast_login_dt() {
        return last_login_dt;
    }

    public void setLast_login_dt(String last_login_dt) {
        this.last_login_dt = last_login_dt;
    }

    public String getLast_login_ip() {
        return last_login_ip;
    }

    public void setLast_login_ip(String last_login_ip) {
        this.last_login_ip = last_login_ip;
    }

    public long getLogin_cnt() {
        return login_cnt;
    }

    public void setLogin_cnt(long login_cnt) {
        this.login_cnt = login_cnt;
    }

    public long getLogin_fail_cnt() {
        return login_fail_cnt;
    }

    public void setLogin_fail_cnt(long login_fail_cnt) {
        this.login_fail_cnt = login_fail_cnt;
    }

    public String getPwd_mod_yn() {
        return pwd_mod_yn;
    }

    public void setPwd_mod_yn(String pwd_mod_yn) {
        this.pwd_mod_yn = pwd_mod_yn;
    }

    public String getReg_id() {
        return reg_id;
    }

    public void setReg_id(String reg_id) {
        this.reg_id = reg_id;
    }

    public String getReg_dt() {
        return reg_dt;
    }

    public void setReg_dt(String reg_dt) {
        this.reg_dt = reg_dt;
    }

    public String getUp_id() {
        return up_id;
    }

    public void setUp_id(String up_id) {
        this.up_id = up_id;
    }

    public String getUp_dt() {
        return up_dt;
    }

    public void setUp_dt(String up_dt) {
        this.up_dt = up_dt;
    }

    public String getMenu_info() {
        return menu_info;
    }

    public void setMenu_info(String menu_info) {
        this.menu_info = menu_info;
    }

    public String getPwd_enc() {
        return pwd_enc;
    }

    public void setPwd_enc(String pwd_enc) {
        this.pwd_enc = pwd_enc;
    }

    public String getPwd_cur() {
        return pwd_cur;
    }

    public void setPwd_cur(String pwd_cur) {
        this.pwd_cur = pwd_cur;
    }
}

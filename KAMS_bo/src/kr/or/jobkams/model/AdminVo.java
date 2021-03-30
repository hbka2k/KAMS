package kr.or.jobkams.model;
import java.io.Serializable;


public class AdminVo implements Serializable {

  private static final long serialVersionUID = -7438848396862448668L;
  private String admin_id;
  private int admin_rule_idx;
  private String name;
  private String pwd;
  private String email;
  private String use_yn;
  private String last_login_dt;
  private String last_login_ip;
  private int login_fail_cnt;
  private int login_cnt;
  private String pwd_mod_yn;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;
  private int code_idx;

  private String pwd_enc;
  private String kind_cd;
  private String grp_nm;
  private String part_nm;
  private String pwd_c;
  private String pwd_cur;
  private String pwd_cur_encoding;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public String getAdmin_id() {
    return admin_id;
  }

  public void setAdmin_id(String admin_id) {
    this.admin_id = admin_id;
  }


  public int getAdmin_rule_idx() {
    return admin_rule_idx;
  }

  public void setAdmin_rule_idx(int admin_rule_idx) {
    this.admin_rule_idx = admin_rule_idx;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
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


  public int getLogin_fail_cnt() {
    return login_fail_cnt;
  }

  public void setLogin_fail_cnt(int login_fail_cnt) {
    this.login_fail_cnt = login_fail_cnt;
  }


  public int getLogin_cnt() {
    return login_cnt;
  }

  public void setLogin_cnt(int login_cnt) {
    this.login_cnt = login_cnt;
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


  public int getCode_idx() {
    return code_idx;
  }

  public void setCode_idx(int code_idx) {
    this.code_idx = code_idx;
  }

  public String getPwd_enc() {
    return pwd_enc;
  }

  public void setPwd_enc(String pwd_enc) {
    this.pwd_enc = pwd_enc;
  }

  public String getKind_cd() {
    return kind_cd;
  }

  public void setKind_cd(String kind_cd) {
    this.kind_cd = kind_cd;
  }

  public String getGrp_nm() {
    return grp_nm;
  }

  public void setGrp_nm(String grp_nm) {
    this.grp_nm = grp_nm;
  }

  public String getPart_nm() {
    return part_nm;
  }

  public void setPart_nm(String part_nm) {
    this.part_nm = part_nm;
  }

  public String getPwd_c() {
    return pwd_c;
  }

  public void setPwd_c(String pwd_c) {
    this.pwd_c = pwd_c;
  }

  public String getPwd_cur() {
    return pwd_cur;
  }

  public void setPwd_cur(String pwd_cur) {
    this.pwd_cur = pwd_cur;
  }

  public String getPwd_cur_encoding() {
    return pwd_cur_encoding;
  }

  public void setPwd_cur_encoding(String pwd_cur_encoding) {
    this.pwd_cur_encoding = pwd_cur_encoding;
  }
}

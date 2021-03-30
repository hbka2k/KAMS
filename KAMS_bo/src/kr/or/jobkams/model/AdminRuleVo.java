package kr.or.jobkams.model;
import java.io.Serializable;


public class AdminRuleVo implements Serializable {

  private static final long serialVersionUID = 5666727402056841558L;
  private int admin_rule_idx;
  private String kind_cd;
  private String grp_nm;
  private String grp_exp;
  private String menu_info;
  private String use_yn;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

  private String[] menu_array;
  private MenuIndexVo menuIndexVo;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public int getAdmin_rule_idx() {
    return admin_rule_idx;
  }

  public void setAdmin_rule_idx(int admin_rule_idx) {
    this.admin_rule_idx = admin_rule_idx;
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

  public String getGrp_exp() {
    return grp_exp;
  }

  public void setGrp_exp(String grp_exp) {
    this.grp_exp = grp_exp;
  }

  public String getMenu_info() {
    return menu_info;
  }

  public void setMenu_info(String menu_info) {
    this.menu_info = menu_info;
  }

  public String getUse_yn() {
    return use_yn;
  }

  public void setUse_yn(String use_yn) {
    this.use_yn = use_yn;
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

  public String[] getMenu_array() {
    return menu_array;
  }

  public void setMenu_array(String[] menu_array) {
    this.menu_array = menu_array;
  }

  public MenuIndexVo getMenuIndexVo() {
    return menuIndexVo;
  }

  public void setMenuIndexVo(MenuIndexVo menuIndexVo) {
    this.menuIndexVo = menuIndexVo;
  }
}

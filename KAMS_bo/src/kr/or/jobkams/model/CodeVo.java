package kr.or.jobkams.model;
import java.io.Serializable;


public class CodeVo implements Serializable {

  private static final long serialVersionUID = 5626652529905857329L;
  private long code_idx;
  private long p_lv1_cd_idx;
  private long p_lv2_cd_idx;
  private long p_lv3_cd_idx;
  private long cd_lvl;
  private String cd_nm;
  private String cd_val;
  private long ord;
  private String use_yn;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public long getCode_idx() {
    return code_idx;
  }

  public void setCode_idx(long code_idx) {
    this.code_idx = code_idx;
  }


  public long getP_lv1_cd_idx() {
    return p_lv1_cd_idx;
  }

  public void setP_lv1_cd_idx(long p_lv1_cd_idx) {
    this.p_lv1_cd_idx = p_lv1_cd_idx;
  }


  public long getP_lv2_cd_idx() {
    return p_lv2_cd_idx;
  }

  public void setP_lv2_cd_idx(long p_lv2_cd_idx) {
    this.p_lv2_cd_idx = p_lv2_cd_idx;
  }


  public long getP_lv3_cd_idx() {
    return p_lv3_cd_idx;
  }

  public void setP_lv3_cd_idx(long p_lv3_cd_idx) {
    this.p_lv3_cd_idx = p_lv3_cd_idx;
  }


  public long getCd_lvl() {
    return cd_lvl;
  }

  public void setCd_lvl(long cd_lvl) {
    this.cd_lvl = cd_lvl;
  }


  public String getCd_nm() {
    return cd_nm;
  }

  public void setCd_nm(String cd_nm) {
    this.cd_nm = cd_nm;
  }


  public String getCd_val() {
    return cd_val;
  }

  public void setCd_val(String cd_val) {
    this.cd_val = cd_val;
  }


  public long getOrd() {
    return ord;
  }

  public void setOrd(long ord) {
    this.ord = ord;
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

}

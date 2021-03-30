package kr.or.jobkams.model;
import java.io.Serializable;


public class BbsCateVo implements Serializable {

  private static final long serialVersionUID = -6888540732739693791L;
  private long cate_idx;
  private long bbs_idx;
  private String name;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

  private int bbs_cnt;
  private String bbs_name;
  private String name_u;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public long getCate_idx() {
    return cate_idx;
  }

  public void setCate_idx(long cate_idx) {
    this.cate_idx = cate_idx;
  }


  public long getBbs_idx() {
    return bbs_idx;
  }

  public void setBbs_idx(long bbs_idx) {
    this.bbs_idx = bbs_idx;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
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

  public int getBbs_cnt() {
    return bbs_cnt;
  }

  public void setBbs_cnt(int bbs_cnt) {
    this.bbs_cnt = bbs_cnt;
  }

  public String getBbs_name() {
    return bbs_name;
  }

  public void setBbs_name(String bbs_name) {
    this.bbs_name = bbs_name;
  }

  public String getName_u() {
    return name_u;
  }

  public void setName_u(String name_u) {
    this.name_u = name_u;
  }
}

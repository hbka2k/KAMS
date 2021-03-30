package kr.or.jobkams.model;
import java.io.Serializable;


public class IpConVo implements Serializable {

  private static final long serialVersionUID = 257874925330903327L;
  private int ip_con_idx;
  private String ip;
  private int cnt;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public int getIp_con_idx() {
    return ip_con_idx;
  }

  public void setIp_con_idx(int ip_con_idx) {
    this.ip_con_idx = ip_con_idx;
  }


  public String getIp() {
    return ip;
  }

  public void setIp(String ip) {
    this.ip = ip;
  }


  public int getCnt() {
    return cnt;
  }

  public void setCnt(int cnt) {
    this.cnt = cnt;
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

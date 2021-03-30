package kr.or.jobkams.model;
import java.io.Serializable;


public class BbsMstVo implements Serializable {

  private static final long serialVersionUID = -418875360092705453L;
  private long bbs_idx;
  private String name;
  private String home_path;
  private String gbn_cd;
  private String use_yn;
  private String cate_yn;
  private long new_day;
  private long list_size;

  public static long getSerialVersionUID() {
    return serialVersionUID;
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


  public String getHome_path() {
    return home_path;
  }

  public void setHome_path(String home_path) {
    this.home_path = home_path;
  }


  public String getGbn_cd() {
    return gbn_cd;
  }

  public void setGbn_cd(String gbn_cd) {
    this.gbn_cd = gbn_cd;
  }

  public String getUse_yn() {
    return use_yn;
  }

  public void setUse_yn(String use_yn) {
    this.use_yn = use_yn;
  }

  public String getCate_yn() {
    return cate_yn;
  }

  public void setCate_yn(String cate_yn) {
    this.cate_yn = cate_yn;
  }

  public long getNew_day() {
    return new_day;
  }

  public void setNew_day(long new_day) {
    this.new_day = new_day;
  }

  public long getList_size() {
    return list_size;
  }

  public void setList_size(long list_size) {
    this.list_size = list_size;
  }
}

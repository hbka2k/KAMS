package kr.or.jobkams.model;
import java.io.Serializable;
import java.util.List;


public class BannerVo implements Serializable {

  private static final long serialVersionUID = -2532590640557479373L;
  private long banner_idx;
  private String gbn_cd;
  private String name;
  private String title;
  private String use_yn;
  private String start_dt;
  private String end_dt;
  private long ord;
  private String atch_file_id;
  private String alt_txt;
  private String link_url;
  private String link_tgt;
  private long cnt;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

  private List<FileVo> fileList;
  private List<OrdVo> ordList;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public long getBanner_idx() {
    return banner_idx;
  }

  public void setBanner_idx(long banner_idx) {
    this.banner_idx = banner_idx;
  }


  public String getGbn_cd() {
    return gbn_cd;
  }

  public void setGbn_cd(String gbn_cd) {
    this.gbn_cd = gbn_cd;
  }


  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }


  public String getUse_yn() {
    return use_yn;
  }

  public void setUse_yn(String use_yn) {
    this.use_yn = use_yn;
  }


  public String getStart_dt() {
    return start_dt;
  }

  public void setStart_dt(String start_dt) {
    this.start_dt = start_dt;
  }


  public String getEnd_dt() {
    return end_dt;
  }

  public void setEnd_dt(String end_dt) {
    this.end_dt = end_dt;
  }


  public long getOrd() {
    return ord;
  }

  public void setOrd(long ord) {
    this.ord = ord;
  }


  public String getAtch_file_id() {
    return atch_file_id;
  }

  public void setAtch_file_id(String atch_file_id) {
    this.atch_file_id = atch_file_id;
  }


  public String getAlt_txt() {
    return alt_txt;
  }

  public void setAlt_txt(String alt_txt) {
    this.alt_txt = alt_txt;
  }


  public String getLink_url() {
    return link_url;
  }

  public void setLink_url(String link_url) {
    this.link_url = link_url;
  }


  public String getLink_tgt() {
    return link_tgt;
  }

  public void setLink_tgt(String link_tgt) {
    this.link_tgt = link_tgt;
  }


  public long getCnt() {
    return cnt;
  }

  public void setCnt(long cnt) {
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

  public List<FileVo> getFileList() {
    return fileList;
  }

  public void setFileList(List<FileVo> fileList) {
    this.fileList = fileList;
  }

  public List<OrdVo> getOrdList() {
    return ordList;
  }

  public void setOrdList(List<OrdVo> ordList) {
    this.ordList = ordList;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }
}

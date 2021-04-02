package kr.or.jobkams.model;
import java.io.Serializable;
import java.util.List;


public class BbsDetailVo implements Serializable {

  private static final long serialVersionUID = 248682680402164942L;
  private long bbs_detail_idx;
  private long bbs_idx;
  private long cate_idx;
  private String top_yn;
  private String use_yn;
  private String title;
  private String cont;
  private String atch_file_id;
  private long cnt;
  private String thumb_file_id;
  private String alt_txt;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;

  private String reg_nm;
  private String up_nm;
  private String cate_nm;
  private String is_new;
  private List<FileVo> fileList;
  private List<FileVo> thumbList;
  private String group_nm;
  private BbsDetailVo prev;
  private BbsDetailVo next;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public long getBbs_detail_idx() {
    return bbs_detail_idx;
  }

  public void setBbs_detail_idx(long bbs_detail_idx) {
    this.bbs_detail_idx = bbs_detail_idx;
  }


  public long getBbs_idx() {
    return bbs_idx;
  }

  public void setBbs_idx(long bbs_idx) {
    this.bbs_idx = bbs_idx;
  }


  public long getCate_idx() {
    return cate_idx;
  }

  public void setCate_idx(long cate_idx) {
    this.cate_idx = cate_idx;
  }


  public String getTop_yn() {
    return top_yn;
  }

  public void setTop_yn(String top_yn) {
    this.top_yn = top_yn;
  }


  public String getUse_yn() {
    return use_yn;
  }

  public void setUse_yn(String use_yn) {
    this.use_yn = use_yn;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getCont() {
    return cont;
  }

  public void setCont(String cont) {
    this.cont = cont;
  }


  public String getAtch_file_id() {
    return atch_file_id;
  }

  public void setAtch_file_id(String atch_file_id) {
    this.atch_file_id = atch_file_id;
  }


  public long getCnt() {
    return cnt;
  }

  public void setCnt(long cnt) {
    this.cnt = cnt;
  }


  public String getThumb_file_id() {
    return thumb_file_id;
  }

  public void setThumb_file_id(String thumb_file_id) {
    this.thumb_file_id = thumb_file_id;
  }


  public String getAlt_txt() {
    return alt_txt;
  }

  public void setAlt_txt(String alt_txt) {
    this.alt_txt = alt_txt;
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

  public String getReg_nm() {
    return reg_nm;
  }

  public void setReg_nm(String reg_nm) {
    this.reg_nm = reg_nm;
  }

  public String getUp_nm() {
    return up_nm;
  }

  public void setUp_nm(String up_nm) {
    this.up_nm = up_nm;
  }

  public String getCate_nm() {
    return cate_nm;
  }

  public void setCate_nm(String cate_nm) {
    this.cate_nm = cate_nm;
  }

  public String getIs_new() {
    return is_new;
  }

  public void setIs_new(String is_new) {
    this.is_new = is_new;
  }

  public List<FileVo> getFileList() {
    return fileList;
  }

  public void setFileList(List<FileVo> fileList) {
    this.fileList = fileList;
  }

  public List<FileVo> getThumbList() {
    return thumbList;
  }

  public void setThumbList(List<FileVo> thumbList) {
    this.thumbList = thumbList;
  }

  public String getGroup_nm() {
    return group_nm;
  }

  public void setGroup_nm(String group_nm) {
    this.group_nm = group_nm;
  }

  public BbsDetailVo getPrev() {
    return prev;
  }

  public void setPrev(BbsDetailVo prev) {
    this.prev = prev;
  }

  public BbsDetailVo getNext() {
    return next;
  }

  public void setNext(BbsDetailVo next) {
    this.next = next;
  }
}

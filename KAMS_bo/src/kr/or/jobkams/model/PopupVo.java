package kr.or.jobkams.model;
import java.io.Serializable;
import java.util.List;


public class PopupVo implements Serializable {

  private static final long serialVersionUID = 6295894444951948204L;
  private long popup_idx;
  private String gbn_cd;
  private String name;
  private String start_dt;
  private String end_dt;
  private String all_yn;
  private long width;
  private long height;
  private long left;
  private long top;
  private String use_yn;
  private String cont;
  private String link_url;
  private String link_tgt;
  private String reg_id;
  private String reg_dt;
  private String up_id;
  private String up_dt;
  private int ord;

  private List<OrdVo> ordList;

  public static long getSerialVersionUID() {
    return serialVersionUID;
  }

  public long getPopup_idx() {
    return popup_idx;
  }

  public void setPopup_idx(long popup_idx) {
    this.popup_idx = popup_idx;
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


  public String getAll_yn() {
    return all_yn;
  }

  public void setAll_yn(String all_yn) {
    this.all_yn = all_yn;
  }


  public long getWidth() {
    return width;
  }

  public void setWidth(long width) {
    this.width = width;
  }


  public long getHeight() {
    return height;
  }

  public void setHeight(long height) {
    this.height = height;
  }


  public long getLeft() {
    return left;
  }

  public void setLeft(long left) {
    this.left = left;
  }


  public long getTop() {
    return top;
  }

  public void setTop(long top) {
    this.top = top;
  }


  public String getUse_yn() {
    return use_yn;
  }

  public void setUse_yn(String use_yn) {
    this.use_yn = use_yn;
  }


  public String getCont() {
    return cont;
  }

  public void setCont(String cont) {
    this.cont = cont;
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

  public int getOrd() {
    return ord;
  }

  public void setOrd(int ord) {
    this.ord = ord;
  }

  public List<OrdVo> getOrdList() {
    return ordList;
  }

  public void setOrdList(List<OrdVo> ordList) {
    this.ordList = ordList;
  }
}

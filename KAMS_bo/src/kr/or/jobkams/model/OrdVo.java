package kr.or.jobkams.model;

import java.io.Serializable;

/**
 * Program Name : kr.or.jobkams.model
 * Author : shlee
 * Date : 2021-03-27
 * Description :
 * History :
 * Version :
 */
public class OrdVo implements Serializable {
    private static final long serialVersionUID = 7915924542827561569L;
    private String idx;
    private String val;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getIdx() {
        return idx;
    }

    public void setIdx(String idx) {
        this.idx = idx;
    }

    public String getVal() {
        return val;
    }

    public void setVal(String val) {
        this.val = val;
    }
}

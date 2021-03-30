package kr.or.jobkams.repository.tibero;

/**
 * Program Name : kr.go.songpa.ssem.repository.tibero
 * Author : shlee
 * Date : 2020-09-16
 * Description :
 * History :
 * Version :
 */
public interface CommonRepository {
    String getNextStringId() throws Exception;

    void setNextStringId() throws Exception;
}

<%--
  Created by IntelliJ IDEA.
  User: gtlif
  Date: 2021-03-29
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<div id="mypage_indiv_talk_write" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">마이페이지</p>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_indv">
                    <div class="pf_photo_wrap pf_photo_indv">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>홍길동</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">이력서 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/resume_form.do">이력서등록</a></li>
                                <li><a href="/sub/mypage/resume_profile.do">자기소개서등록</a></li>
                                <li><a href="/sub/mypage/resume_setting.do">이력서·자기소개서 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/application_list.do">입사지원현황</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/scrap_list.do">스크랩 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/favorite_list.do">관심기업</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/view_list.do">최근 본 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/calendar.do">나의 캘린더</a>
                        </li>
                        <li class="on">
                            <a href="/sub/mypage/one_to_one_list.do">1:1톡</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">1:1 톡</p>
                    </div>
                    <form action="">
                        <div class="write_tb_wrap mp_talk_write_tb_wrap">
                            <table class="write_tb inq_talk_write_tb">
                                <tbody>
                                    <tr>
                                        <th><label for="inq_talk_writer">작성자<span class="required">*</span></label></th>
                                        <td><input type="text" name="" id="inq_talk_writer" class="i-inpt"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="inq_talk_subj">제목<span class="required">*</span></label></th>
                                        <td><input type="text" name="" id="inq_talk_subj" class="i-inpt i-inpt_full"></td>
                                    </tr>
                                    <tr>
                                        <th><label for="inq_talk_content">내용<span class="required">*</span></label></th>
                                        <td><textarea name="" id="inq_talk_content" class="i-textar i-textar_full" cols="30" rows="15"></textarea></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="inq_talk_priv">
                            <div class="i-checks">
                                <input type="checkbox" id="inq_talk_priv_chk">
                                <label for="inq_talk_priv_chk">개인정보처리방침에 동의합니다.</label>
                                <button type="button" class="priv_content_btn" onclick="privacyView();">[내용확인]</button>
                            </div>
                            <div id="priv_view_content" class="priv_content mCustomScrollbar _mCS_2 mCS_no_scrollbar" style=""><div id="mCSB_2" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 128px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                                <div class="priv_content_wrap">
                                    개인정보처리방침 내용입니다.
                                </div>
                            </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
                        </div>
                        <div class="mp_talk_btn_box">
                            <ul class="mp_talk_btn_ul">
                                <li><button type="submit" id="mp_talk_submit" class="btn01">수정완료</button></li>
                                <li><a href="" id="mp_talk_cancle" class="btn02">취소</a></li>
                            </ul>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div><!--sub_content-->
</div>
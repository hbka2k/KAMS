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

<div id="mypage_indiv_talk_view" class="sub mypage">
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

                    <div class="board_view mp_talk_view">
                        <div class="mp_talk_view_q">
                            <div class="bo_v_top cf">
                                <p class="bo_v_title">문의제목입니다.</p>
                                <ul class="mp_talk_view_inf">
                                    <li>
                                        <span>작성자 : </span>
                                        <span>홍길동</span>
                                    </li>
                                    <li>2021.01.01 14:05:00</li>
                                </ul>
                            </div>

                            <div class="bo_v_cont">
                                문의 내용입니다.
                            </div>

                            <div class="mp_talk_view_job">채용공고 제목입니다.</div>
                        </div>

                        <div class="mp_talk_view_a">
                            <p class="mp_talk_view_a_title">답변</p>
                            <div class="bo_v_top cf">
                                <ul class="mp_talk_view_inf">
                                    <li>
                                        <span>작성자 : </span>
                                        <span>홍길동</span>
                                    </li>
                                    <li>2021.01.01</li>
                                </ul>
                                <span class="mp_talk_view_state">답변완료</span>
                            </div>

                            <div class="bo_v_cont">
                                답변 내용이 출력됩니다.
                            </div>

                            <div class="mp_talk_view_bot">
                                <div class="mp_talk_view_btn cf">
                                    <ul class="mp_talk_view_btn_ul">
                                        <li>
                                            <!--답변완료시에는 삭제 불가-->
                                            <button type="button" id="mp_talk_view_del_btn" class="btn03">삭제</button>
                                        </li>
                                        <li>
                                            <!--답변완료시에는 수정 불가-->
                                            <button type="button" id="mp_talk_view_edit_btn" class="btn03" onclick="location.href='/sub/mypage/one_to_one_edit.do'">수정</button>
                                        </li>
                                    </ul>

                                    <a href="/sub/mypage/one_to_one_list.do" id="mp_talk_view_list_btn" class="btn01">목록</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
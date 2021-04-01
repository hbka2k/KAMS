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

<div id="mypage_comp_talk_list" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">마이페이지</p>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_comp">
                    <div class="pf_photo_wrap pf_photo_comp">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>예술경영지원</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">채용공고 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
                                <li><a href="/sub/mypage/com_recruit_add.do">채용공고 등록</a></li>
                                <li><a href="/sub/mypage/com_applicant_list.do">지원자 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_contact_list.do">연락한 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_scrap_list.do">스크랩 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_today_list.do">오늘 본 인재</a>
                        </li>
                        <li class="on">
                            <a href="/sub/mypage/com_one_to_one_list.do">1:1톡</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">기업정보</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_info_info_pass_check.do">기업정보 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check2.do">회사소개 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check3.do">채용담당자 정보관리</a></li>
                            </ul>
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
                            <form action="">
                                <div class="bo_v_cont mp_comp_talk_view_cont">
                                    <label for="mp_comp_talk_answer"></label>
                                    <textarea name="" id="mp_comp_talk_answer" class="i-textar i-textar_full"></textarea>
                                </div>

                                <div class="mp_talk_view_confirm">
                                    <ul class="mp_talk_view_confirm_ul">
                                        <li class="i-radio">
                                            <input type="radio" name="mp_talk_view_confirm_chk" id="mp_talk_view_confirm_chk_n">
                                            <label for="mp_talk_view_confirm_chk_n">미답변</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_talk_view_confirm_chk" id="mp_talk_view_confirm_chk_y">
                                            <label for="mp_talk_view_confirm_chk_y">답변완료</label>
                                        </li>
                                    </ul>
                                </div>

                                <div class="mp_talk_view_bot mp_comp_talk_view_bot">
                                    <div class="mp_talk_view_btn cf">
                                        <ul class="mp_comp_talk_view_btn">
                                            <li><a href="/sub/mypage/com_one_to_one_list.do" id="mp_talk_view_list_btn" class="btn01">목록</a></li>
                                            <li><button id="mp_talk_view_submit_btn" class="btn04">답변저장</button></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
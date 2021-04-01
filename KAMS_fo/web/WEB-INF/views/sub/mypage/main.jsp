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

<div id="mypage_home" class="sub mypage">
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
                        <li>
                            <a href="/sub/mypage/one_to_one_list.do">1:1톡</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">

                    <div class="mp_notification">
                        <ul class="mp_notification_ul">
                            <li>
                                <a href="/sub/mypage/application_list.do">
                                    <span class="mp_notification_num">7</span>
                                    <span class="mp_notification_txt">지원완료</span>
                                </a>
                            </li>
                            <li>
                                <a href="/sub/mypage/application_list.do">
                                    <span class="mp_notification_num">5</span>
                                    <span class="mp_notification_txt">이력서 열람</span>
                                </a>
                            </li>
                            <li>
                                <a href="/sub/mypage/scrap_list.do">
                                    <span class="mp_notification_num">31</span>
                                    <span class="mp_notification_txt">스크랩 공고</span>
                                </a>
                            </li>
                            <li>
                                <a href="/sub/mypage/favorite_list.do">
                                    <span class="mp_notification_num">0</span>
                                    <span class="mp_notification_txt">관심기업 공고</span>
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="mp_sec mp_home_ai_sec">
                        <p class="mp_sec_tit">AI 추천 맞춤 채용 공고</p>
                        <div class="board_tb_wrap mp_ai_tb_wrap">
                            <table class="board_tb jobs_sch_tb mp_ai_tb">
                                <caption>채용정보 목록</caption>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:*">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>회사명/정보제공처</th>
                                        <th>채용공고명/담당업무/지원자격</th>
                                        <th>근무조건</th>
                                        <th>등록/마감일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td class="ta_l">
                                            <p class="jobs_cname">재 중구문화재단<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_icon.png" alt=""></button></p>
                                        </td>
                                        <td class="ta_l">
                                            <a href="/sub/recruit/search_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

                                            <div class="jobs_sector_box cf">
                                                <span class="jobs_sector_text">담당업무 :</span>
                                                <div class="jobs_sector">
                                                    <span>경리업무</span>
                                                    <span>일반 사무업무(문서작업)</span>
                                                </div>
                                            </div><!--jobs_sector_box-->

                                            <div class="jobs_dtl_box">
                                                <span class="jobs_career">경력1년</span>
                                                <span class="jobs_edu">학력무관</span>
                                                <span class="jobs_wkplace">서울 서초구</span>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="jobs_salary">연봉 2,400만원 ~ 2,500만원</p>
                                            <div class="jobs_emptype">
                                                <span class="jobs_regular">정규</span>
                                                <span class="jobs_wkday">주5일</span>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="jobs_d-day">D-15</p>
                                            <p class="jobs_regi_stt-time">2021.01.01 등록</p>
                                            <p class="jobs_regi_end-time">2021.01.18 마감</p>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td class="ta_l">
                                            <p class="jobs_cname">리만머핀<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_ov_icon.png" alt=""></button></p>
                                            <div class="jobs_site">
                                                <span><img src="/resources/images/worknet_logo.png" alt=""></span>
                                            </div>
                                        </td>
                                        <td class="ta_l">
                                            <a href="/sub/recruit/search_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

                                            <div class="jobs_sector_box cf">
                                                <span class="jobs_sector_text">담당업무 :</span>
                                                <div class="jobs_sector">
                                                    <span>경리업무</span>
                                                    <span>일반 사무업무(문서작업)</span>
                                                </div>
                                            </div><!--jobs_sector_box-->

                                            <div class="jobs_dtl_box">
                                                <span class="jobs_career">경력무관</span>
                                                <span class="jobs_edu">대졸(2~3년)~대졸(4년)</span>
                                                <span class="jobs_wkplace">서울 서초구</span>
                                            </div>
                                        </td>
                                        <td>
                                            <p class="jobs_salary">월급 200만원 ~ 220만원</p>
                                            <div class="jobs_emptype">
                                                <span class="jobs_regular">계약</span>
                                                <span class="jobs_wkday">주5일</span>
                                            </div>
                                            <p class="jobs_wktime">09:00 ~ 18:00</p>
                                        </td>
                                        <td>
                                            <p class="jobs_d-day">채용시까지</p>
                                            <p class="jobs_regi_stt-time">2021.01.01 등록</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
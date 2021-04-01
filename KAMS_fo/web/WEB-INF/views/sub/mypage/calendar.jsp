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

<div id="mypage_join_list" class="sub mypage">
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
                        <li class="on">
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
                    <div class="mp_title_box">
                        <p class="mp_title">나의 캘린더</p>
                    </div>

                    <div class="mp_calendar_wrap">
                        <div class="calendar_month">
                            <ul class="calendar_month_ul">
                                <li class="calendar_month_arrow calendar_month_prev"><i class="arrow left"></i></li>
                                <li class="calendar_month_current">2021.03</li>
                                <li class="calendar_month_arrow calendar_month_next"><i class="arrow right"></i></li>
                            </ul>
                        </div>

                        <p class="mp_calendar_scr_txt">← 좌우로 스크롤해주세요. →</p>
                        <div class="mp_calendar_wr">
                            <div class="mp_calendar">
                                <div class="calendar_day">
                                    <table class="calendar_day_tb">
                                        <tbody>
                                            <tr>
                                                <td class="sun">일</td>
                                                <td>월</td>
                                                <td>화</td>
                                                <td>수</td>
                                                <td>목</td>
                                                <td>금</td>
                                                <td class="sat">토</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="calendar_week">
                                    <table class="calendarTable_bg">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td class="today"></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="calendarTable">
                                        <tr class="calendar_date">
                                            <td>&nbsp;</td>
                                            <td>01</td>
                                            <td>
                                                <a href="javascript:void(0);" onclick="popUp('calendar_regiter_popup')">02</a>
                                                <a href="javascript:void(0);" class="noto calendar_more_btn" onclick="popUp('calendar_all_popup')">+ 더보기</a>
                                            </td>
                                            <td>03</td>
                                            <td>04</td>
                                            <td>05</td>
                                            <td class="sat">06</td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td colspan="5">
                                                <div class="calendar_data_in">
                                                    <a href="" class="calendar_data_color_a">
                                                        <span class="calendar_data_time">14:00</span>
                                                        <span class="calendar_data_txt">등록된일정</span>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td colspan="5">
                                                <div class="calendar_data_in">
                                                    <a href="" class="calendar_data_color_b">
                                                        <span class="calendar_data_time">14:00</span>
                                                        <span class="calendar_data_txt">등록된일정</span>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="calendar_week">
                                    <table class="calendarTable_bg">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="calendarTable">
                                        <tr class="calendar_date">
                                            <td class="sun">07</td>
                                            <td>08</td>
                                            <td>09</td>
                                            <td>10</td>
                                            <td>11</td>
                                            <td>12</td>
                                            <td class="sat">13</td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="calendar_week">
                                    <table class="calendarTable_bg">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="calendarTable">
                                        <tr class="calendar_date">
                                            <td class="sun">14</td>
                                            <td>15</td>
                                            <td>16</td>
                                            <td>17</td>
                                            <td>18</td>
                                            <td>19</td>
                                            <td class="sat">20</td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="calendar_week">
                                    <table class="calendarTable_bg">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="calendarTable">
                                        <tr class="calendar_date">
                                            <td class="sun">21</td>
                                            <td>22</td>
                                            <td>23</td>
                                            <td>24</td>
                                            <td>25</td>
                                            <td>26</td>
                                            <td class="sat">27</td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="calendar_week">
                                    <table class="calendarTable_bg">
                                        <tbody>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                    <table class="calendarTable">
                                        <tr class="calendar_date">
                                            <td class="sun">28</td>
                                            <td>29</td>
                                            <td>30</td>
                                            <td>31</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr class="calendar_data">
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div><!--sub_content-->

    <!--더보기 팝업{-->
    <div id="calendar_all_popup" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <p class="popup_title">
                    <a href="javascript:void(0);" class="calendar_all_popup_prev"><i class="arrow left"></i></a>
                    <span class="calendar_all_popup_title">2021.01.01<b>(금)</b></span>
                    <a href="javascript:void(0);" class="calendar_all_popup_next"><i class="arrow right"></i></a>
                </p>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="calendar_all_tb_wrap">
                        <table class="board_tb calendar_more_tb">
                            <caption>나의캘린더 목록</caption>

                            <thead>
                                <tr>
                                    <th class="calendar_all_th_stdate">시작일정</th>
                                    <th class="calendar_all_th_eddate">종료일정</th>
                                    <th>일정제목</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--loop {-->
                                <tr>
                                    <td class="rp_td rp_td_767"><p class="rp_td_txt" data-th="시작일정">2021.02.01</p></td>
                                    <td class="rp_td rp_td_767"><p class="rp_td_txt" data-th="종료일정">2021.02.01</p></td>
                                    <td><a href="">일정 제목이 보여집니다.</a></td>
                                </tr>
                                <!--} loop-->
                                <tr>
                                    <td class="rp_td rp_td_767"><p class="rp_td_txt" data-th="시작일정">2021.02.01</p></td>
                                    <td class="rp_td rp_td_767"><p class="rp_td_txt" data-th="종료일정">2021.02.01</p></td>
                                    <td><a href="">일정 제목이 보여집니다.</a></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="paging">
                            <ul class="paging_ul">
                                <li class="paging_prev"><a href=""><i class="arrow left"></i></a></li>
                                <li class="paging_active"><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">4</a></li>
                                <li><a href="">5</a></li>
                                <li class="paging_next"><a href=""><i class="arrow right"></i></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--}더보기 팝업-->

    <!--일정 등록/수정 팝업{-->
    <div id="calendar_regiter_popup" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <p class="popup_title">캘린더 등록</p>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <form action="">
                        <div class="calendar_regiter_tb_wrap">
                            <table class="calendar_regiter_tb">
                                <caption>자기소개서 항목 및 내용 작성폼</caption>
                                <tbody>
                                    <tr>
                                        <th>제목</th>
                                        <td>
                                            <input type="text" name="" class="i-inpt i-inpt_full"></input>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>기간</th>
                                        <td class="pd_tbr0 cf">
                                            <ul class="calendar_regiter_period">
                                                <li>
                                                    <input type="text" name="" class="date-inpt calendar_regiter_date">
                                                    <!--(normal.js) .mp_resume_condition_wktime 24시간(30분단위) 셀렉트-->
                                                    <select name="" class="i-select time-sel calendar_regiter_time">
                                                        <option value="">시간선택</option>
                                                    </select>
                                                </li>
                                                <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                <li>
                                                    <input type="text" name="" class="date-inpt calendar_regiter_date">
                                                    <!--(normal.js) .mp_resume_condition_wktime 24시간(30분단위) 셀렉트-->
                                                    <select name="" class="i-select time-sel calendar_regiter_time">
                                                        <option value="">시간선택</option>
                                                    </select>
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>내용</th>
                                        <td>
                                            <textarea name="" id="calendar_regiter_contents" class="i-textar i-textar_full"></textarea>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="calendar_regiter_btn">
                            <button type="button" id="calendar_regiter_del" class="btn03">일정삭제</button>
                            <button type="button" id="calendar_regiter_submit" class="btn01">저장하기</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!--}일정 등록/수정 팝업-->
</div>
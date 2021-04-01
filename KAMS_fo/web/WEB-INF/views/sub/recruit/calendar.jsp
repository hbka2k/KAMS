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
        $(document).ready(function(){
            $(".jobs_calendar_filter").on("click", "li:not('.jobs_calendar_datepick')", function(){
                $(this).addClass("active").siblings().removeClass("active");
            });
        });
    });
</script>
<!--Contents {-->
<div id="jobs_calendar" class="sub">
    <div class="sub_visual sub_visual02">
        <div class="wrapper">
            <p class="sub_vs_title">채용정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">채용정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">채용캘린더</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">채용캘린더</p>

            <div class="jobs_calendar_wrap">
                <div class="calendar_month">
                    <ul class="calendar_month_ul">
                        <li class="calendar_month_arrow calendar_month_prev"><i class="arrow left"></i></li>
                        <li class="calendar_month_current">2021.03</li>
                        <li class="calendar_month_arrow calendar_month_next"><i class="arrow right"></i></li>
                    </ul>
                    <ul class="jobs_calendar_filter">
                        <li class="active"><a href="javascript:void(0);">전체</a></li>
                        <li><a href="javascript:void(0);">시작</a></li>
                        <li><a href="javascript:void(0);">마감</a></li>
                        <li class="jobs_calendar_datepick">
                            <input type="text" name="" class="date-inpt">
                        </li>
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
                                        <td class="jobs_calendar_more_td_subj"></td>
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
                                    <td>
                                        <a href="" class="jobs_calendar_list">
                                            <span class="jobs_calendar_state jobs_calendar_state_st01">시작</span>
                                            <span class="jobs_calendar_subj">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</span>
                                        </a>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="calendar_data">
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a href="" class="jobs_calendar_list">
                                            <span class="jobs_calendar_state jobs_calendar_state_st02">마감</span>
                                            <span class="jobs_calendar_subj">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</span>
                                        </a>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="calendar_data">
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a href="" class="jobs_calendar_list">
                                            <span class="jobs_calendar_state jobs_calendar_state_st01">시작</span>
                                            <span class="jobs_calendar_subj">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</span>
                                        </a>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr class="calendar_data">
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a href="" class="jobs_calendar_list">
                                            <span class="jobs_calendar_state jobs_calendar_state_st02">마감</span>
                                            <span class="jobs_calendar_subj">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</span>
                                        </a>
                                    </td>
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
                                        <td class="jobs_calendar_more_td_subj"></td>
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
                                        <td class="jobs_calendar_more_td_subj"></td>
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
                                        <td class="jobs_calendar_more_td_subj"></td>
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
                                        <td class="jobs_calendar_more_td_subj"></td>
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
                            <caption>채용캘린더 목록</caption>

                            <thead>
                                <tr>
                                    <th class="jobs_calendar_more_th_subj">채용공고명</th>
                                    <th class="jobs_calendar_more_th_people">모집인원</th>
                                    <th class="jobs_calendar_more_th_type">고용형태</th>
                                    <th class="jobs_calendar_more_th_date">시작/마감일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!--loop {-->
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state01">시작</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</a>
                                    </td>
                                    <td>5명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <!--} loop-->
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                    </td>
                                    <td>1명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state01">시작</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</a>
                                    </td>
                                    <td>5명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                    </td>
                                    <td>1명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state01">시작</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</a>
                                    </td>
                                    <td>5명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                    </td>
                                    <td>1명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state01">시작</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</a>
                                    </td>
                                    <td>5명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                    </td>
                                    <td>1명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state01">시작</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」참여자 추가 모집 공고</a>
                                    </td>
                                    <td>5명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
                                </tr>
                                <tr>
                                    <td class="jobs_calendar_more_td_subj">
                                        <span class="jobs_calendar_td_state state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="jobs_calendar_td_title">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                    </td>
                                    <td>1명</td>
                                    <td>정규직</td>
                                    <td>2020.01.01~2020.01.18</td>
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
</div><!--sub-->
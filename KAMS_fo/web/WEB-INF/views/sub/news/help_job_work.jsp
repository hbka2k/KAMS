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

<!--Contents {-->
<div id="activity_cert" class="sub">
    <div class="sub_visual sub_visual05">
        <div class="wrapper">
            <p class="sub_vs_title">뉴스/자료</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">뉴스/자료</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">취업 도우미</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">취업 도우미</p>

            <div class="tab_wrap sub_tab">
                <ul class="tab_wrap_ul child6">
                    <li><a href="/sub/news/help_cal.do">연봉계산기</a></li>
                    <li><a href="/sub/news/help_spell.do">맞춤법 검사</a></li>
                    <li class="active"><a href="/sub/news/help_job_work.do">취업활동 증명서</a></li>
                    <li><a href="/sub/news/help_grade.do">학점 변환</a></li>
                    <li><a href="/sub/news/help_lang.do">어학점수 변환</a></li>
                    <li><a href="/sub/news/help_word.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">취업활동 증명서</p>

                <form action="">
                    <div class="em_cert_list_sch">
                        <div class="em_cert_list_sch_box cf">
                            <span class="em_cert_list_sch_subj">조회기간</span>
                            <div class="em_cert_list_sch_cont">
                                <ul class="em_cert_list_sch_radio">
                                    <li class="i-radio">
                                        <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state01" value="" checked="">
                                        <label for="mp_announce_sch_state01">1개월</label>
                                    </li>
                                    <li class="i-radio">
                                        <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state02" value="">
                                        <label for="mp_announce_sch_state02">2개월</label>
                                    </li>
                                    <li class="i-radio">
                                        <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state03" value="">
                                        <label for="mp_announce_sch_state03">3개월</label>
                                    </li>
                                </ul>
                                <div class="em_cert_list_date_wr">
                                    <ul class="em_cert_list_date">
                                        <li>
                                            <input type="text" name="" class="date-inpt em_cert_month-inpt" id="">
                                        </li>
                                        <li class="em_cert_list_date_hypen">~</li>
                                        <li>
                                            <input type="text" name="" class="date-inpt em_cert_month-inpt" id="">
                                        </li>
                                    </ul>
                                </div>
                                <button class="em_cert_list_sch_btn">검색하기</button>
                            </div>
                        </div>
                    </div>
                </form>

                <table class="board_tb em_cert_list_tb">
                    <caption>취업활동 증명서</caption>
                    <thead>
                        <tr>
                            <th class="em_cert_th_chk">
                                <div class="i-checks">
                                    <input type="checkbox" id="em_cert_list_chkAll" onclick="checkAll(this,'em_cert_list_chk')">
                                    <label for="em_cert_list_chkAll"><span class="sound_only">채용공고 항목 전체선택</span></label>
                                </div>
                            </th>
                            <th class="em_cert_th_company">회사</th>
                            <th class="em_cert_th_address">주소</th>
                            <th class="em_cert_th_tel">연락처</th>
                            <th class="em_cert_th_date">지원일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--loop {-->
                        <tr>
                            <td>
                                <div class="i-checks">
                                    <input type="checkbox" id="em_cert_list_chk01">
                                    <label for="em_cert_list_chk01"><span class="sound_only">증명서 항목 선택</span></label>
                                </div>
                            </td>
                            <td>예술경영지원센터</td>
                            <td>서울시 종로구 대학로</td>
                            <td>02-708-2244</td>
                            <td>2021.01.01</td>
                        </tr>
                        <!--} loop-->
                        <tr>
                            <td>
                                <div class="i-checks">
                                    <input type="checkbox" id="em_cert_list_chk02">
                                    <label for="em_cert_list_chk02"><span class="sound_only">증명서 항목 선택</span></label>
                                </div>
                            </td>
                            <td>예술경영지원센터</td>
                            <td>서울시 종로구 대학로</td>
                            <td>02-708-2244</td>
                            <td>2021.01.01</td>
                        </tr>
                        <tr>
                            <td>
                                <div class="i-checks">
                                    <input type="checkbox" id="em_cert_list_chk03">
                                    <label for="em_cert_list_chk03"><span class="sound_only">증명서 항목 선택</span></label>
                                </div>
                            </td>
                            <td>예술경영지원센터</td>
                            <td>서울시 종로구 대학로</td>
                            <td>02-708-2244</td>
                            <td>2021.01.01</td>
                        </tr>
                    </tbody>
                </table>
                <div class="em_cert_list_bt">
                    <button type="button" class="btn01 em_cert_list_print">출력</button>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
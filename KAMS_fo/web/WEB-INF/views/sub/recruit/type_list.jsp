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
        //상세조건설정 버튼 열기,닫기
        var $schDtBtn = $("#jobs_sch_detail_btn"),
            $schDtCont = $(".jobs_sch_detail_box");

        $schDtBtn.click(function(){
            $(this).toggleClass("active");
            $schDtCont.toggle();
        })
    });
</script>


<div id="jobs" class="sub">
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
                            <option value="">채용정보 상세검색</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">채용정보 상세검색</p>

            <div class="jobs_sch_wrap">
                <form action="">
                    <div class="jobs_sch_cont">
                        <div class="jobs_sch_keyword cf">
                            <div class="jobs_sch_li">
                                <label for="" class="jobs_sch_lb jobs_sch_li_l">검색어</label>
                                <input type="text" class="i-inpt jobs_sch_li_r" id="jobs_keyword" name="keyword">
                                <input type="hidden" id="jobs_keyword_re">
                            </div>
                            <ul class="jobs_sch_keyword_chk cf">
                                <li class="i-checks">
                                    <input type="checkbox" id="jobs_sch_keyword_all">
                                    <label for="jobs_sch_keyword_all">전체</label>
                                </li>
                                <li class="i-checks">
                                    <input type="checkbox" id="jobs_sch_keyword_subj">
                                    <label for="jobs_sch_keyword_subj">제목</label>
                                </li>
                                <li class="i-checks">
                                    <input type="checkbox" id="jobs_sch_keyword_cname">
                                    <label for="jobs_sch_keyword_cname">회사명</label>
                                </li>
                                <li class="i-checks">
                                    <input type="checkbox" id="jobs_sch_keyword_sector">
                                    <label for="jobs_sch_keyword_sector">직무내용</label>
                                </li>
                                <li class="i-checks">
                                    <input type="checkbox" id="jobs_sch_keyword_station">
                                    <label for="jobs_sch_keyword_station">역세권명</label>
                                </li>
                            </ul>
                        </div>

                        <div class="jobs_sch_detail cf">
                            <div class="jobs_sch_li">
                                <span class="jobs_sch_lb jobs_sch_li_l">장르별</span>
                                <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_genre_pop')">장르 선택</button>
                            </div>
                            <div class="jobs_sch_li">
                                <span class="jobs_sch_lb jobs_sch_li_l">업종별</span>
                                <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_sector_pop')">업종 선택</button>
                            </div>
                            <div class="jobs_sch_li">
                                <span class="jobs_sch_lb jobs_sch_li_l">지역별</span>
                                <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_wkplace_pop')">지역 선택</button>
                            </div>
                        </div>

                        <button type="button" id="jobs_sch_detail_btn">상세조건설정<span></span></button>
                    </div><!--jobs_sch_cont-->

                    <div class="jobs_sch_detail_box">
                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">고용형태</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="job_type[]" id="job_type_1" value="정규직">
                                            <label for="job_type_1">정규직</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">계약직</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">시간선택제</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">인턴</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">파견근로</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">대체인력</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">프리랜서</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">경력</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">경력무관</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">신입</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">경력</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">최종학력</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">학력무관</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">고등학교</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">대학교2/3년제</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">대학교4년제</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">석사</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">박사</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">등록일</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">오늘</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">3일</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">1주</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">2주</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">한달</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">직접지정</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">임금형태</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">연봉</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">월급</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">일급</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">시급</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">면접 후 결정</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">주급</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">건별</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title mt">급여조건</p>
                            <div class="jobs_sch_detail_opt">
                                <input type="text" class="i-inpt"> 만원 이상 ~&nbsp;
                                <input type="text" class="i-inpt"> 만원 이하
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">우대조건</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">청년층</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">장년</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">여성</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">장애인채용</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">장애인 병행채용</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">장애인 우대</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">장애인만 채용</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div><!--jobs_sch_detail_box-->

                    <div class="jobs_sch_result">
                        <div class="result_keyword_wrap">
                            <span class="result_keyword">정규직<button type="button" id="" class="jobs_rst_remove_btn">삭제</button></span>
                            <span class="result_keyword">정규직<button type="button" id="" class="jobs_rst_remove_btn">삭제</button></span>
                            <!--검색조건 없을시 노출
                            <p class="result_keyword_empty">검색조건을 선택해 주세요.</p>
                            -->
                        </div>
                        <div class="result_reset_wrap">
                            <button type="button" id="jobs_clear" class="jobs_rst_reset_btn"><img src="/resources/images/reset_icon01.png" alt="">선택초기화</button>
                        </div>

                        <p class="result_sch_text">선택조건결과 <br><span id="result_sch_total_cnt">97,547</span>건</p>
                        <button type="button" id="result_sch_btn" class="btn01">검색하기</button>
                    </div>
                </form>
            </div><!--jobs_sch_wrap-->

            <div class="board_tb_wrap jobs_sch_tb_wrap">
                <div class="bo_view_type">
                    <ul class="bo_view_type_ul">
                        <li class="bo_vsort">
                            <select name="" id="" class="i-select bo_vsort_sel">
                                <option value="">등록일순 ↓</option>
                                <option value="">등록일순 ↑</option>
                                <option value="">제목순 ↓</option>
                                <option value="">제목순 ↑</option>
                                <option value="">기업명 ↓</option>
                                <option value="">기업명 ↑</option>
                                <option value="">마감일순 ↓</option>
                                <option value="">마감일순 ↑</option>
                            </select>
                        </li>
                        <li class="bo_vtotal">
                            <select name="" id="" class="i-select bo_vtotal_sel">
                                <option value="">10개씩 보기</option>
                                <option value="">50개씩 보기</option>
                                <option value="">100개씩 보기</option>
                            </select>
                        </li>
                        <li class="bo_ving i-checks">
                            <input type="checkbox" id="jobs_ving_chk">
                            <label for="jobs_ving_chk">마감 제외</label>
                        </li>
                    </ul>
                </div>

                <table class="board_tb jobs_sch_tb">
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
                                <a href="/sub/recruit/type_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

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
                                <a href="/sub/recruit/type_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">재 중구문화재단<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_icon.png" alt=""></button></p>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">리만머핀<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_ov_icon.png" alt=""></button></p>
                                <div class="jobs_site">
                                    <span><img src="/resources/images/worknet_logo.png" alt=""></span>
                                </div>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">재 중구문화재단<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_icon.png" alt=""></button></p>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">리만머핀<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_ov_icon.png" alt=""></button></p>
                                <div class="jobs_site">
                                    <span><img src="/resources/images/worknet_logo.png" alt=""></span>
                                </div>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">재 중구문화재단<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_icon.png" alt=""></button></p>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">리만머핀<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_ov_icon.png" alt=""></button></p>
                                <div class="jobs_site">
                                    <span><img src="/resources/images/worknet_logo.png" alt=""></span>
                                </div>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">재 중구문화재단<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_icon.png" alt=""></button></p>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">경리사무원 모집<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_icon02.png" alt=""></button></a>

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
                        <tr>
                            <td class="ta_l">
                                <p class="jobs_cname">리만머핀<button type="button" class="jobs_canme_bmark"><img src="/resources/images/heart_ov_icon.png" alt=""></button></p>
                                <div class="jobs_site">
                                    <span><img src="/resources/images/worknet_logo.png" alt=""></span>
                                </div>
                            </td>
                            <td class="ta_l">
                                <a href="/sub/recruit/type_view.do" class="jobs_title">예약실 및 캐셔 구인(신입/경력)<button type="button" class="jobs_title_bmark"><img src="/resources/images/star_ov_icon02.png" alt=""></button></a>

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

                <div class="board_list_bot">
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
    </div><!--sub_content-->

    <!--장르 선택 팝업 {-->
    <div id="jobs_genre_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">장르 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공연예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">시각예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">영상예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">문화예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타예술</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">세부장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">연극/뮤지컬분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">음악분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">무용분야</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">업종</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자영예술업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기획, 창작, 제작업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">감독, 기술업</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직업명</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">연극 및 뮤지컬 배우</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">안무가</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">마술사</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">곡예사</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직종 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul">
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 장르 선택 팝업-->

    <!--업종 선택 팝업 {-->
    <div id="jobs_sector_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">업종 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">업종</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자영예술업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기획, 창작, 제작업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">감독, 기술업</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공연예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">시각예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">영상예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">문화예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타예술</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">세부장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">연극/뮤지컬분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">음악분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">무용분야</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직업명</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">연극 및 뮤지컬 배우</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">안무가</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">마술사</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">곡예사</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직종 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul">
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 업종 선택 팝업-->

    <!--근무지역 선택 팝업 {-->
    <div id="jobs_wkplace_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">지역 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">시/도 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">강원도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경기도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경상남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경상북도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">광주광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">대구광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">대전광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">부산광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">서울특별시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">세종특별자치시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">울산광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">인천광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전라남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전라북도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">제주특별자치도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">충청남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">충청북도</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">구/군 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">강릉시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">고성군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">동해시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">삼척시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">속초시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">양구군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">양양군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">영월군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">원주시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">인제군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">정선군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">철원군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">춘천시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">태백시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">평창군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">홍천군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">화천군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">횡성군</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">선택 지역</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul wkplace_option_result_ul">
                                <li>
                                    <span>강원도 강릉시</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>강원도 고성군</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 근무지역 선택 팝업-->

</div>
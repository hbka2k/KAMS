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


<!--Contents {-->
<div id="people" class="sub">
    <div class="sub_visual sub_visual03">
        <div class="wrapper">
            <p class="sub_vs_title">인재정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">인재정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">인재정보 상세검색</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">인재정보 상세검색</p>

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
                            <p class="jobs_sch_detail_title mt">전공</p>
                            <div class="jobs_sch_detail_opt">
                                <input type="text" name="" id="sch_major_inpt" class="i-inpt">
                                <button type="button" class="sch_major_btn" onclick="popUp('person_major_pop')">전공 선택</button>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title mt">경력</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                    <li class="mt">
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li class="mt">
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">신입</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">경력&nbsp;</label>
                                            <input type="text" class="i-inpt"> 년 ~&nbsp;
                                            <input type="text" class="i-inpt"> 년
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">학력</p>
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
                                            <label for="">고등학교 졸업</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">대학교 졸업(2/3년)</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">대학교 졸업(4년)</label>
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
                            <p class="jobs_sch_detail_title mt">희망임금</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                    <li>
                                        <select name="" id="" class="i-select sch_paytype_sel">
                                            <option value="">선택</option>
                                            <option value="">연봉</option>
                                            <option value="">월급</option>
                                            <option value="">일급</option>
                                            <option value="">시급</option>
                                        </select>
                                        <input type="text" class="i-inpt"> 만원 이상 ~&nbsp;
                                        <input type="text" class="i-inpt"> 만원 이하
                                    </li>
                                    <li class="mt">
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">면접 후 결정</label>
                                        </div>
                                    </li>
                                    <li class="mt">
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">회사 내규에 따름</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title">성별</p>
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
                                            <label for="">남자</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="i-radio">
                                            <input type="radio" name="" id="">
                                            <label for="">여자</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="jobs_sch_detail_opt_li cf">
                            <p class="jobs_sch_detail_title mt">나이</p>
                            <div class="jobs_sch_detail_opt">
                                <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                    <li class="mt">
                                        <div class="i-checks">
                                            <input type="checkbox" name="" id="">
                                            <label for="">전체</label>
                                        </div>
                                    </li>
                                    <li>
                                        <input type="text" class="i-inpt"> 세 이상 ~&nbsp;
                                        <input type="text" class="i-inpt"> 세 이하
                                    </li>
                                </ul>
                            </div>
                        </div>

                    </div><!--jobs_sch_detail_box-->

                    <div class="jobs_sch_result">
                        <div class="result_keyword_wrap">

                            <!-- 스크립트 개발 임시중지
                            <ul id="myTags" class="tagit ui-widget ui-widget-content ui-corner-all"></ul>
                            <span id="tetete" >tetete</span>
                            -->

                            <span class="result_keyword">선택내용01<button type="button" id="" class="jobs_rst_remove_btn">삭제</button></span>
                            <span class="result_keyword">선택내용02<button type="button" id="" class="jobs_rst_remove_btn">삭제</button></span>

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

            <div class="board_tb_wrap person_sch_tb_wrap">
                <div class="bo_view_type">
                    <ul class="bo_view_type_ul">
                        <li class="bo_vsort">
                            <select name="" id="" class="i-select bo_vsort_sel">
                                <option value="">등록일순 ↓</option>
                                <option value="">등록일순 ↑</option>
                                <option value="">제목순 ↓</option>
                                <option value="">제목순 ↑</option>
                                <option value="">이름순 ↓</option>
                                <option value="">이름순 ↑</option>
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
                    </ul>
                </div>

                <table class="board_tb person_sch_tb">
                    <caption>채용정보 목록</caption>
                    <colgroup>
                        <col style="width:20%;">
                        <col style="width:*">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>이름</th>
                            <th>희망직종/희망임금/희망근무지역</th>
                            <th>학력/전공</th>
                            <th>등록일</th>
                        </tr>
                    </thead>

                    <tbody>
                        <!--loop {-->
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career experienced">경력 1년 6개월</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <!--} loop-->
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career newcomer">신입</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career experienced">경력 1년 6개월</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career newcomer">신입</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career experienced">경력 1년 6개월</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career newcomer">신입</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career experienced">경력 1년 6개월</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career newcomer">신입</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career experienced">경력 1년 6개월</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="ta_l">
                                <a href="/sub/human/genre_view.do" class="jobs_cname">홍길동</a>
                                <div class="jobs_dtl_box person_tb_inf">
                                    <span>남</span>
                                    <span>45세</span>
                                </div>
                                <span class="person_tb_career newcomer">신입</span>
                            </td>
                            <td class="ta_l">
                                <div class="jobs_dtl_box mt0">
                                    <span>안무가</span>
                                    <span>마술사</span>
                                </div>
                                <div class="jobs_dtl_box">
                                    <span>연봉 3,000만원 이상</span>
                                    <span>면접 후 결정</span>
                                </div>
                                <p class="person_tb_wkplace">서울 송파구</p>
                            </td>
                            <td>
                                <p class="person_tb_education">고등학교 졸업</p>
                                <p class="person_tb_major">전공영역</p>
                            </td>
                            <td class="tdv_md">
                                <p class="person_tb_regi-time">2021.01.01</p>
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

    <!--전공 선택 팝업 {-->
    <div id="person_major_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">전공 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="person_major_pop_sch">
                        <form action="" class="cf">
                            <label for="person_major_pop_sch_inpt" class="sound_only">전공 검색</label>
                            <input type="text" name="" id="person_major_pop_sch_inpt" class="i-inpt" placeholder="전공 관련 키워드를 입력하세요.">
                            <button type="button" class="person_major_pop_sch_btn">검색하기</button>
                        </form>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">1차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">인문계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">사회계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">교육계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공학계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자연계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">의약계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">예체능계열</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">2차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기계·금속</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전기·전자</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">정밀·에너지</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">소재·재료</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">컴퓨터·통신</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">산업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">화공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">3차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전산학·컴퓨터공학</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">응용 소프트웨어 공학</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">정보·통신공학</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">전공 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li class="person_pop_major_li">
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">학과명 직접입력&nbsp;</label>

                                        <input type="text" name="" id="" class="i-inpt person_pop_major_inpt" placeholder="찾으시는 학과가 없을 시 직접 입력하세요.">
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털제어공학전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털컨텍트전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">멀티미디어공학전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털컨텐츠학부</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 전공 선택 팝업-->

</div><!--sub-->
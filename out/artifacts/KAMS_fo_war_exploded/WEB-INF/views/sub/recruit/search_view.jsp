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
        $(function () {
            new Morris.Donut({
                element: 'jobs_career_chart',
                data: [
                    {label: "", value: 40},
                    {label: "", value: 60}
                ],
                colors: [
                    '#74b8fb',
                    '#fb7d64'
                ]
            });

            new Morris.Donut({
                element: 'jobs_education_chart',
                data: [
                    {label: "고졸 미만", value: 0},
                    {label: "고등학교 졸업", value: 20},
                    {label: "대학교(2~3년)졸업", value: 0},
                    {label: "대학교(4년)졸업", value: 80},
                    {label: "대학원 이상", value: 0}
                ],
                colors: [
                    '#ffd458',
                    '#fb7d64',
                    '#26eab6',
                    '#74b8fb',
                    '#d092ff'
                ]
                /*
                data: [
                  { y: '고졸미만', a: 10},
                  { y: '고졸(예정)', a: 7},
                  { y: '초대졸(예정)', a: 5},
                  { y: '대졸(예정)', a: 5},
                  { y: '석박사(예정)', a: 2}
                ],
                xkey: 'y',
                ykeys: ['a'],
                labels: ['인원수']
                */
            });
        });
    });
</script>


<div id="jobs_view" class="sub">
    <div class="sub_visual sub_visual02">
        <div class="wrapper">
            <p class="sub_vs_title">일자리정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="../main/main.html"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">일자리정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">일자리 상세보기</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">

            <div class="jobs_dt_top cf">
                <p class="sub_title">예술경영지원센터에서 직원 모집합니다.</p>
                <div class="jobs_dt_scrap">
                    <ul class="jobs_dt_scrap_ul">
                        <li><a href=""><img src="/resources/images/scrap_fb_icon.jpg" alt=""></a></li>
                        <li><a href=""><img src="/resources/images/scrap_kakao_icon.jpg" alt=""></a></li>
                        <li><a href=""><img src="/resources/images/scrap_mail_icon.jpg" alt=""></a></li>
                        <li><a href=""><img src="/resources/images/scrap_print_icon.jpg" alt=""></a></li>
                    </ul>
                </div>
            </div>

            <div class="jobs_dt_summary i-match cf">
                <div class="jobs_dt_summary_lt">
                    <div class="jobs_dt_summary_list">
                        <div class="jobs_dt_summary_col">
                            <p class="jobs_dt_summary_title">지원자격</p>
                            <ul class="jobs_dt_summary_cont">
                                <li>
                                    <div class="jobs_dt_summary_stitle">경력</div>
                                    <div class="jobs_dt_summary_expl">경력무관</div>
                                </li>
                                <li>
                                    <div class="jobs_dt_summary_stitle">학력</div>
                                    <div class="jobs_dt_summary_expl">학력무관</div>
                                </li>
                            </ul>
                        </div>

                        <div class="jobs_dt_summary_col">
                            <p class="jobs_dt_summary_title">근무조건</p>
                            <ul class="jobs_dt_summary_cont">
                                <li>
                                    <div class="jobs_dt_summary_stitle">고용형태</div>
                                    <div class="jobs_dt_summary_expl">정규직</div>
                                </li>
                                <li>
                                    <div class="jobs_dt_summary_stitle">급여조건</div>
                                    <div class="jobs_dt_summary_expl">연봉 2,000만원 ~ 3,000만원 (면접 후 결정)</div>
                                </li>
                                <li>
                                    <div class="jobs_dt_summary_stitle">근무형태</div>
                                    <div class="jobs_dt_summary_expl">주5일</div>
                                </li>
                                <li>
                                    <div class="jobs_dt_summary_stitle">근무지역</div>
                                    <div class="jobs_dt_summary_expl">서울시 종로구 대학로 57 (연건동) 홍익대학교 대학로 캠퍼스 교육동 3층, 12층</div>
                                </li>
                            </ul>
                        </div>
                    </div><!--jobs_dt_summary_list-->

                    <div class="jobs_dt_summary_list jobs_dt_summary_list_add">
                        <p class="jobs_dt_summary_title">장르,업종, 지역</p>
                        <ul class="jobs_dt_summary_cont">
                            <li>
                                <div class="jobs_dt_summary_stitle">장르</div>
                                <div class="jobs_dt_summary_expl">
                                    <ul class="jobs_sch_option_result_ul">
                                        <li>
                                            <span>공연예술</span>
                                            <span>연극뮤지컬분야</span>
                                            <span>자영예술업</span>
                                            <span>연극 및 뮤지컬 배우, 안무가, 마술사</span>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="jobs_dt_summary_stitle">업종</div>
                                <div class="jobs_dt_summary_expl">
                                    <ul class="jobs_sch_option_result_ul">
                                        <li>
                                            <span>자영예술업</span>
                                            <span>연극뮤지컬분야</span>
                                            <span>연극 및 뮤지컬 배우, 안무가, 마술사</span>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <div class="jobs_dt_summary_stitle">지역</div>
                                <div class="jobs_dt_summary_expl">
                                    <ul class="jobs_sch_option_result_ul">
                                        <li>
                                            <span>서울</span>
                                            <span>전체, 경기</span>
                                            <span>성남시</span>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div><!--jobs_dt_summary_list-->
                </div>

                <div class="jobs_dt_summary_rt">
                    <div class="jobs_dt_comp_img"><img src="/resources/images/t-korea_arts_logo.jpg" alt=""></div>
                    <button type="button" id="interest_comp_btn" class="btn02"><span class="interest_comp_btn_icon"></span>관심기업등록</button>
                    <!--활성화버튼-class: active
                    <button type="button" id="interest_comp_btn" class="btn02 active"><img src="/resources/images/heart_icon02.png" alt="">관심기업등록</button>
                    -->

                    <ul class="jobs_dt_comp_cont">
                        <li>
                            <div class="jobs_dt_comp_stitle">기업명</div>
                            <div class="jobs_dt_comp_expl">예술경영지원센터</div>
                        </li>
                        <li>
                            <span class="jobs_dt_comp_stitle">장르</span>
                            <div class="jobs_dt_comp_expl">
                                <ul class="jobs_sch_option_result_ul">
                                    <li>
                                        <span>공연예술</span>
                                        <span>연극/뮤지컬 분야</span>
                                        <span>성남시</span>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div class="jobs_dt_comp_stitle">업종</div>
                            <div class="jobs_dt_comp_expl">자영예술업</div>
                        </li>
                        <li>
                            <div class="jobs_dt_comp_stitle">기업형태</div>
                            <div class="jobs_dt_comp_expl">공공</div>
                        </li>
                        <li>
                            <div class="jobs_dt_comp_stitle">연매출액</div>
                            <div class="jobs_dt_comp_expl">-</div>
                        </li>
                        <li>
                            <div class="jobs_dt_comp_stitle">홈페이지</div>
                            <div class="jobs_dt_comp_expl">www.homepage.com</div>
                        </li>
                        <li>
                            <div class="jobs_dt_comp_stitle">근로자수</div>
                            <div class="jobs_dt_comp_expl">10명</div>
                        </li>
                    </ul>
                </div>
            </div><!--jobs_dt_summary-->

            <div class="jobs_dt_summary_btn">
                <ul class="jobs_dt_summary_btn_ul">
                    <li>
                        <a href="./jobs.html" class="btn02 jobs_dt_list_btn">목록보기</a>
                    </li>
                    <li>
                        <button type="button" class="btn02 jobs_dt_summary_scrap"><span class="summary_scrap_icon"></span>스크랩</button>
                        <!--활성화버튼-class: active
                        <button type="button" class="btn02 jobs_dt_summary_scrap active"><span class="summary_scrap_icon"></span>스크랩</button>
                        -->
                    </li>
                    <li>
                        <button type="button" class="btn01 jobs_dt_summary_apply" onclick="popUp('jobs_apply_compl_pop')">지원하기</button>
                    </li>
                </ul>
            </div><!--jobs_dt_summary_btn-->

            <div class="jobs_dt_cont jobs_dt_recruit">
                <p class="jobs_dt_cont_tit">모집요강</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>경력조건</th>
                                <th>학력조건</th>
                                <th>고용형태</th>
                                <th>모집인원</th>
                                <th>근무예정지</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="경력조건">신입/경력(1년 이상)</td>
                                <td class="rp_tb_tit" data-tit="학력">학력무관</td>
                                <td class="rp_tb_tit" data-tit="고용형태">정규직</td>
                                <td class="rp_tb_tit" data-tit="모집인원">1명</td>
                                <td class="rp_tb_tit" data-tit="근무예정지">서울 종로구 대학로</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_wkdetail">
                <p class="jobs_dt_cont_tit">직무내용</p>
                <div class="jobs_dt_expl_wrap">
                    직무내용 상세설명란 입니다.
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_wkcondition">
                <p class="jobs_dt_cont_tit">근무조건</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>급여조건</th>
                                <th>근무조건</th>
                                <th>근무형태</th>
                                <th>사회보험</th>
                                <th>퇴직금 지급 방법</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="급여조건">
                                    <p>월급 200만원 ~ 250만원</p>
                                    <p>(면접 후 결정)</p>
                                    <p>(회사 내규에 따름)</p>
                                </td>
                                <td class="rp_tb_tit" data-tit="근무조건">(오전) 09시00분 ~ (오후) 06시00분</td>
                                <td class="rp_tb_tit" data-tit="근무형태">주 5일</td>
                                <td class="rp_tb_tit" data-tit="사회보험">
                                    <p>국민연금</p>
                                    <p>고용보험</p>
                                    <p>산재보험</p>
                                    <p>건강보험</p>
                                </td>
                                <td class="rp_tb_tit" data-tit="퇴직금 지급 방법">퇴직연금</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_howto">
                <p class="jobs_dt_cont_tit">전형방법</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>접수마감일</th>
                                <th>전형방법</th>
                                <th>접수방법</th>
                                <th>제출서류 준비물</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="접수마감일">
                                    <p>채용시까지</p>
                                    <p>(~2021-04-30)</p>
                                </td>
                                <td class="rp_tb_tit" data-tit="전형방법">서류, 면접</td>
                                <td class="rp_tb_tit" data-tit="접수방법">아트모아</td>
                                <td class="rp_tb_tit" data-tit="제출서류 준비물">이력서, 자기소개서</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_special">
                <p class="jobs_dt_cont_tit">우대사항</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>전공</th>
                                <th>자격</th>
                                <th>컴퓨터 활용능력</th>
                                <th>우대조건</th>
                                <th>장애인 채용 희망</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="전공">전산학, 컴퓨터공학</td>
                                <td class="rp_tb_tit" data-tit="자격">자동차운전면허</td>
                                <td class="rp_tb_tit" data-tit="컴퓨터 활용능력">
                                    문서작성<br>
                                    파워포인트
                                </td>
                                <td class="rp_tb_tit" data-tit="우대조건">
                                    우대조건1<br>
                                    우대조건2
                                </td>
                                <td class="rp_tb_tit" data-tit="장애인 채용 희망">장애인 병행채용</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="board_tb tb_lay_fix mt">
                        <thead>
                            <tr>
                                <th>우대조건</th>
                                <th>기타우대사항</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="우대조건">청년층</td>
                                <td class="rp_tb_tit" data-tit="기타우대사항">영어 우수자, 운전 가능자</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_benefits">
                <p class="jobs_dt_cont_tit">복리후생</p>
                <div class="jobs_dt_expl_wrap">
                    복리후생 내용 상세설명란 입니다.
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_etc">
                <p class="jobs_dt_cont_tit">기타사항</p>
                <div class="jobs_dt_expl_wrap">
                    기타사항 내용 상세설명란 입니다.
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_manager">
                <p class="jobs_dt_cont_tit">채용담당자</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>부서/담당자</th>
                                <th>전화번호</th>
                                <th>팩스번호</th>
                                <th>이메일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="rp_tb_tit" data-tit="부서/담당자">
                                    홍길동 과장/인사부
                                    <button type="button" class="inq_talk_btn" onclick="popUp('inq_talk_pop')">1:1톡 문의</button>
                                </td>
                                <td class="rp_tb_tit" data-tit="전화번호">
                                    <p>02-000-0000</p>
                                    <p>010-0000-0000</p>
                                </td>
                                <td class="rp_tb_tit" data-tit="팩스번호">00-000-0000</td>
                                <td class="rp_tb_tit" data-tit="이메일">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_current">
                <p class="jobs_dt_cont_tit">입사지원 현황통계</p>
                <div class="jobs_dt_current_wrap i-match">
                    <div class="jobs_dt_current_in">
                        <p class="jobs_dt_current_in_tit">지원자 수</p>
                        <div class="jobs_dt_current_in_cont">
                            <img src="/resources/images/applicant_icon01.png" alt="">
                            <p class="jobs_dt_appc_cnt"><b>100</b>명</p>
                        </div>
                    </div>
                    <div class="jobs_dt_current_in">
                        <p class="jobs_dt_current_in_tit">경력별 지원분포</p>
                        <div class="jobs_dt_current_in_cont">
                            <div class="jobs_dt_current_chart_wrap">
                                <div id="jobs_career_chart"></div>
                                <div class="jobs_career_chart_cnt1">
                                    <p class="jobs_career_chart_cnt_txt1">신입</p>
                                    <p class="jobs_career_chart_cnt_txt2"><b>60</b>%</p>
                                </div>
                                <div class="jobs_career_chart_cnt2">
                                    <p class="jobs_career_chart_cnt_txt1">경력</p>
                                    <p class="jobs_career_chart_cnt_txt2"><b>40</b>%</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="jobs_dt_current_in">
                        <p class="jobs_dt_current_in_tit">학력별 지원분포</p>
                        <div id="jobs_education_chart"></div>
                    </div>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_addr">
                <p class="jobs_dt_cont_tit">위치정보</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb2">
                        <tbody>
                            <tr>
                                <th>기업주소</th>
                                <td>서울 종로구 대학로</td>
                            </tr>
                            <tr>
                                <th>인근전철역</th>
                                <td>수도권 3호선 양재역 1번출구 도보 3분 이내</td>
                            </tr>
                            <tr>
                                <th>근무예정지</th>
                                <td>
                                    <div class="jobs_dt_addr_map">
                                        <img src="/resources/images/t-addr_map.jpg" alt="">
                                    </div>
                                    <a href="https://map.kakao.com/?urlX=497140.0&urlY=1129894.0&name=%EC%84%9C%EC%9A%B8%EA%B3%A0%EC%9A%A9%EC%84%BC%ED%84%B0" class="btn02 jobs_dt_addr_map_btn" target="_blank"><img src="/resources/images/map_icon01.png" alt="">빠른길 찾기</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_summary_btn">
                <ul class="jobs_dt_summary_btn_ul">
                    <li>
                        <a href="/sub/recruit/search_list.do" class="btn02 jobs_dt_list_btn">목록보기</a>
                    </li>
                </ul>
            </div>

            <div class="jobs_dt_cont jobs_dt_relevant">
                <p class="jobs_dt_cont_tit">진행중인 다른 채용공고</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb jobs_sch_tb">
                        <caption>행중인 다른 채용공고 목록</caption>
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
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont jobs_dt_relevant-ai">
                <p class="jobs_dt_cont_tit">맞춤 AI 채용 공고</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb jobs_sch_tb">
                        <caption>맞춤 AI 채용 공고 목록</caption>
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
            </div><!--jobs_dt_cont-->

        </div>
    </div><!--sub_content-->

    <!--1:1톡 문의 팝업 {-->
    <div id="inq_talk_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">1:1톡 문의하기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <div class="write_tb_wrap inq_talk_write_tb_wrap">
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
                            <div id="priv_view_content" class="priv_content">
                                <div class="priv_content_wrap">
                                    개인정보처리방침 내용입니다.
                                </div>
                            </div>
                        </div>
                        <button type="button" id="" class="btn01 inq_talk_pop_submit">문의하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--} 1:1톡 문의 팝업-->

    <!-- 입사 지원 완료 팝업 {-->
    <div id="jobs_apply_compl_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">입사 지원 완료</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <p class="jobs_apply_compl_txt01">예술경영지원센터에서 직원 모집합니다.</p>
                    <p class="jobs_apply_compl_txt01">채용 공고에 입사 지원 했습니다.</p>
                    <a href="/sub/mypage/application_list.do" id="" class="btn01 jobs_apply_compl_btn">입사지원현황</a>
                </div>
            </div>
        </div>
    </div>
    <!--} 입사 지원 완료 팝업-->

</div>
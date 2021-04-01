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
<div id="person_view" class="sub">
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

            <div class="jobs_dt_top cf">
                <p class="sub_title">예술창작편집 사무원(이력서 제목이 노출됩니다.)</p>
                <div class="jobs_dt_scrap">
                    <ul class="jobs_dt_scrap_ul">
                        <li><a href=""><img src="/resources/images/scrap_print_icon.jpg" alt=""></a></li>
                    </ul>
                </div>
            </div>

            <div class="person_dt_summary">
                <div class="person_dt_profile cf">
                    <div class="person_dt_pf_img"></div>
                    <div class="person_dt_pf_info">
                        <div class="person_dt_pf_info_top">
                            <span class="person_dt_pf_name">홍길동</span>
                            <span class="person_dt_pf_basic">(남, 30세, 1992년생)</span>
                        </div>
                        <div class="person_dt_pf_info_bot">
                            <dl>
                                <dt>주소</dt>
                                <dd>서울시 종로구 대학로</dd>
                            </dl>
                            <dl>
                                <dt>전화번호</dt>
                                <dd>02-0000-0000</dd>
                            </dl>
                            <dl>
                                <dt>이메일</dt>
                                <dd>artmore@artmore.com</dd>
                            </dl>
                            <dl>
                                <dt>휴대전화</dt>
                                <dd>010-0000-0000</dd>
                            </dl>
                        </div>
                    </div>
                </div>

                <div class="person_dt_applyinfo cf">
                    <ul class="person_dt_applyinfo_ul i-match">
                        <li>
                            <p class="person_dt_applyinfo_txt01">지원정보</p>
                            <p class="person_dt_applyinfo_txt02">신입</p>
                        </li>
                        <li>
                            <p class="person_dt_applyinfo_txt01">희망지역</p>
                            <p class="person_dt_applyinfo_txt02">서울</p>
                        </li>
                        <li>
                            <p class="person_dt_applyinfo_txt01">희망급여</p>
                            <p class="person_dt_applyinfo_txt02">연봉 3,000만원 이상(면접 후 결정)</p>
                        </li>
                    </ul>
                </div>
            </div><!--jobs_dt_summary-->

            <div class="jobs_dt_summary_btn">
                <ul class="jobs_dt_summary_btn_ul">
                    <li>
                        <button type="button" class="btn02 jobs_dt_summary_scrap"><span class="summary_scrap_icon"></span>스크랩</button>
                        <!--활성화버튼-class: active
                        <button type="button" class="btn02 jobs_dt_summary_scrap active"><span class="summary_scrap_icon"></span>스크랩</button>
                        -->
                    </li>
                    <li>
                        <button type="button" class="btn01 person_dt_summary_apply" onclick="popUp('person_mag_pop');">인재에게 연락하기</button>
                    </li>
                </ul>
            </div><!--jobs_dt_summary_btn-->

            <div class="jobs_dt_cont person_dt_education">
                <p class="jobs_dt_cont_tit">학력사항</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>기간</th>
                                <th>학교명</th>
                                <th>전공/학과</th>
                                <th>학점</th>
                                <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2000.12~2010.06</td>
                                <td>ㅇㅇㅇ학교</td>
                                <td>-</td>
                                <td>-</td>
                                <td>고등학교 졸업</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_career">
                <p class="jobs_dt_cont_tit">경력사항 <span>(총 경력 년 수 : <b>10년 6개월</b>)</span></p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb">
                        <thead>
                            <tr>
                                <th>근무기간</th>
                                <th>회사명</th>
                                <th>직책/직급</th>
                                <th>주요직무</th>
                                <th>상태</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2000.12~2010.06</td>
                                <td>아트모아</td>
                                <td>팀장</td>
                                <td>멀티미디어 콘텐츠 사이버 대학교 교육용 비디오 제작 및 편집 담당 기술직 사원</td>
                                <td>퇴직</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_license">
                <p class="jobs_dt_cont_tit">보유 자격면허</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th>자격면허</th>
                                <th>발급기관</th>
                                <th>취득일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>공인자격</td>
                                <td>정보처리산업기사</td>
                                <td>한국산업인력공단</td>
                                <td>2000.02.21</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_award">
                <p class="jobs_dt_cont_tit">주요활동 및 수상경력</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb">
                        <thead>
                            <tr>
                                <th>기간/일자</th>
                                <th>구분</th>
                                <th>기관명</th>
                                <th>내용/내역</th>
                                <th>주요활동</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2000.12.00</td>
                                <td>수상경력</td>
                                <td>과학기술정보통신부</td>
                                <td>ICT참여수기공모전(동상수여)</td>
                                <td>ICT학점연계 인턴십 수기 공모전에 참가하여 동상을 수상하였습니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_language">
                <p class="jobs_dt_cont_tit">외국어 능력</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>외국어</th>
                                <th>수준</th>
                                <th>공인시험</th>
                                <th>점수(등급)</th>
                                <th>응시일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>영어</td>
                                <td>중</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2002.11.15</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_computer">
                <p class="jobs_dt_cont_tit">컴퓨터 활용</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>컴퓨터 활용 능력</th>
                                <th>기타 활용 능력</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>문서작성, 표계산, 프리젠테이션</td>
                                <td>멀티미디어 콘텐츠 제작용 프로그램에 대하여 전반적으로 능통합니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_job">
                <p class="jobs_dt_cont_tit">희망직종</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>우선순위</th>
                                <th>희망직종</th>
                                <th>경력여부</th>
                                <th>직무내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>창작, 공연</td>
                                <td>신입</td>
                                <td>직무내용입니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_condition">
                <p class="jobs_dt_cont_tit">희망조건</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>근무지역</th>
                                <th>희망급여</th>
                                <th>고용형태</th>
                                <th>근무시간</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>서울 송파구</td>
                                <td>회사 내규에 따름</td>
                                <td>정규직</td>
                                <td>09:00~18:00</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_disorder">
                <p class="jobs_dt_cont_tit">장애사항</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>장애여부</th>
                                <th>구체적 장애 내용</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>비장애</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_etc">
                <p class="jobs_dt_cont_tit">기타사항</p>
                <div class="jobs_dt_tb_wrap">
                    <table class="board_tb tb_lay_fix">
                        <thead>
                            <tr>
                                <th>운전여부</th>
                                <th>차량소유여부</th>
                                <th>검색키워드</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>가능</td>
                                <td>있음</td>
                                <td>검색키워드입니다.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!--jobs_dt_cont-->

            <div class="jobs_dt_cont person_dt_self">
                <p class="jobs_dt_cont_tit">자기소개서</p>
                <div class="jobs_dt_expl_wrap">
                    자기소개서 설명란 입니다.
                </div>
            </div><!--jobs_dt_cont-->

            <div class="person_dt_proof">
                <p class="person_dt_proof_txt01">위에 입력한 사항은 사실과 틀림이 없음을 확인 합니다.</p>
                <p class="person_dt_proof_txt01">2021년 01월 08일 신청자 : 홍길동</p>
            </div>

            <div class="person_dt_bot_btn_wrap">
                <ul class="person_dt_bot_btn_ul">
                    <li><a href="" class="person_dt_btn_print"></a></li>
                    <li><button type="button" class="btn02 person_dt_btn_scrap"><span class="summary_scrap_icon"></span>스크랩</button></li>
                    <li><button type="button" class="btn02 person_dt_btn_sms"><span class="btn_sms_icon"></span>SMS발송</button></li>
                    <li><button type="button" class="btn02 person_dt_btn_mail"><span class="btn_mail_icon"></span>메일발송</button></li>
                    <li><button type="button" class="btn01 person_dt_btn_proposal" onclick="popUp('person_mag_pop');">인재에게 연락하기</button></li>
                </ul>
            </div>


            <div class="jobs_dt_cont person_dt_relevant-ai">
                <p class="jobs_dt_cont_tit">맞춤 AI 인재 추천</p>
                <div class="person_dt_tb_wrap">
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
                                    <a href="" class="jobs_cname">홍길동</a>
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
                                    <a href="" class="jobs_cname">홍길동</a>
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
                </div>
            </div><!--jobs_dt_cont-->

        </div>
    </div><!--sub_content-->

    <!--인재에게 연락하기 팝업 {-->
    <div id="person_mag_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">인재에게 연락하기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <ul class="person_mag_radio_ul">
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request01">
                                <label for="person_mag_request01">[기업명, 담당자명] OOO님께 면접을 제의합니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request02">
                                <label for="person_mag_request02">[기업명, 담당자명] OOO님을 채용하고 싶습니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request03">
                                <label for="person_mag_request03">[기업명, 담당자명] OOO님의 이력서를 받아보고 싶습니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request04">
                                <label for="person_mag_request04">직접입력</label>
                            </li>
                            <li class="person_mag_request_write_li">
                                <label for="person_mag_request_write" class="sound_only">인재에게 보낼 내용 직접입력</label>
                                <textarea name="" id="person_mag_request_write" class="i-textar i-textar_full" cols="30" rows="4"></textarea>
                            </li>
                        </ul>
                        <div class="person_mag_sel">
                            <ul class="person_mag_sel_ul">
                                <li>
                                    <span class="person_mag_sel_tit person_mag_sel_tit_mt"><label for="person_mag_jobs_select">공고 선택</label></span>
                                    <div class="person_mag_sel_txt">
                                        <select name="" id="person_mag_jobs_select" class="i-select">
                                            <option value="">진행 중인 채용 공고를 선택합니다.</option>
                                        </select>
                                    </div>
                                </li>
                                <li>
                                    <span class="person_mag_sel_tit"><label for="person_mag_sel_chk_y">알림 방법</label></span>
                                    <div class="person_mag_sel_txt">
                                        <ul class="person_mag_sel_chk_ul">
                                            <li class="i-checks">
                                                <input type="checkbox" name="" id="person_mag_method_kakao">
                                                <label for="person_mag_method_kakao">카카오톡 알림톡</label>
                                            </li>
                                            <li class="i-checks">
                                                <input type="checkbox" name="" id="person_mag_method_email">
                                                <label for="person_mag_method_email">이메일</label>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <button type="button" class="btn01 person_mag_pop_submit">전송하기</button>
                    </form>
                </div>
            </div>
        </div>
        <!--} 인재에게 연락하기 팝업-->

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
                                            <th><label for="">제목</label></th>
                                            <td><input type="text" class="i-inpt i-inpt_full"></td>
                                        </tr>
                                        <tr>
                                            <th><label for="">내용</label></th>
                                            <td><textarea name="" id="" class="i-textar i-textar_full" cols="30" rows="15"></textarea></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <button type="button" id="" class="btn01 inq_talk_pop_submit">문의하기</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--} 1:1톡 문의 팝업-->

        <!--입사 지원 완료 팝업 {-->
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
                        <a href="" id="" class="btn01 jobs_apply_compl_btn">입사지원현황</a>
                    </div>
                </div>
            </div>
        </div>
        <!--} 입사 지원 완료 팝업-->
    </div><!--sub-->
</div>
<!--} Contents-->
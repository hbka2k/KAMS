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

<div id="mypage_announce" class="sub mypage">
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
                        <li class="on">
                            <a href="javascript:void(0);">채용공고 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
                                <li class="on"><a href="/sub/mypage/com_recruit_add.do">채용공고 등록</a></li>
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
                        <li>
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
                        <p class="mp_title">채용공고 수정</p>
                        <span class="mp_title_required noto"><b>*</b> 필수입력사항입니다.</span>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_annc_subj_sec">
                            <label for="mp_annc_subj" class="mp_sec_tit">채용 제목 <span class="required">*</span></label>
                            <div class="mp_sec_cont">
                                <input type="text" name="" id="mp_annc_subj" class="i-inpt i-inpt_full" placeholder="채용공고 제목을 입력하세요.">
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_annc_summary_sec">
                            <p class="mp_sec_tit">모집요강</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>채용공고 모집요강 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">희망장르<span class="required">*</span></span></th>
                                                <td>
                                                    <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_genre_pop')">장르 선택</button>
                                                    <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
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
                                                            <span>안무가</span>
                                                            <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">업종선택<span class="required">*</span></span></th>
                                                <td>
                                                    <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_sector_pop')">업종 선택</button>
                                                    <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
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
                                                            <span>안무가</span>
                                                            <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">지역선택<span class="required">*</span></span></th>
                                                <td>
                                                    <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_wkplace_pop')">지역 선택</button>
                                                    <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
                                                        <li>
                                                            <span>서울</span>
                                                            <span>전체</span>
                                                            <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                        </li>
                                                        <li>
                                                            <span>경기</span>
                                                            <span>성남시</span>
                                                            <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">키워드</span></th>
                                                <td>
                                                    <!--최소 1개이상 입력-->
                                                    <ul class="mp_resume_keyword_box">
                                                        <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                        <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                        <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                        <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                        <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="mp_annc_condition_job">직무내용<span class="required">*</span></label></th>
                                                <td>
                                                    <textarea name="" id="mp_annc_condition_job" class="i-textar i-textar_full"></textarea>
                                                    <span class="txtar_byte_num"></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">경력조건<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_career01" value="">
                                                            <label for="mp_annc_condition_career01">신입</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_career02" value="">
                                                            <label for="mp_annc_condition_career02">경력</label>
                                                            (최소 <input type="text" name="" class="i-inpt mp_annc_condition_career_year01"> 년 이상)
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_career03" value="">
                                                            <label for="mp_annc_condition_career03">경력무관</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="mp_annc_edu_sel01">학력조건<span class="required">*</span></label></th>
                                                <td>
                                                    <select name="" id="mp_annc_edu_sel01" class="i-select mp_annc_edu_sel">
                                                        <option value="">선택</option>
                                                        <option value="">학력무관</option>
                                                        <option value="">중학교</option>
                                                        <option value="">고등학교</option>
                                                        <option value="">대학교(2~3년)</option>
                                                        <option value="">대학교(4년)</option>
                                                        <option value="">대학원(석사)</option>
                                                    </select>
                                                    <select name="" id="mp_annc_edu_sel02" class="i-select mp_annc_edu_sel">
                                                        <option value="">선택</option>
                                                        <option value="">졸업</option>
                                                        <option value="">졸업예정</option>
                                                        <option value="">재학</option>
                                                        <option value="">수료</option>
                                                        <option value="">휴학</option>
                                                        <option value="">중퇴</option>
                                                    </select> 이상
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="mp_annc_employtype01">고용형태<span class="required">*</span></label></th>
                                                <td>
                                                    <ul class="mp_resume_radio">
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype01" value="">
                                                            <label for="mp_annc_employtype01">정규직</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype02" value="">
                                                            <label for="mp_annc_employtype02">계약직</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype03" value="">
                                                            <label for="mp_annc_employtype03">시간선택제</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype04" value="">
                                                            <label for="mp_annc_employtype04">인턴</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype05" value="">
                                                            <label for="mp_annc_employtype05">파견근로</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype06" value="">
                                                            <label for="mp_annc_employtype06">대체인력</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_employtype" id="mp_annc_employtype07" value="">
                                                            <label for="mp_annc_employtype07">프리랜서</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="">모집인원<span class="required">*</span></label></th>
                                                <td>
                                                    <input type="text" name="" class="i-inpt"> 명
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="">상시근로자수<span class="required">*</span></label></th>
                                                <td>
                                                    <input type="text" name="" class="i-inpt"> 명
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">회사주소<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_fm_addr_ul">
                                                        <li>
                                                            <button type="button" class="mp_resume_fm_btn mp_resume_addr_btn">우편번호 찾기</button>
                                                            <input type="text" name="" id="mp_resume_addr1" value="03082" class="i-inpt">
                                                            <input type="text" name="" id="mp_resume_addr2" value="서울시 종로구 대학로" class="i-inpt">
                                                        </li>
                                                        <li>
                                                            <input type="text" name="" id="mp_resume_addr3" class="i-inpt" placeholder="상세주소를 입력하세요.">
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">근무지주소<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_radio mp_annc_addr_optbox">
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_addr_opt" id="mp_annc_addr_opt01" value="">
                                                            <label for="mp_annc_addr_opt01">회사주소와  동일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_addr_opt" id="mp_annc_addr_opt02" value="">
                                                            <label for="mp_annc_addr_opt02">사업체 지사</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_addr_opt" id="mp_annc_addr_opt03" value="">
                                                            <label for="mp_annc_addr_opt03">기타 다른 사업체</label>
                                                        </li>
                                                    </ul>
                                                    <ul class="mp_resume_fm_addr_ul">
                                                        <li>
                                                            <button type="button" class="mp_resume_fm_btn mp_resume_addr_btn">우편번호 찾기</button>
                                                            <input type="text" name="" id="mp_resume_addr1" value="03082" class="i-inpt">
                                                            <input type="text" name="" id="mp_resume_addr2" value="서울시 종로구 대학로" class="i-inpt">
                                                        </li>
                                                        <li>
                                                            <input type="text" name="" id="mp_resume_addr3" class="i-inpt" placeholder="상세주소를 입력하세요.">
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">인근전철역</span></th>
                                                <td>
                                                    <select name="" id="" class="i-select">
                                                        <option value="">지역</option>
                                                    </select>
                                                    <select name="" id="" class="i-select">
                                                        <option value="">호선</option>
                                                    </select>
                                                    <select name="" id="" class="i-select">
                                                        <option value="">역명</option>
                                                    </select>
                                                    <input type="text" name="" id="mp_annc_subway_exit" class="i-inpt" placeholder="출구번호 및 거리">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_annc_summary_sec">
                            <p class="mp_sec_tit">근무조건</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>채용공고 근무조건 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">급여조건<span class="required">*</span></span></th>
                                                <td>
                                                    <select name="" id="mp_annc_paytype" class="i-select">
                                                        <option value="">선택</option>
                                                        <option value="">연봉</option>
                                                        <option value="">월급</option>
                                                        <option value="">일급</option>
                                                        <option value="">시급</option>
                                                    </select>
                                                    <input type="text" name="" id="mp_annc_pay" class="i-inpt" placeholder="최소급여"> 만원 ~
                                                    <input type="text" name="" id="mp_annc_pay" class="i-inpt" placeholder="최대급여"> 만원

                                                    <ul class="mp_annc_pay_chkbox">
                                                        <li>
                                                            <div class="i-checks">
                                                                <input type="checkbox" name="" id="mp_annc_pay_chk01">
                                                                <label for="mp_annc_pay_chk01">회사 내규에 따름</label>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="i-checks">
                                                                <input type="checkbox" name="" id="mp_annc_pay_chk02">
                                                                <label for="mp_annc_pay_chk02">면접 후 결정</label>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">근무형태<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_radio">
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk01" value="">
                                                            <label for="mp_annc_wktype_chk01">주5일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk02" value="">
                                                            <label for="mp_annc_wktype_chk02">주6일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk03" value="">
                                                            <label for="mp_annc_wktype_chk03">주4일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk04" value="">
                                                            <label for="mp_annc_wktype_chk04">주3일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk05" value="">
                                                            <label for="mp_annc_wktype_chk05">주2일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk06" value="">
                                                            <label for="mp_annc_wktype_chk06">주1일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk07" value="">
                                                            <label for="mp_annc_wktype_chk07">주7일</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_wktype_chk" id="mp_annc_wktype_chk08" value="">
                                                            <label for="mp_annc_wktype_chk08">격일근무</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">근무시간<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_fm_add_inf ml0">
                                                        <li>
                                                            <!--(normal.js) 24시간(30분단위) 셀렉트-->
                                                            <select name="" id="" class="i-select time-sel mp_resume_condition_wktime">
                                                                <option value="">시작시간</option>
                                                                <option val="00:00">(자정) 00:00</option><option val="00:30">(오전) 00:30</option><option val="01:00">(오전) 01:00</option><option val="01:30">(오전) 01:30</option><option val="02:00">(오전) 02:00</option><option val="02:30">(오전) 02:30</option><option val="03:00">(오전) 03:00</option><option val="03:30">(오전) 03:30</option><option val="04:00">(오전) 04:00</option><option val="04:30">(오전) 04:30</option><option val="05:00">(오전) 05:00</option><option val="05:30">(오전) 05:30</option><option val="06:00">(오전) 06:00</option><option val="06:30">(오전) 06:30</option><option val="07:00">(오전) 07:00</option><option val="07:30">(오전) 07:30</option><option val="08:00">(오전) 08:00</option><option val="08:30">(오전) 08:30</option><option val="09:00">(오전) 09:00</option><option val="09:30">(오전) 09:30</option><option val="10:00">(오전) 10:00</option><option val="10:30">(오전) 10:30</option><option val="11:00">(오전) 11:00</option><option val="11:30">(오전) 11:30</option><option val="12:00">(오후) 12:00</option><option val="12:30">(오후) 12:30</option><option val="13:00">(오후) 13:00</option><option val="13:30">(오후) 13:30</option><option val="14:00">(오후) 14:00</option><option val="14:30">(오후) 14:30</option><option val="15:00">(오후) 15:00</option><option val="15:30">(오후) 15:30</option><option val="16:00">(오후) 16:00</option><option val="16:30">(오후) 16:30</option><option val="17:00">(오후) 17:00</option><option val="17:30">(오후) 17:30</option><option val="18:00">(오후) 18:00</option><option val="18:30">(오후) 18:30</option><option val="19:00">(오후) 19:00</option><option val="19:30">(오후) 19:30</option><option val="20:00">(오후) 20:00</option><option val="20:30">(오후) 20:30</option><option val="21:00">(오후) 21:00</option><option val="21:30">(오후) 21:30</option><option val="22:00">(오후) 22:00</option><option val="22:30">(오후) 22:30</option><option val="23:00">(오후) 23:00</option><option val="23:30">(오후) 23:30</option></select>
                                                        </li>
                                                        <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                        <li>
                                                            <!--(normal.js) 24시간(30분단위) 셀렉트-->
                                                            <select name="" id="" class="i-select time-sel mp_resume_condition_wktime">
                                                                <option value="">종료시간</option>
                                                                <option val="00:00">(자정) 00:00</option><option val="00:30">(오전) 00:30</option><option val="01:00">(오전) 01:00</option><option val="01:30">(오전) 01:30</option><option val="02:00">(오전) 02:00</option><option val="02:30">(오전) 02:30</option><option val="03:00">(오전) 03:00</option><option val="03:30">(오전) 03:30</option><option val="04:00">(오전) 04:00</option><option val="04:30">(오전) 04:30</option><option val="05:00">(오전) 05:00</option><option val="05:30">(오전) 05:30</option><option val="06:00">(오전) 06:00</option><option val="06:30">(오전) 06:30</option><option val="07:00">(오전) 07:00</option><option val="07:30">(오전) 07:30</option><option val="08:00">(오전) 08:00</option><option val="08:30">(오전) 08:30</option><option val="09:00">(오전) 09:00</option><option val="09:30">(오전) 09:30</option><option val="10:00">(오전) 10:00</option><option val="10:30">(오전) 10:30</option><option val="11:00">(오전) 11:00</option><option val="11:30">(오전) 11:30</option><option val="12:00">(오후) 12:00</option><option val="12:30">(오후) 12:30</option><option val="13:00">(오후) 13:00</option><option val="13:30">(오후) 13:30</option><option val="14:00">(오후) 14:00</option><option val="14:30">(오후) 14:30</option><option val="15:00">(오후) 15:00</option><option val="15:30">(오후) 15:30</option><option val="16:00">(오후) 16:00</option><option val="16:30">(오후) 16:30</option><option val="17:00">(오후) 17:00</option><option val="17:30">(오후) 17:30</option><option val="18:00">(오후) 18:00</option><option val="18:30">(오후) 18:30</option><option val="19:00">(오후) 19:00</option><option val="19:30">(오후) 19:30</option><option val="20:00">(오후) 20:00</option><option val="20:30">(오후) 20:30</option><option val="21:00">(오후) 21:00</option><option val="21:30">(오후) 21:30</option><option val="22:00">(오후) 22:00</option><option val="22:30">(오후) 22:30</option><option val="23:00">(오후) 23:00</option><option val="23:30">(오후) 23:30</option></select>
                                                        </li>
                                                    </ul>
                                                    <div class="mp_annc_week_wktime">주 <input type="text" name="" class="i-inpt"> 시간</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">사회보험</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_insurance01" value="">
                                                            <label for="mp_annc_insurance01">국민연금</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_insurance02" value="">
                                                            <label for="mp_annc_insurance02">건강보험</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_insurance03" value="">
                                                            <label for="mp_annc_insurance03">고용보험</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_insurance04" value="">
                                                            <label for="mp_annc_insurance04">산재보험</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">퇴직금 지급 방법<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_radio">
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_severance_chk" id="mp_annc_severance_chk01" value="">
                                                            <label for="mp_annc_severance_chk01">퇴직금</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_severance_chk" id="mp_annc_severance_chk02" value="">
                                                            <label for="mp_annc_severance_chk02">퇴직연금</label>
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_severance_chk" id="mp_annc_severance_chk03" value="">
                                                            <label for="mp_annc_severance_chk03">해당없음</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_annc_treat_sec">
                            <p class="mp_sec_tit">우대사항</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>채용공고 우대사항 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">우대전공</span></th>
                                                <td>
                                                    <button type="button" class="mp_resume_pop_btn" onclick="popUp('person_major_pop')">전공선택</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">우대자격</span></th>
                                                <td>
                                                    <button type="button" class="mp_resume_pop_btn" onclick="popUp('license_pop')">자격찾기</button>
                                                    <div class="mp_annc_license_inptbox">
                                                        기타자격면허<input type="text" name="" id="mp_annc_license_inpt" class="i-inpt">
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">우대조건</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_chk01" value="">
                                                            <label for="mp_annc_condition_chk01">청년층</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_chk02" value="">
                                                            <label for="mp_annc_condition_chk02">장년층</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_condition_chk03" value="">
                                                            <label for="mp_annc_condition_chk03">여성</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">기타우대사항</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_etc_condition_chk01" value="">
                                                            <label for="mp_annc_etc_condition_chk01">영어우수자</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_etc_condition_chk02" value="">
                                                            <label for="mp_annc_etc_condition_chk02">차량소지자</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_etc_condition_chk03" value="">
                                                            <label for="mp_annc_etc_condition_chk03">운전가능자</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">장애인채용</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_disorder_chk01" value="">
                                                            <label for="mp_annc_disorder_chk01">장애인병행채용</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_disorder_chk02" value="">
                                                            <label for="mp_annc_disorder_chk02">장애인 우대</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_disorder_chk03" value="">
                                                            <label for="mp_annc_disorder_chk03">장애인만 채용</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">컴퓨터 활용 능력</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_computer_chk01" value="">
                                                            <label for="mp_annc_computer_chk01">문서작성</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_computer_chk02" value="">
                                                            <label for="mp_annc_computer_chk02">표계산</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_computer_chk03" value="">
                                                            <label for="mp_annc_computer_chk03">프리젠테이션</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_computer_chk04" value="">
                                                            <label for="mp_annc_computer_chk04">회계프로그램</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_computer_chk05" value="">
                                                            <label for="mp_annc_computer_chk05">기타</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">복리후생</span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_benefit_chk01" value="">
                                                            <label for="mp_annc_benefit_chk01">통근버스</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_benefit_chk02" value="">
                                                            <label for="mp_annc_benefit_chk02">기숙사</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_benefit_chk03" value="">
                                                            <label for="mp_annc_benefit_chk03">차량유지비</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">기타사항</span></th>
                                                <td>
                                                    <input type="text" name="" class="i-inpt i-inpt_full">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_annc_apply_sec">
                            <p class="mp_sec_tit">전형방법</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>채용공고 전형방법 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">접수마감일<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_radio">
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_deadline_chk" id="mp_annc_deadline_chk01" value="">
                                                            <label for="mp_annc_deadline_chk01">마감일지정</label>
                                                            <input type="text" name="" id="mp_annc_deadline_inpt" class="date-inpt mp_resume_date-inpt hasDatepicker">
                                                        </li>
                                                        <li class="i-radio">
                                                            <input type="radio" name="mp_annc_deadline_chk" id="mp_annc_deadline_chk02" value="">
                                                            <label for="mp_annc_deadline_chk02">채용시까지 (최대 2개월 이내)</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">전형방법<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_apply_chk01" value="">
                                                            <label for="mp_annc_apply_chk01">서류</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_apply_chk02" value="">
                                                            <label for="mp_annc_apply_chk02">면접</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_apply_chk03" value="">
                                                            <label for="mp_annc_apply_chk03">필기</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_apply_chk04" value="">
                                                            <label for="mp_annc_apply_chk04">기타</label>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">접수방법<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk01" value="">
                                                            <label for="mp_annc_register_chk01">아트모아</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk02" value="">
                                                            <label for="mp_annc_register_chk02">이메일</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk03" value="">
                                                            <label for="mp_annc_register_chk03">우편</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk04" value="">
                                                            <label for="mp_annc_register_chk04">팩스</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk05" value="">
                                                            <label for="mp_annc_register_chk05">방문</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_register_chk06" value="">
                                                            <label for="mp_annc_register_chk06">기타</label>
                                                            <input type="text" name="" class="i-inpt">
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">제출서류<span class="required">*</span></span></th>
                                                <td>
                                                    <ul class="mp_resume_chk">
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk01" value="">
                                                            <label for="mp_annc_doc_chk01">이력서</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk02" value="">
                                                            <label for="mp_annc_doc_chk02">자기소개서</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk03" value="">
                                                            <label for="mp_annc_doc_chk03">졸업증명서</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk04" value="">
                                                            <label for="mp_annc_doc_chk04">경력증명서</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk05" value="">
                                                            <label for="mp_annc_doc_chk05">포트폴리오</label>
                                                        </li>
                                                        <li class="i-checks">
                                                            <input type="checkbox" name="" id="mp_annc_doc_chk06" value="">
                                                            <label for="mp_annc_doc_chk06">기타</label>
                                                            <input type="text" name="" class="i-inpt">
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_annc_manager_sec">
                            <p class="mp_sec_tit">채용담당자</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>채용공고 채용담당자 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">담당자<span class="required">*</span></span></th>
                                                <td>
                                                    <input type="text" name="" class="i-inpt">
                                                    <span class="mp_annc_exam">입력 예) 홍길동 부장</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">담당부서</span></th>
                                                <td>
                                                    <input type="text" name="" class="i-inpt">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">연락처(택1)<span class="required">*</span></span></th>
                                                <td class="pd0">
                                                    <table class="mp_resume_tb_in">
                                                        <tbody>
                                                            <tr>
                                                                <th><span class="mp_resume_th_txt">연락처</span></th>
                                                                <td>
                                                                    <select name="" class="i-select">
                                                                        <option value="">02</option>
                                                                        <option value="">031</option>
                                                                        <option value="">032</option>
                                                                        <option value="">033</option>
                                                                        <option value="">041</option>
                                                                        <option value="">042</option>
                                                                        <option value="">043</option>
                                                                        <option value="">044</option>
                                                                        <option value="">050</option>
                                                                        <option value="">051</option>
                                                                        <option value="">052</option>
                                                                        <option value="">053</option>
                                                                        <option value="">054</option>
                                                                        <option value="">055</option>
                                                                        <option value="">061</option>
                                                                        <option value="">062</option>
                                                                        <option value="">063</option>
                                                                        <option value="">064</option>
                                                                        <option value="">070</option>
                                                                        <option value="">080</option>
                                                                        <option value="">0303</option>
                                                                        <option value="">0502</option>
                                                                        <option value="">0503</option>
                                                                        <option value="">0504</option>
                                                                        <option value="">0505</option>
                                                                        <option value="">0506</option>
                                                                        <option value="">0507</option>
                                                                    </select>&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" class="i-inpt">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th><span class="mp_resume_th_txt">휴대전화</span></th>
                                                                <td>
                                                                    <select name="" class="i-select">
                                                                        <option value="">010</option>
                                                                        <option value="">011</option>
                                                                        <option value="">016</option>
                                                                        <option value="">017</option>
                                                                        <option value="">018</option>
                                                                        <option value="">019</option>
                                                                    </select>&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" class="i-inpt">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    채용 담당자의 휴대전화 번호를 공개하시겠습니까?
                                                                    <ul class="mp_resume_radio mp_annc_agree_radio">
                                                                        <li class="i-radio">
                                                                            <input type="radio" name="" id="" value="" checked="">
                                                                            <label for="">공개</label>
                                                                        </li>
                                                                        <li class="i-radio">
                                                                            <input type="radio" name="" id="" value="">
                                                                            <label for="">비공개</label>
                                                                        </li>
                                                                    </ul>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">팩스번호</span></th>
                                                <td>
                                                    <select name="" class="i-select">
                                                        <option value="">02</option>
                                                        <option value="">031</option>
                                                        <option value="">032</option>
                                                        <option value="">033</option>
                                                        <option value="">041</option>
                                                        <option value="">042</option>
                                                        <option value="">043</option>
                                                        <option value="">044</option>
                                                        <option value="">050</option>
                                                        <option value="">051</option>
                                                        <option value="">052</option>
                                                        <option value="">053</option>
                                                        <option value="">054</option>
                                                        <option value="">055</option>
                                                        <option value="">061</option>
                                                        <option value="">062</option>
                                                        <option value="">063</option>
                                                        <option value="">064</option>
                                                        <option value="">070</option>
                                                        <option value="">080</option>
                                                        <option value="">0303</option>
                                                        <option value="">0502</option>
                                                        <option value="">0503</option>
                                                        <option value="">0504</option>
                                                        <option value="">0505</option>
                                                        <option value="">0506</option>
                                                        <option value="">0507</option>
                                                    </select>&nbsp;&nbsp;-&nbsp;
                                                    <input type="text" name="" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                    <input type="text" name="" class="i-inpt">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">이메일<span class="required">*</span></span></th>
                                                <td class="pd0">
                                                    <table class="mp_resume_tb_in">
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" name="" id="mp_resume_mail1" class="i-inpt">&nbsp;&nbsp;@&nbsp;
                                                                    <select name="" id="mp_resume_mail2" class="i-select">
                                                                        <option value="">선택</option>
                                                                        <option value="">naver.com</option>
                                                                        <option value="">nate.com</option>
                                                                        <option value="">gmail.com</option>
                                                                        <option value="">hanmail.net</option>
                                                                        <option value="">daum.net</option>
                                                                        <option value="">기타(직접입력)</option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    채용 담당자의 이메일을 공개하시겠습니까?
                                                                    <ul class="mp_resume_radio mp_annc_agree_radio">
                                                                        <li class="i-radio">
                                                                            <input type="radio" name="" id="" value="" checked="">
                                                                            <label for="">공개</label>
                                                                        </li>
                                                                        <li class="i-radio">
                                                                            <input type="radio" name="" id="" value="">
                                                                            <label for="">비공개</label>
                                                                        </li>
                                                                    </ul>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->

                        <div class="mp_resume_btn_wrap">
                            <ul class="mp_resume_btn_ul">
                                <li><button type="button" class="btn02" onclick="javascript:history.back()">뒤로가기</button></li>
                                <li><button type="button" class="btn01">채용공고 수정완료</button></li>
                            </ul>
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div><!--sub_content-->

    <!--자격면허 찾기 팝업 {-->
    <div id="license_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">자격면허 찾기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont mCustomScrollbar _mCS_2 mCS_no_scrollbar"><div id="mCSB_2" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                <div class="popup_cont_inner">
                    <form action="">
                        <div class="license_sch_box cf">
                            <span class="license_sch_subj">자격면허찾기</span>
                            <div class="license_sch_cont">
                                <input type="text" name="" class="i-inpt license_sch_inpt">
                                <button class="license_sch_btn">검색하기</button>
                            </div>
                        </div>

                        <div class="license_tab">
                            <ul class="license_tab_ul child3">
                                <li class="active" rel="license_tab_01"><a href="javascript:void(0)">국가기술자격</a></li>
                                <li rel="license_tab_02"><a href="javascript:void(0)">국가전문자격</a></li>
                                <li rel="license_tab_03"><a href="javascript:void(0)">공인민간자격</a></li>
                            </ul>
                        </div>

                        <div class="license_tab_con_wr">
                            <div id="license_tab_01" class="license_tab_cont" style="display: block;">
                                <div class="license_sch_letter_cont">
                                    <ul class="license_sch_letter_ul">
                                        <li class="license_sch_letter_act"><a href="">ㄱ</a></li>
                                        <li><a href="">ㄴ</a></li>
                                        <li><a href="">ㄷ</a></li>
                                        <li><a href="">ㄹ</a></li>
                                        <li><a href="">ㅁ</a></li>
                                        <li><a href="">ㅂ</a></li>
                                        <li><a href="">ㅅ</a></li>
                                        <li><a href="">ㅇ</a></li>
                                        <li><a href="">ㅈ</a></li>
                                        <li><a href="">ㅊ</a></li>
                                        <li><a href="">ㅋ</a></li>
                                        <li><a href="">ㅌ</a></li>
                                        <li><a href="">ㅍ</a></li>
                                        <li><a href="">ㅎ</a></li>
                                        <li><a href="">기타</a></li>
                                    </ul>
                                </div>
                                <div class="license_sch_option_cont">
                                    <ul class="license_sch_option_ul">
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기능사1급</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기술사(수학응용)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기능장</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기술사(정보처리)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">정보처리기능사</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">정보처리산업기사</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="license_sch_txt_wr">
                                    <p class="license_sch_txt">※ “[미관리]”로 표기된 자격은 아트모아에서 관리되지 않거나 실제 폐지된 자격을 의미합니다.</p>
                                    <p class="license_sch_txt">※ “[미관리]”로 표기된 자격을 입력하시고자 하는 경우, 기타자격 항목에 작성하여 주시기 바랍니다.</p>
                                </div>
                            </div>
                            <button type="button" class="btn01 license_btn">적용하기</button>
                        </div>
                    </form>
                </div>
            </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
        </div>
    </div>
    <!--} 자격면허 찾기 팝업-->

    <!--장르 선택 팝업 {-->
    <div id="jobs_genre_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">장르 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont mCustomScrollbar _mCS_3 mCS_no_scrollbar"><div id="mCSB_3" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
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

            <div class="popup_cont mCustomScrollbar _mCS_4 mCS_no_scrollbar"><div id="mCSB_4" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
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

            <div class="popup_cont mCustomScrollbar _mCS_5 mCS_no_scrollbar"><div id="mCSB_5" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_5_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_5_scrollbar_vertical" class="mCSB_scrollTools mCSB_5_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_5_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
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

            <div class="popup_cont mCustomScrollbar _mCS_6 mCS_no_scrollbar"><div id="mCSB_6" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_6_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_6_scrollbar_vertical" class="mCSB_scrollTools mCSB_6_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_6_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
        </div>
    </div>
    <!--} 전공 선택 팝업-->
</div>
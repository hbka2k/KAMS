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

<div id="signup_form" class="sub signup">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">회원가입</p>
            <div class="signup_step_box">
                <ul class="signup_step_ul">
                    <li>
                        <div class="signup_step_sym step_sym01"></div>
                        <p class="signup_step_txt">회원유형</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym02"></div>
                        <p class="signup_step_txt">약관동의</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym03"></div>
                        <p class="signup_step_txt">본인인증</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym04"></div>
                        <p class="signup_step_txt">부모님인증</p>
                    </li>
                    <li class="active">
                        <div class="signup_step_sym step_sym05"></div>
                        <p class="signup_step_txt">회원정보입력</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym06"></div>
                        <p class="signup_step_txt">가입완료</p>
                    </li>
                </ul>
            </div>

            <div class="signup_cont step05">
                <p class="signup_cont_title">회원정보입력</p>
                <div class="signup_cont_wrap">
                    <div class="signup_fm_tb_wrap">
                        <form action="">
                            <div class="signup_fm_sec">
                                <p class="signup_fm_sec_tit">아이디/비밀번호</p>
                                <table class="signup_fm_tb">
                                    <caption>회원가입 아이디, 비밀번호 입력</caption>
                                    <tbody>
                                        <tr>
                                            <th><label for="signup_id">아이디<span class="required">*</span></label></th>
                                            <td>
                                                <div class="signup_fm_name_fs0">
                                                    <input type="text" name="" id="signup_id" class="i-inpt">
                                                    <button type="button" class="signup_fm_btn">아이디 중복확인</button>
                                                    <span class="signup_fm_cau">영문(대문자) 또는 영문(소문자)와 숫자 조합하여 6-24자 이내로 입력하세요.</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="signup_pw">비밀번호<span class="required">*</span></label></th>
                                            <td>
                                                <input type="password" name="" id="signup_pw" class="i-inpt">
                                                <span class="signup_fm_cau">비밀번호는 영문(대/소문자)과 숫자, 특수문자 총 3가지 이상의 종류로 조합하여 8-24 이내로 입력하세요.</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="signup_pw_re">비밀번호 확인<span class="required">*</span></label></th>
                                            <td>
                                                <input type="password" name="" id="signup_pw_re" class="i-inpt">
                                                <span class="signup_fm_cau">비밀번호를 다시 한번 입력해주세요.</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="signup_pw_re">SNS 간편로그인</label></th>
                                            <td>
                                                <ul class="signup_sns_ul">
                                                    <li id="signup_sns_naver">
                                                        <a href="">
                                                            <img src="/resources/images/login_naver_icon.png" alt="">
                                                            <span>네이버 로그인 연동</span>
                                                        </a>
                                                    </li>
                                                    <li id="signup_sns_kakao">
                                                        <a href="">
                                                            <img src="/resources/images/login_kakao_icon.png" alt="">
                                                            <span>카카오 로그인 연동</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="signup_fm_sec">
                                <p class="signup_fm_sec_tit">회원정보</p>
                                <table class="signup_fm_tb">
                                    <caption>회원가입 회원정보 입력</caption>
                                    <tbody>
                                        <tr>
                                            <th><label for="signup_name">이름</label></th>
                                            <td><input type="text" name="" id="signup_name" class="i-inpt disabled" value="홍길동" disabled=""></td>
                                        </tr>
                                        <tr>
                                            <th><label for="signup_tel1">전화번호<span class="required">*</span></label></th>
                                            <td>
                                                <select name="" id="signup_tel1" class="i-select">
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
                                                <input type="text" name="" id="signup_tel2" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                <input type="text" name="" id="signup_tel3" class="i-inpt">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="signup_cell1">휴대전화 번호<span class="required">*</span></label></th>
                                            <td>
                                                <select name="" id="signup_cell1" class="i-select">
                                                    <option value="">010</option>
                                                    <option value="">011</option>
                                                    <option value="">016</option>
                                                    <option value="">017</option>
                                                    <option value="">018</option>
                                                    <option value="">019</option>
                                                </select>&nbsp;&nbsp;-&nbsp;
                                                <input type="text" name="" id="signup_cell2" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                <input type="text" name="" id="signup_cell3" class="i-inpt">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="">이메일<span class="required">*</span></label></th>
                                            <td>
                                                <input type="text" name="" id="signup_mail1" class="i-inpt">&nbsp;&nbsp;@&nbsp;
                                                <input type="text" name="" id="signup_mail2" class="i-inpt disabled i-mail_inpt" disabled="">
                                                <select name="" id="signup_mail3" class="i-select i-mail_sel">
                                                    <option value="">선택</option>
                                                    <option value="">naver.com</option>
                                                    <option value="">nate.com</option>
                                                    <option value="">gmail.com</option>
                                                    <option value="">hanmail.net</option>
                                                    <option value="">daum.net</option>
                                                    <option value="etc_w">기타(직접입력)</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="">주소<span class="required">*</span></label></th>
                                            <td>
                                                <ul>
                                                    <li class="signup_fm_addr_fs0">
                                                        <input type="text" name="" id="signup_addr1" class="i-inpt">
                                                        <button type="button" class="signup_fm_btn" onclick="popUp('address_pop')">우편번호 검색</button>
                                                    </li>
                                                    <li>
                                                        <input type="text" name="" id="signup_addr2" class="i-inpt">
                                                    </li>
                                                    <li>
                                                        <input type="text" name="" id="signup_addr3" class="i-inpt">
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="signup_fm_sec">
                                <p class="signup_fm_sec_tit">관심 장르/업종</p>
                                <table class="signup_fm_tb">
                                    <caption>관심 장르,업종 입력</caption>
                                    <tbody>
                                        <tr>
                                            <th><label for="">관심 장르</label></th>
                                            <td>
                                                <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_genre_pop')">장르 선택</button>
                                                <ul class="signup_hope_ul">
                                                    <li>
                                                        <span>공연예술</span>
                                                        <span>연극뮤지컬분야</span>
                                                        <span>자영예술업</span>
                                                        <span>연극 및 뮤지컬 배우</span>
                                                        <button type="button" id="" class="signup_hope_remove">삭제</button>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="">관심 업종</label></th>
                                            <td>
                                                <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_sector_pop')">업종 선택</button>
                                                <ul class="signup_hope_ul">
                                                    <li>
                                                        <span>자영예술업</span>
                                                        <span>연극뮤지컬분야</span>
                                                        <span>연극 및 뮤지컬 배우</span>
                                                        <button type="button" id="" class="signup_hope_remove">삭제</button>
                                                    </li>
                                                    <li>
                                                        <span>자영예술업</span>
                                                        <span>연극뮤지컬분야</span>
                                                        <span>연극 및 뮤지컬 배우</span>
                                                        <button type="button" id="" class="signup_hope_remove">삭제</button>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="signup_fm_sec">
                                <p class="signup_fm_sec_tit">수신여부 설정</p>
                                <table class="signup_fm_tb">
                                    <caption>회원가입 수신여부 설정</caption>
                                    <tbody>
                                        <tr>
                                            <th><label for="">휴대폰 문자 서비스</label></th>
                                            <td>
                                                <p class="signup_fm_raio_txt">휴대폰 문자 서비스를 받으시겠습니까?</p>
                                                <ul class="signup_fm_raio">
                                                    <li class="i-radio">
                                                        <input type="radio" name="signup_fm_sms" id="signup_fm_sms_y" value="" checked="">
                                                        <label for="signup_fm_sms_y">예</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="signup_fm_sms" id="signup_fm_sms_n" value="">
                                                        <label for="signup_fm_sms_n">아니오</label>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="">메일링 서비스</label></th>
                                            <td>
                                                <p class="signup_fm_raio_txt">아트모아에서 제공하는 취업정보, 이벤트 등 새로운 소식을 받으시겠습니까?</p>
                                                <ul class="signup_fm_raio">
                                                    <li class="i-radio">
                                                        <input type="radio" name="signup_fm_mail" id="signup_fm_mail_y" value="" checked="">
                                                        <label for="signup_fm_mail_y">예</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="signup_fm_mail" id="signup_fm_mail_n" value="">
                                                        <label for="signup_fm_mail_n">아니오</label>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="signup_fm_submit_box">
                                <ul class="signup_fm_submit_ul">
                                    <li><button type="button" id="signup_fm_submit" class="btn01" onclick="location.href='/member/result.do'">가입완료</button></li>
                                    <li><a href="" id="signup_fm_cancle" class="btn02">가입취소</a></li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--필수값 예외처리 팝업{-->
    <div id="signup_required_pop" class="popup_dim alert">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">Alert</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="alert_cont">
                <div class="popup_cont_inner">
                    <div class="alert_pop_msg">
                        OOO 입력오류 입니다. <br>확인 후 다시 입력해 주시기 바랍니다.
                    </div>
                    <ul class="alert_btn_ul">
                        <li><button type="button" class="btn01 alert_pop_btn_ok" onclick="popClose()">확인</button></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--}필수값 예외처리 팝업-->

    <!--장르 선택 팝업 {-->
    <div id="jobs_genre_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">장르 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont mCustomScrollbar _mCS_2 mCS_no_scrollbar"><div id="mCSB_2" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
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

            <div class="popup_cont mCustomScrollbar _mCS_3 mCS_no_scrollbar"><div id="mCSB_3" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
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
            </div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
        </div>
    </div>
    <!--} 업종 선택 팝업-->

    <!-- 우편번호 찾기 팝업 { -->
    <div id="address_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">도로명 주소 찾기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont mCustomScrollbar _mCS_4 mCS_no_scrollbar"><div id="mCSB_4" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 0px;"><div id="mCSB_4_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                <div class="popup_cont_inner">
                    <form action="">
                        <div class="address_sch_box cf">
                            <div class="address_sch_txt_wr">
                                <p class="address_sch_txt">가급적 도로명주소 위주로 입력해 주시고, 검색결과가 많을 경우 “결과 내 재 검색” 체크 후 추가 검색어 입력 후 검색하시면 됩니다.</p>
                                <p class="address_sch_txt">건물명의 경우 체신청 우편물 기준 대량 배달처인 경우에 한해 검색이 가능하여, 건물명이나 아파트 이름을 넣어도 검색이 안되는 경우가 있습니다.</p>
                            </div>
                            <div class="address_comp_sch">
                                <div class="address_comp_sch_box cf">
                                    <span class="address_comp_sch_subj">시도</span>
                                    <div class="address_comp_sch_cont">
                                        <select name="" id="" class="i-select">
                                            <option value="">시/도</option>
                                        </select>
                                        <select name="" id="" class="i-select">
                                            <option value="">시/군/구(전체)</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="address_comp_sch_box_wr cf">
                                    <div class="address_comp_sch_box">
                                        <span class="address_comp_sch_subj">검색어</span>
                                        <div class="address_comp_sch_cont">
                                            <input type="text" name="" class="i-inpt address_comp_sch_inpt">
                                        </div>
                                    </div>
                                    <div class="address_comp_sch_box">
                                        <span class="address_comp_sch_subj">우편번호</span>
                                        <div class="address_comp_sch_cont">
                                            <input type="text" name="" class="i-inpt address_comp_zip_inpt">
                                            <div class="i-checks address_comp_zip_chk_wr">
                                                <input type="checkbox" id="address_comp_zip_chk">
                                                <label for="address_comp_zip_chk">결과 내 재검색</label>
                                            </div>
                                            <button class="address_comp_sch_btn">검색하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="address_tb_wr">
                            <table class="board_tb address_list_tb">
                                <caption>도로명 주소 찾기</caption>
                                <thead>
                                    <tr>
                                        <th class="address_th_chk"></th>
                                        <th class="address_th_zipcode">우편번호</th>
                                        <th class="address_th_address01">도로명주소</th>
                                        <th class="address_th_address02">도로명주소</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk01">
                                                <label for="address_list_chk01"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk02">
                                                <label for="address_list_chk02"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <button type="button" class="btn01 address_sch_btn">적용하기</button>
                    </form>
                </div>
            </div><div id="mCSB_4_scrollbar_vertical" class="mCSB_scrollTools mCSB_4_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_4_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
        </div>
    </div>
    <!-- } 우편번호 찾기 팝업 -->
</div>
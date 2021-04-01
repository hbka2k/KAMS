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
<div id="signup_certify" class="sub signup">
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
                    <li class="active">
                        <div class="signup_step_sym step_sym03"></div>
                        <p class="signup_step_txt">본인인증</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym04"></div>
                        <p class="signup_step_txt">부모님인증</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym05"></div>
                        <p class="signup_step_txt">회원정보입력</p>
                    </li>
                    <li>
                        <div class="signup_step_sym step_sym06"></div>
                        <p class="signup_step_txt">가입완료</p>
                    </li>
                </ul>
            </div>

            <div class="signup_cont step03">
                <p class="signup_cont_title">본인인증<span>아이핀인증 또는 핸드폰인증 중 하나를 선택하여 회원가입을 진행하시기 바랍니다.</span></p>
                <div class="signup_cont_wrap signup_cont_half i-match">
                    <div class="signup_cont_st signup_cont_lt" style="height: 244px;">
                        <p class="signup_cont_st_tit">휴대폰인증</p>
                        <div class="signup_cont_st_cont">
                            가입자의 본인 명의의 휴대폰으로 본인여부를 확인합니다.<br>아래 버튼을 눌러 인증을 진행하시기 바랍니다.
                        </div>
                        <div class="signup_cont_st_btn">
                            <ul class="signup_cont_st_btn_ul">
                                <li><a href="/member/cer_parent.do" class="btn01">휴대폰&nbsp;인증</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="signup_cont_st signup_cont_rt" style="height: 244px;">
                        <p class="signup_cont_st_tit">아이핀(i-PIN) 인증</p>
                        <div class="signup_cont_st_cont">
                            가입자의 본인이 발급받은 아이핀(I-PIN)으로 본인여부를 확인합니다.<br>아래 버튼을 눌러 인증을 진행하시기 바랍니다.
                        </div>
                        <div class="signup_cont_st_btn">
                            <ul class="signup_cont_st_btn_ul">
                                <li><a href="/member/cer_parent.do" class="btn01">아이핀 인증</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
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

<div id="signup_result" class="sub signup">
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
                    <li>
                        <div class="signup_step_sym step_sym05"></div>
                        <p class="signup_step_txt">회원정보입력</p>
                    </li>
                    <li class="active">
                        <div class="signup_step_sym step_sym06"></div>
                        <p class="signup_step_txt">가입완료</p>
                    </li>
                </ul>
            </div>

            <div class="signup_cont step06">
                <div class="signup_cont_wrap">
                    <div class="signup_cont_st">
                        <div class="signup_result_icon"><img src="/resources/images/signup_result_icon.png" alt=""></div>
                        <p class="signup_cont_st_tit">회원가입이 완료되었습니다.</p>
                        <div class="signup_cont_st_cont">
                            모든 회원가입절차가 완료되었습니다.<br>로그인 후 사용해주세요.
                        </div>
                        <div class="signup_cont_st_btn">
                            <ul class="signup_cont_st_btn_ul">
                                <li><a href="/login/login" class="btn01">로그인 화면으로</a></li>
                                <li><a href="/" class="btn02">메인으로</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
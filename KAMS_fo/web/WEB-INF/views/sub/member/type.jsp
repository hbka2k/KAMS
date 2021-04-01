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

<div id="signup_type" class="sub signup">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">회원가입</p>
            <div class="signup_step_box">
                <ul class="signup_step_ul">
                    <li class="active">
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
                    <li>
                        <div class="signup_step_sym step_sym06"></div>
                        <p class="signup_step_txt">가입완료</p>
                    </li>
                </ul>
            </div>

            <div class="signup_cont step01">
                <p class="signup_cont_title">회원유형</p>
                <div class="signup_cont_wrap signup_cont_half i-match">
                    <div class="signup_cont_st signup_cont_lt" style="height: 309px;">
                        <p class="signup_cont_st_tit">개인회원 가입하기</p>
                        <div class="signup_cont_st_cont">
                            <img src="/resources/images/signup_type_img01.png" srcset="/resources/images/signup_type_img01@2x.png 2x,/resources/images/signup_type_img01@3x.png 3x" class="Vector-Smart-Object">
                        </div>
                        <div class="signup_cont_st_btn">
                            <ul class="signup_cont_st_btn_ul">
                                <li><a href="/member/agree.do" class="btn01">14세 이상 회원가입</a></li>
                                <li><a href="/member/agree.do" class="btn01">14세 미만 회원가입</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="signup_cont_st signup_cont_rt" style="height: 309px;">
                        <p class="signup_cont_st_tit">기업회원 가입하기</p>
                        <div class="signup_cont_st_cont">
                            <img src="/resources/images/signup_type_img02.png" srcset="/resources/images/signup_type_img02@2x.png 2x,/resources/images/signup_type_img02@3x.png 3x" class="Vector-Smart-Object">
                        </div>
                        <div class="signup_cont_st_btn">
                            <ul class="signup_cont_st_btn_ul">
                                <li><a href="/member/agree.do" class="btn01">기업회원</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
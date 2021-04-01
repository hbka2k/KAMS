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

<div id="login" class="sub">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">로그인</p>
            <p class="sub_title_expl">아트모아 홈페이지에 오신 것을 환영합니다. <br>로그인 하시면 회원님을 위한 더 많은 서비스를 경험하실 수 있습니다.</p>
            <div class="tab_wrap sub_tab">
                <ul class="tab_wrap_ul child2">
                    <li class="active"><a href="/login/login">개인회원</a></li>
                    <li><a href="/login/login_company">기업회원</a></li>
                </ul>
            </div>

            <div class="login_cont">
                <div class="login_cont_wrap">
                    <form name="" action="">
                        <label for="mb_id" class="sound_only">회원아이디</label>
                        <input type="text" id="mb_id" name="" class="i-inpt login_fm_inpt" placeholder="아이디">
                        <label for="mb_pw" class="sound_only">비밀번호</label>
                        <input type="password" id="mb_pw" name="" class="i-inpt login_fm_inpt" placeholder="비밀번호">
                        <input type="submit" id="login_fm_submit" value="로그인">

                        <div class="login_bot cf">
                            <div id="login_auto">
                                <ul class="login_auto_ul">
                                    <li class="i-checks">
                                        <input type="checkbox" name="" id="login_save_id">
                                        <label for="login_save_id" class="">아이디 저장</label>
                                    </li>
                                    <li class="i-checks">
                                        <input type="checkbox" name="" id="login_auto_login">
                                        <label for="login_auto_login" class="">로그인 유지</label>
                                    </li>
                                </ul>
                            </div>
                            <div id="login_svc">
                                <a href="/member/type.do">회원가입</a>
                                <a href="/login/find.do">아이디/비밀번호찾기</a>
                            </div>
                        </div>
                    </form>

                    <div class="login_sns">
                        <ul class="login_sns_ul">
                            <li id="login_sns_naver">
                                <a href="">
                                    <img src="/resources/images/login_naver_icon.png" alt="">
                                    <span>네이버 아이디로 로그인</span>
                                </a>
                            </li>
                            <li id="login_sns_kakao">
                                <a href="">
                                    <img src="/resources/images/login_kakao_icon.png" alt="">
                                    <span>카카오 아이디로 로그인</span>
                                </a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
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

<div id="find_id_result" class="sub find">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">아이디/비밀번호 찾기</p>
            <div class="find_wrap find_indiv_pw_wrap">
                <p class="find_title">개인회원</p>
                <div class="find_cont">
                    <p class="find_inner_title">아이디 찾기</p>
                    <p class="find_id_rst_txt">회원님의 아이디는&nbsp;[&nbsp;<span id="find_indiv_id">OOOOO</span>&nbsp;]입니다.</p>
                    <ul class="find_inner_btn_ul">
                        <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">비밀번호 찾기</button></li>
                    </ul>
                </div>
            </div>

            <div class="find_wrap find_company_pw_wrap">
                <p class="find_title">사업자회원</p>
                <div class="find_cont">
                    <p class="find_inner_title">아이디 찾기</p>
                    <p class="find_id_rst_txt">회원님의 아이디는&nbsp;[&nbsp;<span id="find_company_id">OOOOO</span>&nbsp;]입니다.</p>
                    <ul class="find_inner_btn_ul">
                        <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">비밀번호 찾기</button></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>


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

<div id="find_pw_result" class="sub find">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">아이디/비밀번호 찾기</p>
            <div class="find_wrap find_indiv_pw_wrap">
                <p class="find_title">비밀번호 찾기</p>

                <form action="">
                    <div class="signup_fm_sec">
                        <table class="signup_fm_tb">
                            <caption>변경할 비밀번호 입력</caption>
                            <tbody>
                                <tr>
                                    <th><label for="find_pw">새 비밀번호<span class="required">*</span></label></th>
                                    <td>
                                        <input type="password" name="" id="find_pw" class="i-inpt">
                                    </td>
                                </tr>
                                <tr>
                                    <th><label for="find_pw_chk">비밀번호 재확인<span class="required">*</span></label></th>
                                    <td>
                                        <input type="password" name="" id="find_pw_chk" class="i-inpt">
                                        <span class="signup_fm_cau">비밀번호를 다시 한번 입력해주세요.</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="find_pw_result_caution">
                        <p class="find_pw_result_caution_title">다음과 같은 비밀번호는 피해주십시오.</p>
                        <ul class="find_pw_result_caution_txt">
                            <li>아이디와 같은 비밀번호</li>
                            <li>주민등록번호, 생일, 학번, 전화번호 등 개인정보와 관련된 숫자</li>
                            <li>연속되거나 동일 반복되는 숫자</li>
                            <li>비밀번호는 영문(대/소문자)과 숫자, 특수문자 중 3가지 이상의 종류로 조합하여 8~24 이내로 입력</li>
                        </ul>
                    </div>

                    <div class="signup_fm_submit_box">
                        <ul class="signup_fm_submit_ul">
                            <li><button type="submit" class="btn01">확인</button></li>
                            <li><a href="" class="btn02">취소</a></li>
                        </ul>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


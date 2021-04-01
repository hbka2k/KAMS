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

<div id="find_account" class="sub find">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">아이디/비밀번호 찾기</p>
            <div class="find_wrap find_indiv_pw_wrap">
                <p class="find_title">개인회원</p>
                <div class="find_cont i-match">
                    <div class="find_inner_lt" style="height: 330px;">
                        <p class="find_inner_title">아이디 찾기</p>
                        <ul class="find_inner_btn_ul">
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_id.do'">아이핀 인증</button></li>
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_id.do'">본인 휴대폰 인증</button></li>
                        </ul>
                    </div>
                    <div class="find_inner_rt" style="height: 330px;">
                        <p class="find_inner_title">비밀번호 찾기</p>
                        <div class="find_inf_inpt">
                            <div class="find_inf_inpt_wr">
                                <label for="find_pw_inf_id">아이디</label>
                                <div class="find_inf_inpt_ct">
                                    <input type="text" name="" id="find_pw_inf_id" class="i-inpt i-inpt_full find_inf_id">
                                </div>
                            </div>
                        </div>
                        <ul class="find_inner_btn_ul">
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">아이핀 인증</button></li>
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">본인 휴대폰 인증</button></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="find_wrap find_company_pw_wrap">
                <p class="find_title">사업자회원</p>
                <div class="find_cont i-match">
                    <div class="find_inner_lt" style="height: 330px;">
                        <p class="find_inner_title">아이디 찾기</p>
                        <div class="find_inf_inpt">
                            <div class="find_inf_inpt_wr">
                                <label for="find_pw_inf_id">사업자 등록번호</label>
                                <div class="find_inf_inpt_ct">
                                    <ul class="find_inf_regi_num_ul">
                                        <li><input type="text" name="" id="find_id_inf_regi_num01" class="i-inpt i-inpt find_inf_regi_num01"></li>
                                        <li class="find_inf_regi_num_bar">-</li>
                                        <li><input type="text" name="" id="find_id_inf_regi_num02" class="i-inpt i-inpt find_inf_regi_num02"></li>
                                        <li class="find_inf_regi_num_bar">-</li>
                                        <li><input type="text" name="" id="find_id_inf_regi_num03" class="i-inpt i-inpt find_inf_regi_num03"></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <ul class="find_inner_btn_ul">
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_id.do'">아이핀 인증</button></li>
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_id.do'">본인 휴대폰 인증</button></li>
                        </ul>
                    </div>
                    <div class="find_inner_rt" style="height: 330px;">
                        <p class="find_inner_title">비밀번호 찾기</p>
                        <div class="find_inf_inpt">
                            <div class="find_inf_inpt_wr">
                                <label for="find_pw_inf_id">아이디</label>
                                <div class="find_inf_inpt_ct">
                                    <input type="text" name="" id="find_pw_inf_id" class="i-inpt i-inpt_full find_inf_id">
                                </div>
                                <label for="find_pw_inf_id">사업자 등록번호</label>
                                <div class="find_inf_inpt_ct">
                                    <ul class="find_inf_regi_num_ul">
                                        <li><input type="text" name="" id="find_pw_inf_regi_num01" class="i-inpt i-inpt find_inf_regi_num01"></li>
                                        <li class="find_inf_regi_num_bar">-</li>
                                        <li><input type="text" name="" id="find_pw_inf_regi_num02" class="i-inpt i-inpt find_inf_regi_num02"></li>
                                        <li class="find_inf_regi_num_bar">-</li>
                                        <li><input type="text" name="" id="find_pw_inf_regi_num03" class="i-inpt i-inpt find_inf_regi_num03"></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <ul class="find_inner_btn_ul">
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">아이핀 인증</button></li>
                            <li><button type="button" class="btn01" onclick="location.href='/login/find_result_pass.do'">본인 휴대폰 인증</button></li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>


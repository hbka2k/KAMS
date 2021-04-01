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
        $(document).ready(function(){
            $(".signup_terms_arrow").click(function(){
                $(this).parents("li").toggleClass("active").find(".signup_terms_title").siblings(".signup_terms_cont").slideToggle(200).parent().siblings().removeClass("active").find(".signup_terms_cont").slideUp(200);
            });

            $("#signup_terms_all").click(function(){
                if($(this).is(":checked") == true){
                    $("input[id^=signup_terms_chk]").prop("checked",true);
                }else{
                    $("input[id^=signup_terms_chk]").prop("checked",false);
                }
            });
        });
    });
</script>

<div id="signup_terms" class="sub signup">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">회원가입</p>
            <div class="signup_step_box">
                <ul class="signup_step_ul">
                    <li>
                        <div class="signup_step_sym step_sym01"></div>
                        <p class="signup_step_txt">회원유형</p>
                    </li>
                    <li class="active">
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

            <div class="signup_cont step02">
                <p class="signup_cont_title">약관동의</p>
                <div class="signup_cont_wrap signup_cont_full">
                    <div class="signup_terms_wrap">
                        <ul class="signup_terms_ul">
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_chk01">
                                        <label for="signup_terms_chk01">이용약관 <span>(필수)</span></label>
                                    </div>
                                    <span class="signup_terms_arrow"><i class="arrow down"></i></span>
                                </div>
                                <div class="signup_terms_cont">이용약관입니다
이용약관입니다
이용약관입니다
이용약관입니다
이용약관입니다
이용약관입니다
이용약관입니다
                                </div>
                            </li>
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_chk02">
                                        <label for="signup_terms_chk02">개인정보 수집 및 이용 <span>(필수)</span></label>
                                    </div>
                                    <span class="signup_terms_arrow"><i class="arrow down"></i></span>
                                </div>
                                <div class="signup_terms_cont">개인정보 수집 및 이용</div>
                            </li>
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_chk03">
                                        <label for="signup_terms_chk03">마케팅 정보 수신 - 이메일 <span>(선택)</span></label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_chk04">
                                        <label for="signup_terms_chk04">마케팅 정보 수신 - SMS/MMS <span>(선택)</span></label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_chk05">
                                        <label for="signup_terms_chk05">개인정보 제 3자 제공 및 위탁사항 이용약관</label>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="signup_terms_title">
                                    <div class="i-checks signup_terms_chk">
                                        <input type="checkbox" name="" id="signup_terms_all">
                                        <label for="signup_terms_all">전체동의</label>
                                    </div>
                                    <a href="/member/cer.do" class="btn01 signup_terms_btn">다음</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
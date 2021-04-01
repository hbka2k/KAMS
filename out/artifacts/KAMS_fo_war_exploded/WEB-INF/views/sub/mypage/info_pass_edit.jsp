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

<div id="mypage_mbedit_pw" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">마이페이지</p>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_indv">
                    <div class="pf_photo_wrap pf_photo_indv">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>홍길동</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">이력서 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/resume_form.do">이력서등록</a></li>
                                <li><a href="/sub/mypage/resume_profile.do">자기소개서등록</a></li>
                                <li><a href="/sub/mypage/resume_setting.do">이력서·자기소개서 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/application_list.do">입사지원현황</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/scrap_list.do">스크랩 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/favorite_list.do">관심기업</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/view_list.do">최근 본 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/calendar.do">나의 캘린더</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/one_to_one_list.do">1:1톡</a>
                        </li>
                        <li class="on">
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">비밀번호 변경</p>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_mbedit_name_sec">
                            <span class="mp_sec_tit">비밀번호 변경</span>

                            <div class="mp_mbedit_tb_wrap">
                                <table class="signup_fm_tb mp_mbedit_tb">
                                    <caption>비밀번로 변경 입력폼</caption>
                                    <tbody>
                                        <tr>
                                            <th><label for="mp_mbedit_pw01">현재 비밀번호<span class="required">*</span></label></th>
                                            <td>
                                                <input type="password" name="" id="mp_mbedit_pw01" class="i-inpt mp_mbedit_pw">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="mp_mbedit_pw02">새로운 비밀번호<span class="required">*</span></label></th>
                                            <td>
                                                <input type="password" name="" id="mp_mbedit_pw02" class="i-inpt mp_mbedit_pw">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="mp_mbedit_pw03">비밀번호 재확인<span class="required">*</span></label></th>
                                            <td>
                                                <input type="password" name="" id="mp_mbedit_pw03" class="i-inpt mp_mbedit_pw">
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
                            <div class="mp_mbedit_submit_box cf">
                                <ul class="mp_mbedit_submit_ul mp_mbedit_submit_ul02">
                                    <li><a href="javascript:history.back();" id="mp_mbedit_cancle" class="btn02">취소</a></li>
                                    <li><button type="submit" id="mp_mbedit_submit" class="btn01">확인</button></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
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

<div id="mypage_mbedit" class="sub mypage">
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
                        <p class="mp_title">회원정보수정</p>
                    </div>

                    <form action="">
                        <div class="mp_mbedit_tb_wrap">
                            <table class="signup_fm_tb mp_mbedit_tb">
                                <caption>회원정보 수정 입력폼</caption>
                                <tbody>
                                    <tr>
                                        <th><label for="signup_id">아이디</label></th>
                                        <td>
                                            <div class="signup_fm_name_fs0">
                                                <input type="text" name="" id="signup_id" class="i-inpt disabled" value="abcd" disabled="">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="signup_name">이름</label></th>
                                        <td>
                                            <input type="text" name="" id="signup_name" class="i-inpt disabled" value="홍길동" disabled="">
                                            <a href="/sub/mypage/info_name.do" class="signup_fm_btn">성명변경</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="">전화번호</label></th>
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
                                        <th><label for="">휴대전화 번호</label></th>
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
                                        <th><label for="">이메일</label></th>
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
                                        <th><label for="">주소</label></th>
                                        <td>
                                            <ul>
                                                <li class="signup_fm_addr_fs0">
                                                    <input type="text" name="" id="signup_addr1" class="i-inpt disabled" disabled="">
                                                    <button type="button" class="signup_fm_btn">우편번호 검색</button>
                                                </li>
                                                <li>
                                                    <input type="text" name="" id="signup_addr2" class="i-inpt disabled" disabled="">
                                                </li>
                                                <li>
                                                    <input type="text" name="" id="signup_addr3" class="i-inpt">
                                                </li>
                                            </ul>
                                        </td>
                                    </tr>
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
                                    <tr>
                                        <th><label for="">SNS 간편로그인</label></th>
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
                        <div class="mp_mbedit_submit_box cf">
                            <ul class="mp_mbedit_submit_ul mp_mbedit_submit_ul01">
                                <li><button type="submit" id="mp_mbedit_submit" class="btn03">회원탈퇴</button></li>
                                <li><a href="/sub/mypage/info_pass_edit.do" id="mp_mbedit_password" class="btn03">비밀번호 변경</a></li>
                            </ul>
                            <ul class="mp_mbedit_submit_ul mp_mbedit_submit_ul02">
                                <li><a href="javascript:history.back();" id="mp_mbedit_cancle" class="btn02">취소</a></li>
                                <li><button type="submit" id="mp_mbedit_submit" class="btn01">확인</button></li>
                            </ul>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
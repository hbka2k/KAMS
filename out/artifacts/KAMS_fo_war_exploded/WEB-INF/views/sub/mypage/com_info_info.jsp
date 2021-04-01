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

<div id="mypage_comp_edit" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <a class="sub_title">마이페이지</a>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_comp">
                    <div class="pf_photo_wrap pf_photo_comp">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>예술경영지원</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">채용공고 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
                                <li><a href="/sub/mypage/com_recruit_add.do">채용공고 등록</a></li>
                                <li><a href="/sub/mypage/com_applicant_list.do">지원자 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_contact_list.do">연락한 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_scrap_list.do">스크랩 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_today_list.do">오늘 본 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_one_to_one_list.do">1:1톡</a>
                        </li>
                        <li class="on">
                            <a href="javascript:void(0);">기업정보</a>
                            <ul class="mp_navi_dp2">
                                <li class="on"><a href="/sub/mypage/com_info_info_pass_check.do">기업정보 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check2.do">회사소개 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check3.do">채용담당자 정보관리</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">기업정보 관리</p>
                    </div>

                    <form action="">
                        <div class="mp_compedit_tb_wrap">
                            <table class="signup_fm_tb mp_compedit_tb">
                                <caption>회원가입 기업정보 입력</caption>
                                <tbody>
                                    <tr>
                                        <th><label for="signup_fm_license">사업자등록번호</label></th>
                                        <td><input type="text" name="" id="signup_fm_license" class="i-inpt disabled" value="123-45-67890" disabled=""></td>
                                    </tr>
                                    <tr>
                                        <th><label for="">회사명<span class="required">*</span></label></th>
                                        <td><input type="text" name="" id="signup_fm_head_company" class="i-inpt disabled" value="예술경영지원센터" disabled=""></td>
                                    </tr>
                                    <tr>
                                        <th><label for="">주소<span class="required">*</span></label></th>
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
                                        <th><label for="signup_fm_ceo">대표자 성명<span class="required">*</span></label></th>
                                        <td>
                                            <input type="text" name="" id="signup_fm_ceo" class="i-inpt">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="">장르 선택<span class="required">*</span></label></th>
                                        <td>
                                            <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_genre_pop')">장르 선택</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="">업종 선택<span class="required">*</span></label></th>
                                        <td>
                                            <button type="button" id="" class="jobs_sch_pop_btn" onclick="popUp('jobs_sector_pop')">업종 선택</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="">주요사업내용<span class="required">*</span></label></th>
                                        <td>
                                            <input type="text" name="" class="i-inpt i-inpt_full">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="signup_fm_employee">근로자 수<span class="required">*</span></label></th>
                                        <td>
                                            <input type="text" name="" id="signup_fm_employee" class="i-inpt"> 명
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="signup_fm_capital">자본금</label></th>
                                        <td>
                                            <input type="text" name="" id="signup_fm_capital" class="i-inpt"> 백만원
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="signup_fm_revenue">연 매출액</label></th>
                                        <td>
                                            <input type="text" name="" id="signup_fm_revenue" class="i-inpt"> 백만원
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><label for="signup_fm_ctype_chk">기업형태<span class="required">*</span></label></th>
                                        <td>
                                            <ul class="signup_fm_raio">
                                                <li class="i-radio">
                                                    <input type="radio" name="signup_fm_ctype_chk" id="signup_fm_ctype_chk01" value="">
                                                    <label for="signup_fm_ctype_chk01">공공</label>
                                                </li>
                                                <li class="i-radio">
                                                    <input type="radio" name="signup_fm_ctype_chk" id="signup_fm_ctype_chk02" value="">
                                                    <label for="signup_fm_ctype_chk02">민간</label>
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
                                <li><a href="/sub/mypage/com_info_info_pass_edit.do" id="mp_mbedit_password" class="btn03">비밀번호 변경</a></li>
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
    </div>
</div>
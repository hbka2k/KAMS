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

<div id="mypage_resume_list" class="sub mypage">
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
                        <li class="on">
                            <a href="javascript:void(0);">이력서 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/resume_form.do">이력서등록</a></li>
                                <li><a href="/sub/mypage/resume_profile.do">자기소개서등록</a></li>
                                <li class="on"><a href="/sub/mypage/resume_setting.do">이력서·자기소개서 관리</a></li>
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
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">이력서·자기소개서 관리</p>
                        <button type="button" class="mp_resume_preview">이력서·자기소개서 미리보기</button>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_resume_list_sec">
                            <span class="mp_sec_tit">나의 이력서</span>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_list_tb_wrap">
                                    <table class="mp_resume_list_tb">
                                        <caption>작성된 이력서 목록</caption>
                                        <tbody>
                                            <!--
                                            *최대 5개까지 저장가능
                                            loop{
                                            -->
                                            <tr>
                                                <th class="mp_resume_list_chk_col">
                                                    <div class="i-radio mp_resume_list_radio">
                                                        <input type="radio" name="mp_resume_list_chk" id="mp_resume_list_chk01" value="" checked="">
                                                        <label for="mp_resume_list_chk01"><span class="sound_only">이력서 항목</span></label>
                                                    </div>
                                                </th>
                                                <td class="mp_resume_list_stat_col">
                                                    <ul class="mp_resume_list_stat">
                                                        <li class="mp_resume_list_stat_basic"><span>기본 이력서</span></li>
                                                        <li class="mp_resume_list_stat_public"><span>공개</span></li>
                                                    </ul>
                                                    <p class="mp_resume_list_title">나의 이력서 제목이 출력됩니다.</p>
                                                    <p class="mp_resume_list_date">2020.12.30</p>
                                                </td>
                                                <td class="mp_resume_list_manage_col">
                                                    <ul class="mp_resume_list_manage">
                                                        <li><a href="javascript:void(0)">복사</a></li>
                                                        <li><a href="/sub/mypage/resume_form_edit.do">수정</a></li>
                                                        <li><a href="javascript:void(0)">삭제</a></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <!--}loop-->
                                            <tr>
                                                <th class="mp_resume_list_chk_col">
                                                    <div class="i-radio mp_resume_list_radio">
                                                        <input type="radio" name="mp_resume_list_chk" id="mp_resume_list_chk02" value="">
                                                        <label for="mp_resume_list_chk02"><span class="sound_only">이력서 항목</span></label>
                                                    </div>
                                                </th>
                                                <td class="mp_resume_list_stat_col">
                                                    <ul class="mp_resume_list_stat">
                                                        <li class="mp_resume_list_stat_nopublic"><span>비공개</span></li>
                                                    </ul>
                                                    <p class="mp_resume_list_title">나의 이력서 제목이 출력됩니다.</p>
                                                    <p class="mp_resume_list_date">2020.12.30</p>
                                                </td>
                                                <td class="mp_resume_list_manage_col">
                                                    <ul class="mp_resume_list_manage">
                                                        <li><a href="javascript:void(0)">복사</a></li>
                                                        <li><a href="/sub/mypage/resume_form_edit.do">수정</a></li>
                                                        <li><a href="javascript:void(0)">삭제</a></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="mp_resume_btn_wrap right">
                                    <ul class="mp_resume_btn_ul">
                                        <li><button type="button" class="btn02">기본 이력서 설정</button></li>
                                        <li><button type="button" class="btn01" onclick="location.href='/sub/mypage/resume_form.do'">새 이력서 작성</button></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                    </form>

                    <form action="">
                        <div class="mp_sec mp_self_introd_list_sec">
                            <span class="mp_sec_tit">나의 자기소개서</span>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_list_tb_wrap">
                                    <table class="mp_resume_list_tb">
                                        <caption>작성된 자기소개서 목록</caption>
                                        <tbody>
                                            <!--
                                            *최대 5개까지 저장가능
                                            loop{
                                            -->
                                            <tr>
                                                <th class="mp_resume_list_chk_col">
                                                    <div class="i-radio mp_resume_list_radio">
                                                        <input type="radio" name="mp_slef_itrod_list_chk" id="mp_slef_itrod_list_chk01" value="" checked="">
                                                        <label for="mp_slef_itrod_list_chk01"><span class="sound_only">자기소개서 항목</span></label>
                                                    </div>
                                                </th>
                                                <td class="mp_resume_list_stat_col">
                                                    <ul class="mp_resume_list_stat">
                                                        <li class="mp_resume_list_stat_basic"><span>기본 자기소개서</span></li>
                                                        <li class="mp_resume_list_stat_public"><span>사용</span></li>
                                                    </ul>
                                                    <p class="mp_resume_list_title">나의 자기소개서 제목이 출력됩니다.</p>
                                                    <p class="mp_resume_list_date">2020.12.30</p>
                                                </td>
                                                <td class="mp_resume_list_manage_col">
                                                    <ul class="mp_resume_list_manage">
                                                        <li><a href="javascript:void(0)">복사</a></li>
                                                        <li><a href="javascript:void(0)">수정</a></li>
                                                        <li><a href="javascript:void(0)">삭제</a></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <!--}loop-->
                                            <tr>
                                                <th class="mp_resume_list_chk_col">
                                                    <div class="i-radio mp_resume_list_radio">
                                                        <input type="radio" name="mp_slef_itrod_list_chk" id="mp_slef_itrod_list_chk02" value="">
                                                        <label for="mp_slef_itrod_list_chk02"><span class="sound_only">자기소개서 항목</span></label>
                                                    </div>
                                                </th>
                                                <td class="mp_resume_list_stat_col">
                                                    <ul class="mp_resume_list_stat">
                                                        <li class="mp_resume_list_stat_nopublic"><span>미사용</span></li>
                                                    </ul>
                                                    <p class="mp_resume_list_title">나의 자기소개서 제목이 출력됩니다.</p>
                                                    <p class="mp_resume_list_date">2020.12.30</p>
                                                </td>
                                                <td class="mp_resume_list_manage_col">
                                                    <ul class="mp_resume_list_manage">
                                                        <li><a href="javascript:void(0)">복사</a></li>
                                                        <li><a href="javascript:void(0)">수정</a></li>
                                                        <li><a href="javascript:void(0)">삭제</a></li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="mp_resume_btn_wrap right">
                                    <ul class="mp_resume_btn_ul">
                                        <li><button type="button" class="btn02">기본 자소서 해제</button></li>
                                        <li><button type="button" class="btn02">기본 자소서 설정</button></li>
                                        <li><button type="button" class="btn01" onclick="location.href='/sub/mypage/resume_profile.do'">새 자소서 작성</button></li>
                                    </ul>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                    </form>

                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
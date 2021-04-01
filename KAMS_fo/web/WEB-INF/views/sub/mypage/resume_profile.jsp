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

<div id="mypage_self_introd" class="sub mypage">
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
                                <li class="on"><a href="/sub/mypage/resume_profile.do">자기소개서등록</a></li>
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
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">자기소개서 등록</p>
                        <span class="mp_title_required noto"><b>*</b> 필수입력사항입니다.</span>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_resume_subj_sec">
                            <label for="mp_resume_subj" class="mp_sec_tit">자기소개서 제목 <span class="required">*</span></label>
                            <div class="mp_sec_cont">
                                <input type="text" name="" id="mp_resume_subj" class="i-inpt i-inpt_full" placeholder="자기소개서 제목을 입력하세요.">
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_self_introd_sec">
                            <p class="mp_sec_tit">항목 및 내용</p>
                            <div id="self_introd_wrap">
                                <!--loop {-->
                                <div id="self_introd_wrap_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>자기소개서 항목 및 내용 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">항목</span></th>
                                                    <td class="pd_tbr0 cf">
                                                        <select name="" class="i-select self_introd_sel mt10">
                                                            <option value="">항목선택</option>
                                                            <option value="">나의가족</option>
                                                            <option value="">학창생활</option>
                                                            <option value="">주요활동</option>
                                                            <option value="">해외경험</option>
                                                            <option value="">훈련자격</option>
                                                            <option value="">경력 및 업무경험</option>
                                                            <option value="">나의 특장점</option>
                                                            <option value="">성격의 장단점</option>
                                                            <option value="">지원동기</option>
                                                            <option value="">입사 후 포부</option>
                                                            <option value="">기타</option>
                                                        </select>

                                                        <input type="text" name="" class="i-inpt mt10 self_introd_expl">

                                                        <div class="mp_control_btnbox">
                                                            <ul class="mp_control_btn_ul">
                                                                <li>
                                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('self_introd_wrap',1)"></button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">내용</span></th>
                                                    <td>
                                                        <textarea name="" class="i-textar i-textar_full" onkeyup="javascript:fnChkLength(this, 10000);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                                <div id="self_introd_wrap_cont2" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>자기소개서 항목 및 내용 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">항목</span></th>
                                                    <td class="pd_tbr0 cf">
                                                        <select name="" class="i-select self_introd_sel mt10">
                                                            <option value="">항목선택</option>
                                                            <option value="">나의가족</option>
                                                            <option value="">학창생활</option>
                                                            <option value="">주요활동</option>
                                                            <option value="">해외경험</option>
                                                            <option value="">훈련자격</option>
                                                            <option value="">경력 및 업무경험</option>
                                                            <option value="">나의 특장점</option>
                                                            <option value="">성격의 장단점</option>
                                                            <option value="">지원동기</option>
                                                            <option value="">입사 후 포부</option>
                                                            <option value="">기타</option>
                                                        </select>

                                                        <input type="text" name="" class="i-inpt mt10 self_introd_expl">

                                                        <div class="mp_control_btnbox">
                                                            <ul class="mp_control_btn_ul">
                                                                <li>
                                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('self_introd_wrap',2)"></button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">내용</span></th>
                                                    <td>
                                                        <textarea name="" class="i-textar i-textar_full" onkeyup="javascript:fnChkLength(this, 10000);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                            </div>

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_r"><button type="button" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('self_introd_wrap')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->

                        <div class="mp_self_introd_use">
                            <div class="mp_resume_tb_wrap">
                                <table class="mp_resume_tb">
                                    <caption>자기소개서 사용여부 체크</caption>
                                    <tbody>
                                        <tr>
                                            <th><span class="mp_resume_th_txt">사용여부</span></th>
                                            <td>
                                                <ul class="mp_resume_chk">
                                                    <li class="i-radio">
                                                        <input type="radio" name="self_introd_use_chk" id="self_introd_use_chk01" value="">
                                                        <label for="self_introd_use_chk01">사용</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="self_introd_use_chk" id="self_introd_use_chk02" value="">
                                                        <label for="self_introd_use_chk02">사용안함</label>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="mp_resume_btn_wrap">
                            <ul class="mp_resume_btn_ul">
                                <li><button type="button" class="btn02" onclick="javascript:history.back()">뒤로가기</button></li>
                                <li><button type="button" class="btn01">자기소개서 저장</button></li>
                            </ul>
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
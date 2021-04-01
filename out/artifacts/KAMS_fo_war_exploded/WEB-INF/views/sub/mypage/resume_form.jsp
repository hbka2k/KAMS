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
    $(document).ready(function(){

        //이미지 업로드 전 초기화
        $(".mp_resume_photo_inpt").click(function(){
            $("#upload_file .upload-hidden").val("");
            $("#upload_file .upload-name").val("");
        });

        //이미지 업로드 미리보기 기능
        var fileTarget = $('.filebox03 .upload-hidden');

        fileTarget.on('change', function(){
            if(window.FileReader){
                var filename = $(this)[0].files[0].name;
            }else{
                var filename = $(this).val().split('/').pop().split('\\').pop();
            };
            $(this).siblings('.upload-name').val(filename);
        });

        var uploadBtn = $('.filebox03 .upload_file_btn');

        uploadBtn.on('click', function(){
            var preview = $(this).parents('#mypage_resume').find('.mp_resume_photo_box .preview-image');
            preview.children('.upload-display').remove();

            if(window.FileReader){
                if (!fileTarget[0].files[0].type.match(/image\//)) return;

                var reader = new FileReader();
                reader.onload = function(e){
                    var src = e.target.result;
                    preview.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
                }
                reader.readAsDataURL(fileTarget[0].files[0]);
            }else{
                fileTarget[0].select();
                fileTarget[0].blur();
                var imgSrc = document.selection.createRange().text;
                preview.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

                var img = fileTarget.siblings('.upload-display').find('img');
                img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";
            }
            $("#upload_pop").fadeOut(100);
        });
    });
</script>

<div id="mypage_resume" class="sub mypage">
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
                                <li class="on"><a href="/sub/mypage/resume_form.do">이력서등록</a></li>
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
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">이력서 등록</p>
                        <span class="mp_title_required noto"><b>*</b> 필수입력사항입니다.</span>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_resume_subj_sec">
                            <label for="mp_resume_subj" class="mp_sec_tit">이력서 제목 <span class="required">*</span></label>
                            <div class="mp_sec_cont">
                                <input type="text" name="" id="mp_resume_subj" class="i-inpt i-inpt_full" placeholder="나를 소개하는 이력서 제목을 입력하세요.">
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_personal_sec">
                            <p class="mp_sec_tit">인적사항</p>
                            <div class="mp_sec_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>이력서 인적사항 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <td class="mp_resume_photo">
                                                    <div class="mp_resume_photo_box">
                                                        <div class="filebox preview-image">
                                                            <div class="mp_resume_photo_inpt" onclick="popUp('upload_pop')">사진파일 등록</div>
                                                            <!-- <label for="mp_resume_photo_inpt">사진파일 등록</label>
                                                            <input type="file" name="" id="mp_resume_photo_inpt" class="upload-hidden">  -->
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="pd0">
                                                    <table class="mp_resume_tb_in">
                                                        <tbody>
                                                            <tr>
                                                                <th><label for="mp_resume_name">이름</label></th>
                                                                <td><input type="text" name="" id="mp_resume_name" value="홍길동" class="i-inpt disabled" disabled=""></td>
                                                            </tr>
                                                            <tr>
                                                                <th><span class="mp_resume_th_txt">성별</span></th>
                                                                <td>
                                                                    <ul class="mp_resume_radio">
                                                                        <li class="i-radio disabled">
                                                                            <input type="radio" name="mp_resume_gender" id="mp_resume_gender_man" value="" disabled="" checked="">
                                                                            <label for="mp_resume_gender_man">남자</label>
                                                                        </li>
                                                                        <li class="i-radio disabled">
                                                                            <input type="radio" name="mp_resume_gender" id="mp_resume_woman" value="" disabled="">
                                                                            <label for="mp_resume_woman">여자</label>
                                                                        </li>
                                                                    </ul>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th><label for="mp_resume_birth">출생년도</label></th>
                                                                <td><input type="text" name="" id="mp_resume_birth" value="1990" class="i-inpt disabled" disabled="">&nbsp;&nbsp;년</td>
                                                            </tr>
                                                            <tr>
                                                                <th><label for="mp_resume_tel1">일반전화<span class="required">*</span></label></th>
                                                                <td>
                                                                    <select name="" id="mp_resume_tel1" class="i-select">
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
                                                                    <input type="text" name="" id="mp_resume_tel2" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" id="mp_resume_tel3" class="i-inpt">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th><label for="mp_resume_cell1">휴대전화<span class="required">*</span></label></th>
                                                                <td>
                                                                    <select name="" id="mp_resume_cell1" class="i-select">
                                                                        <option value="">010</option>
                                                                        <option value="">011</option>
                                                                        <option value="">016</option>
                                                                        <option value="">017</option>
                                                                        <option value="">018</option>
                                                                        <option value="">019</option>
                                                                    </select>&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" id="mp_resume_cell2" class="i-inpt">&nbsp;&nbsp;-&nbsp;
                                                                    <input type="text" name="" id="mp_resume_cell3" class="i-inpt">
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th><label for="mp_resume_mail1">이메일</label></th>
                                                <td>
                                                    <input type="text" name="" id="mp_resume_mail1" class="i-inpt">&nbsp;&nbsp;@&nbsp;
                                                    <input type="text" name="" id="mp_resume_mail2" class="i-inpt disabled i-mail_inpt" disabled="">
                                                    <select name="" id="mp_resume_mail3" class="i-select i-mail_sel">
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
                                                <th><label for="mp_resume_addr3" class="">주소<span class="required">*</span></label></th>
                                                <td>
                                                    <ul class="mp_resume_fm_addr_ul">
                                                        <li>
                                                            <button type="button" class="mp_resume_fm_btn mp_resume_addr_btn" onclick="popUp('address_pop')">우편번호 찾기</button>
                                                            <input type="text" name="" id="mp_resume_addr1" value="03082" class="i-inpt disabled" disabled="">
                                                            <input type="text" name="" id="mp_resume_addr2" value="서울시 종로구 대학로" class="i-inpt disabled" disabled="">
                                                        </li>
                                                        <li>
                                                            <input type="text" name="" id="mp_resume_addr3" class="i-inpt" placeholder="상세주소를 입력하세요.">
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_education_sec">
                            <p class="mp_sec_tit">학력사항 <span class="required">*</span></p>
                            <div id="resume_education">
                                <!--loop {-->
                                <div id="resume_education_cont1" class="mp_sec_cont">
                                    <div class="mp_control cf">
                                        <div class="mp_control_txtbox">
                                            <div class="i-radio">
                                                <input type="radio" name="signup_fm_sms" id="mp_resume_education1" value="1">
                                                <label for="mp_resume_education1">학력사항 1</label>
                                            </div>
                                        </div>
                                        <div class="mp_control_btnbox">
                                            <ul class="mp_control_btn_ul">
                                                <li>
                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('resume_education',1)"></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 학력사항 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">학교명<span class="required">*</span>/기간</span></th>
                                                    <td>
                                                        <!--
                                                        *normal.js
                                                        *select의 option text로 onchage구분값 사용
                                                        *고등학교 선택시 학점 미입력상태로 전환
                                                        -->
                                                        <select name="" class="i-select mp_resume_edu_sel">
                                                            <option value="">학력선택</option>
                                                            <option value="고등학교">고등학교</option>
                                                            <option value="대학교(2~3년)">대학교(2~3년)</option>
                                                            <option value="대학교(4년)">대학교(4년)</option>
                                                            <option value="대학원(석사)">대학원(석사)</option>
                                                            <option value="대학원(박사)">대학원(박사)</option>
                                                        </select>
                                                        <input type="text" name="" class="i-inpt mp_resume_edu_date">

                                                        <ul class="mp_resume_fm_add_inf">
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                            <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">전공학과/학점</span></th>
                                                    <td>
                                                        <button type="button" class="mp_resume_fm_btn mp_resume_major_btn" onclick="popUp('person_major_pop')">전공선택</button>
                                                        <input type="text" name="" class="i-inpt mp_resume_major-inpt1">

                                                        <ul class="mp_resume_fm_add_inf">
                                                            <li>
                                                                <input type="text" name="" class="i-inpt mp_resume_major-inpt2">
                                                            </li>
                                                            <li class="mp_resume_fm_add_inf_hypen">/</li>
                                                            <li>
                                                                <input type="text" name="" class="i-inpt mp_resume_major-inpt3">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">상태<span class="required">*</span></span></th>
                                                    <td>
                                                        <select name="" class="i-select mp_resume_edu_stat_sel">
                                                            <option value="">상태선택</option>
                                                            <option value="">졸업</option>
                                                            <option value="">졸업예정</option>
                                                            <option value="">재학</option>
                                                            <option value="">수료</option>
                                                            <option value="">휴학</option>
                                                            <option value="">중퇴</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_l">
                                        <button type="button" id="mp_resume_lastedu_btn" class="mp_control_btn2">최종학력 적용</button>
                                        <span id="lastEdu_txt01">최종학력 : </span>
                                        <span id="lastEdu_txt02"></span>
                                    </li>
                                    <li class="mp_control_btn_li_r"><button type="button" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('resume_education')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_career_sec">
                            <p class="mp_sec_tit">경력사항</p>
                            <div id="resume_career">
                                <!--loop {-->
                                <div id="resume_career_cont1" class="mp_sec_cont">
                                    <div class="mp_control cf">
                                        <div class="mp_control_txtbox">
                                            <p class="mp_control_txt">경력사항 <span class="mp_cont_num">1</span></p>
                                        </div>
                                        <div class="mp_control_btnbox">
                                            <ul class="mp_control_btn_ul">
                                                <li>
                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('resume_career',1)"></button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 경력사항 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">회사명<span class="required">*</span>/기간<span class="required">*</span></span></th>
                                                    <td>
                                                        <input type="text" name="" class="i-inpt mp_resume_career_cname">

                                                        <ul class="mp_resume_fm_add_inf">
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mp_resume_month-inpt01 mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                            <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mp_resume_month-inpt02 mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">직급·직책<span class="required">*</span></span></th>
                                                    <td><input type="text" name="" class="i-inpt mp_resume_career_position"></td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">주요직무 및 업무</span></th>
                                                    <td>
                                                        <textarea name="" class="i-textar i-textar_full autosize" onkeyup="javascript:fnChkByte(this,'500'); adjustHeight(this);" onkeydown="adjustHeight(this);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">상태<span class="required">*</span></span></th>
                                                    <td>
                                                        <select name="" class="i-select mp_resume_career_stat_sel">
                                                            <option value="">상태선택</option>
                                                            <option value="">퇴직</option>
                                                            <option value="">재직</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_l">
                                        <button type="button" id="mp_resume_totCareer_btn" class="mp_control_btn2">근무기간 자동계산</button>
                                        <span id="totCareer_txt01">총 근무기간 : </span>
                                        <span id="totCareer_txt02"></span>
                                    </li>
                                    <li class="mp_control_btn_li_r"><button type="button" id="" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('resume_career')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_license_sec">
                            <p class="mp_sec_tit">보유 자격면허</p>
                            <div id="resume_license">
                                <!--loop {-->
                                <div id="resume_license_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 보유 자격면허 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">자격증명<span class="required">*</span>/취득일</span></th>
                                                    <td class="pd_tbr0 cf">
                                                        <input type="text" name="" class="i-inpt mp_resume_license_name mt10">
                                                        <button type="button" id="" class="mp_resume_pop_btn mt10" onclick="popUp('license_pop')">자격면허 찾기</button>

                                                        <ul class="mp_resume_fm_add_inf mt10">
                                                            <li>
                                                                <input type="text" name="" class="date-inpt mp_resume_date-inpt hasDatepicker" id="dp1617269359701">
                                                            </li>
                                                        </ul>

                                                        <div class="mp_control_btnbox">
                                                            <ul class="mp_control_btn_ul">
                                                                <li>
                                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('resume_license',1)"></button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">발행처·기관</span></th>
                                                    <td><input type="text" name="" class="i-inpt mp_resume_license_ins"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>

                            <div class="mp_sec_add_cont">
                                <div class="mp_resume_tb_wrap">
                                    <table class="mp_resume_tb">
                                        <caption>이력서 보유 자격면허 작성폼</caption>
                                        <tbody>
                                            <tr>
                                                <th><span class="mp_resume_th_txt">기타자격</span></th>
                                                <td>
                                                    <textarea name="" class="i-textar i-textar_full autosize" onkeyup="javascript:fnChkByte(this,'500'); adjustHeight(this);" onkeydown="adjustHeight(this);"></textarea>
                                                    <span class="txtar_byte_num"></span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div><!--mp_sec_add_cont-->

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_r"><button type="button" id="" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('resume_license')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_award_sec">
                            <p class="mp_sec_tit">주요활동 및 수상경력</p>
                            <div id="resume_award">
                                <!--loop {-->
                                <div id="resume_award_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 주요활동 및 수상경력 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">구분<span class="required">*</span>/기간<span class="required">*</span></span></th>
                                                    <td class="pd_tbr0 cf">
                                                        <select name="" class="i-select mp_resume_award_sel mt10">
                                                            <option value="">선택</option>
                                                            <option value="">논술/저술</option>
                                                            <option value="">수상경력</option>
                                                            <option value="">봉사활동</option>
                                                            <option value="">자원봉사</option>
                                                            <option value="">사회활동</option>
                                                            <option value="">인턴</option>
                                                            <option value="">아르바이트</option>
                                                            <option value="">동아리/교내활동</option>
                                                            <option value="">기타활동</option>
                                                        </select>

                                                        <ul class="mp_resume_fm_add_inf mt10">
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                            <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                            <li>
                                                                <input type="text" name="" class="mp_resume_month-inpt mtz-monthpicker-widgetcontainer">
                                                            </li>
                                                        </ul>

                                                        <div class="mp_control_btnbox">
                                                            <ul class="mp_control_btn_ul">
                                                                <li>
                                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('resume_award',1)"></button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">기관명<span class="required">*</span></span></th>
                                                    <td><input type="text" name="" class="i-inpt mp_resume_award_ins"></td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">주요활동내용</span></th>
                                                    <td>
                                                        <textarea name="" class="i-textar i-textar_full autosize" onkeyup="javascript:fnChkByte(this,'500'); adjustHeight(this);" onkeydown="adjustHeight(this);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_r"><button type="button" id="" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('resume_award')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_lang_sec">
                            <p class="mp_sec_tit">외국어 능력</p>
                            <div id="resume_lang">
                                <!--loop {-->
                                <div id="resume_lang_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 외국어 능력 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">외국어<span class="required">*</span>/수준<span class="required">*</span></span></th>
                                                    <td class="pd_tbr0 cf">
                                                        <select name="" class="i-select mp_resume_lang_sel mt10">
                                                            <option value="">선택</option>
                                                        </select>

                                                        <select name="" class="i-select mp_resume_lang_sel mt10">
                                                            <option value="">선택</option>
                                                            <option value="">상</option>
                                                            <option value="">중</option>
                                                            <option value="">하</option>
                                                        </select>

                                                        <div class="mp_control_btnbox">
                                                            <ul class="mp_control_btn_ul">
                                                                <li>
                                                                    <button type="button" id="" class="mp_control_btn mp_control_del_btn" onclick="mpctl_del('resume_lang',1)"></button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">공인시험</span></th>
                                                    <td><input type="text" name="" class="i-inpt mp_resume_lang_exam"></td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">점수(등급)/응시일</span></th>
                                                    <td>
                                                        <div class="mp_resume_lang_exam_point_box">
                                                            <input type="text" name="" class="i-inpt mp_resume_lang_exam_point">
                                                            <span class="mp_resume_lang_exam_point_txt">점</span>
                                                        </div>

                                                        <ul class="mp_resume_fm_add_inf">
                                                            <li>
                                                                <input type="text" name="" class="date-inpt mp_resume_date-inpt hasDatepicker" id="dp1617269359702">
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>

                            <div class="mp_control_btnbox2">
                                <ul class="mp_control_btn_ul2 cf">
                                    <li class="mp_control_btn_li_r"><button type="button" id="" class="mp_control_btn2 mp_control_add_btn" onclick="mpctl_add('resume_lang')">항목추가</button></li>
                                </ul>
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_computer_sec">
                            <p class="mp_sec_tit">컴퓨터 활용</p>
                            <div id="resume_computer">
                                <!--loop {-->
                                <div id="resume_computer_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 컴퓨터 활용 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><label for="mp_resume_computer_chk01">활용능력 선택</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="mp_resume_computer_chk" id="mp_resume_computer_chk01" value="">
                                                                <label for="mp_resume_computer_chk01">문서작성</label>
                                                            </li>
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="mp_resume_computer_chk" id="mp_resume_computer_chk02" value="">
                                                                <label for="mp_resume_computer_chk02">표 계산</label>
                                                            </li>
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="mp_resume_computer_chk" id="mp_resume_computer_chk03" value="">
                                                                <label for="mp_resume_computer_chk03">프레젠테이션</label>
                                                            </li>
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="mp_resume_computer_chk" id="mp_resume_computer_chk04" value="">
                                                                <label for="mp_resume_computer_chk04">회계프로그램</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_computer_etc">기타 활용능력</label></th>
                                                    <td>
                                                        <textarea name="" id="mp_resume_computer_etc" class="i-textar i-textar_full autosize" onkeyup="javascript:fnChkByte(this,'500'); adjustHeight(this);" onkeydown="adjustHeight(this);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_disorder_sec">
                            <p class="mp_sec_tit">장애 사항</p>
                            <div id="resume_disorder">
                                <!--loop {-->
                                <div id="resume_disorder_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 장애 사항 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><label for="mp_resume_disorder_chk01">장애 여부</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_disorder_chk" id="mp_resume_disorder_chk01" value="">
                                                                <label for="mp_resume_disorder_chk01">비장애</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_disorder_chk" id="mp_resume_disorder_chk02" value="">
                                                                <label for="mp_resume_disorder_chk02">신체적 장애</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_disorder_chk" id="mp_resume_disorder_chk03" value="">
                                                                <label for="mp_resume_disorder_chk03">정신적 장애</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_disorder_detail">구체적 장애 내용</label></th>
                                                    <td>
                                                        <textarea name="" id="mp_resume_disorder_detail" class="i-textar i-textar_full autosize" onkeyup="javascript:fnChkByte(this,'500'); adjustHeight(this);" onkeydown="adjustHeight(this);"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_condition_sec">
                            <p class="mp_sec_tit">희망조건 및 기타사항</p>
                            <div id="resume_condition">
                                <!--loop {-->
                                <div id="resume_condition_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 희망조건 및 기타사항 작성폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">희망근무지역<span class="required">*</span></span></th>
                                                    <td>
                                                        <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_wkplace_pop')">지역 선택</button>
                                                        <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
                                                            <li>
                                                                <span>서울</span>
                                                                <span>전체</span>
                                                                <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                            </li>
                                                            <li>
                                                                <span>경기</span>
                                                                <span>성남시</span>
                                                                <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">희망장르<span class="required">*</span></span></th>
                                                    <td>
                                                        <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_genre_pop')">장르 선택</button>
                                                        <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
                                                            <li>
                                                                <span>공연예술</span>
                                                                <span>연극뮤지컬분야</span>
                                                                <span>자영예술업</span>
                                                                <span>연극 및 뮤지컬 배우</span>
                                                                <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">희망업종<span class="required">*</span></span></th>
                                                    <td>
                                                        <button type="button" class="mp_resume_pop_btn" onclick="popUp('jobs_sector_pop')">업종 선택</button>
                                                        <ul class="jobs_sch_option_result_ul mp_resume_jobs_select_ul">
                                                            <li>
                                                                <span>자영예술업</span>
                                                                <span>연극뮤지컬분야</span>
                                                                <span>연극 및 뮤지컬 배우</span>
                                                                <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                            </li>
                                                            <li>
                                                                <span>자영예술업</span>
                                                                <span>연극뮤지컬분야</span>
                                                                <span>연극 및 뮤지컬 배우</span>
                                                                <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_job">희망직무내용<span class="required">*</span></label></th>
                                                    <td>
                                                        <textarea name="" id="mp_resume_condition_job" class="i-textar i-textar_full" onkeyup="javascript:fnChkByte(this,'500');"></textarea>
                                                        <span class="txtar_byte_num"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_career01">희망장르, 업종 경력<span class="required">*</span></label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_career" id="mp_resume_condition_career01" value="">
                                                                <label for="mp_resume_condition_career01">신입</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_career" id="mp_resume_condition_career02" value="">
                                                                <label for="mp_resume_condition_career02">경력</label>
                                                            </li>
                                                        </ul>

                                                        <ul class="mp_resume_fm_add_inf">
                                                            <li><input type="text" name="" class="i-inpt mp_resume_condition_career_year01"> 년</li>
                                                            <li><input type="text" name="" class="i-inpt mp_resume_condition_career_year02"> 개월</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_paytype">희망급여<span class="required">*</span></label></th>
                                                    <td>
                                                        <select name="" id="mp_resume_condition_paytype" class="i-select">
                                                            <option value="">선택</option>
                                                            <option value="">연봉</option>
                                                            <option value="">월급</option>
                                                            <option value="">일급</option>
                                                            <option value="">시급</option>
                                                        </select>
                                                        <input type="text" name="" id="mp_resume_condition_pay" class="i-inpt"> 만원 이상

                                                        <ul class="mp_resume_condition_pay_chkbox">
                                                            <li>
                                                                <div class="i-checks">
                                                                    <input type="checkbox" name="" id="mp_resume_condition_pay_chk01">
                                                                    <label for="mp_resume_condition_pay_chk01">면접 후 결정</label>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="i-checks">
                                                                    <input type="checkbox" name="" id="mp_resume_condition_pay_chk02">
                                                                    <label for="mp_resume_condition_pay_chk02">회사 내규에 따름</label>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_employtype01">고용형태<span class="required">*</span></label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_employtype" id="mp_resume_condition_employtype01" value="">
                                                                <label for="mp_resume_condition_employtype01">정규직</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_employtype" id="mp_resume_condition_employtype02" value="">
                                                                <label for="mp_resume_condition_employtype02">계약직</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_employtype" id="mp_resume_condition_employtype03" value="">
                                                                <label for="mp_resume_condition_employtype03">관계없음</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_wktime_start">희망근무시간</label></th>
                                                    <td>
                                                        <ul class="mp_resume_fm_add_inf ml0">
                                                            <li>
                                                                <!--(normal.js) 24시간(30분단위) 셀렉트-->
                                                                <select name="" id="mp_resume_condition_wktime_start" class="i-select time-sel mp_resume_condition_wktime">
                                                                    <option value="">시작시간</option>
                                                                    <option val="00:00">(자정) 00:00</option><option val="00:30">(오전) 00:30</option><option val="01:00">(오전) 01:00</option><option val="01:30">(오전) 01:30</option><option val="02:00">(오전) 02:00</option><option val="02:30">(오전) 02:30</option><option val="03:00">(오전) 03:00</option><option val="03:30">(오전) 03:30</option><option val="04:00">(오전) 04:00</option><option val="04:30">(오전) 04:30</option><option val="05:00">(오전) 05:00</option><option val="05:30">(오전) 05:30</option><option val="06:00">(오전) 06:00</option><option val="06:30">(오전) 06:30</option><option val="07:00">(오전) 07:00</option><option val="07:30">(오전) 07:30</option><option val="08:00">(오전) 08:00</option><option val="08:30">(오전) 08:30</option><option val="09:00">(오전) 09:00</option><option val="09:30">(오전) 09:30</option><option val="10:00">(오전) 10:00</option><option val="10:30">(오전) 10:30</option><option val="11:00">(오전) 11:00</option><option val="11:30">(오전) 11:30</option><option val="12:00">(오후) 12:00</option><option val="12:30">(오후) 12:30</option><option val="13:00">(오후) 13:00</option><option val="13:30">(오후) 13:30</option><option val="14:00">(오후) 14:00</option><option val="14:30">(오후) 14:30</option><option val="15:00">(오후) 15:00</option><option val="15:30">(오후) 15:30</option><option val="16:00">(오후) 16:00</option><option val="16:30">(오후) 16:30</option><option val="17:00">(오후) 17:00</option><option val="17:30">(오후) 17:30</option><option val="18:00">(오후) 18:00</option><option val="18:30">(오후) 18:30</option><option val="19:00">(오후) 19:00</option><option val="19:30">(오후) 19:30</option><option val="20:00">(오후) 20:00</option><option val="20:30">(오후) 20:30</option><option val="21:00">(오후) 21:00</option><option val="21:30">(오후) 21:30</option><option val="22:00">(오후) 22:00</option><option val="22:30">(오후) 22:30</option><option val="23:00">(오후) 23:00</option><option val="23:30">(오후) 23:30</option></select>
                                                            </li>
                                                            <li class="mp_resume_fm_add_inf_hypen">~</li>
                                                            <li>
                                                                <!--(normal.js) 24시간(30분단위) 셀렉트-->
                                                                <select name="" id="mp_resume_condition_wktime_end" class="i-select time-sel mp_resume_condition_wktime">
                                                                    <option value="">종료시간</option>
                                                                    <option val="00:00">(자정) 00:00</option><option val="00:30">(오전) 00:30</option><option val="01:00">(오전) 01:00</option><option val="01:30">(오전) 01:30</option><option val="02:00">(오전) 02:00</option><option val="02:30">(오전) 02:30</option><option val="03:00">(오전) 03:00</option><option val="03:30">(오전) 03:30</option><option val="04:00">(오전) 04:00</option><option val="04:30">(오전) 04:30</option><option val="05:00">(오전) 05:00</option><option val="05:30">(오전) 05:30</option><option val="06:00">(오전) 06:00</option><option val="06:30">(오전) 06:30</option><option val="07:00">(오전) 07:00</option><option val="07:30">(오전) 07:30</option><option val="08:00">(오전) 08:00</option><option val="08:30">(오전) 08:30</option><option val="09:00">(오전) 09:00</option><option val="09:30">(오전) 09:30</option><option val="10:00">(오전) 10:00</option><option val="10:30">(오전) 10:30</option><option val="11:00">(오전) 11:00</option><option val="11:30">(오전) 11:30</option><option val="12:00">(오후) 12:00</option><option val="12:30">(오후) 12:30</option><option val="13:00">(오후) 13:00</option><option val="13:30">(오후) 13:30</option><option val="14:00">(오후) 14:00</option><option val="14:30">(오후) 14:30</option><option val="15:00">(오후) 15:00</option><option val="15:30">(오후) 15:30</option><option val="16:00">(오후) 16:00</option><option val="16:30">(오후) 16:30</option><option val="17:00">(오후) 17:00</option><option val="17:30">(오후) 17:30</option><option val="18:00">(오후) 18:00</option><option val="18:30">(오후) 18:30</option><option val="19:00">(오후) 19:00</option><option val="19:30">(오후) 19:30</option><option val="20:00">(오후) 20:00</option><option val="20:30">(오후) 20:30</option><option val="21:00">(오후) 21:00</option><option val="21:30">(오후) 21:30</option><option val="22:00">(오후) 22:00</option><option val="22:30">(오후) 22:30</option><option val="23:00">(오후) 23:00</option><option val="23:30">(오후) 23:30</option></select>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_etc">기타희망내용</label></th>
                                                    <td>
                                                        <input type="text" name="" id="mp_resume_condition_etc" class="i-inpt i-inpt_full">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_driving01">운전가능여부</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_driving" id="mp_resume_condition_driving01" value="">
                                                                <label for="mp_resume_condition_driving01">예</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_driving" id="mp_resume_condition_driving02" value="">
                                                                <label for="mp_resume_condition_driving02">아니오</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_condition_car01">차량소유여부</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_car" id="mp_resume_condition_car01" value="">
                                                                <label for="mp_resume_condition_car01">예</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_condition_car" id="mp_resume_condition_car02" value="">
                                                                <label for="mp_resume_condition_car02">아니오</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><span class="mp_resume_th_txt">키워드<span class="required">*</span></span></th>
                                                    <td>
                                                        <!--최소 1개이상 입력-->
                                                        <ul class="mp_resume_keyword_box">
                                                            <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                            <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                            <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                            <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                            <li><input type="text" name="" class="i-inpt mp_resume_keyword"></li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>
                        </div><!--mp_sec-->
                        <div class="mp_sec mp_resume_privacy_sec">
                            <div id="resume_privacy">
                                <!--loop {-->
                                <div id="resume_privacy_cont1" class="mp_sec_cont">
                                    <div class="mp_resume_tb_wrap">
                                        <table class="mp_resume_tb">
                                            <caption>이력서 정보공개 선택폼</caption>
                                            <tbody>
                                                <tr>
                                                    <th><label for="mp_resume_privacy_chk01">이력서 공개 설정</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_privacy_chk" id="mp_resume_privacy_chk01" value="">
                                                                <label for="mp_resume_privacy_chk01">공개</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_privacy_chk" id="mp_resume_privacy_chk02" value="">
                                                                <label for="mp_resume_privacy_chk02">비공개</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th><label for="mp_resume_offer_chk01">입사제의설정</label></th>
                                                    <td>
                                                        <ul class="mp_resume_chk">
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_offer_chk" id="mp_resume_offer_chk01" value="">
                                                                <label for="mp_resume_offer_chk01">허용</label>
                                                            </li>
                                                            <li class="i-radio">
                                                                <input type="radio" name="mp_resume_offer_chk" id="mp_resume_offer_chk02" value="">
                                                                <label for="mp_resume_offer_chk02">허용안함</label>
                                                            </li>
                                                        </ul>

                                                        <ul class="mp_resume_chk mp_resume_offer_method_chkbox">
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="" id="mp_resume_offer_method_chk01" value="">
                                                                <label for="mp_resume_offer_method_chk01">카카오톡 알림톡</label>
                                                            </li>
                                                            <li class="i-checks">
                                                                <input type="checkbox" name="" id="mp_resume_offer_method_chk02" value="">
                                                                <label for="mp_resume_offer_method_chk02">이메일</label>
                                                            </li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div><!--mp_sec_cont-->
                                <!--} loop-->
                            </div>
                        </div><!--mp_sec-->

                        <div class="person_dt_proof mp_resume_proof">
                            <p class="person_dt_proof_txt01">위에 입력한 사항은 사실과 틀림이 없음을 확인 합니다.</p>
                            <p class="person_dt_proof_txt01">2021년 01월 08일 신청자 : 홍길동</p>
                        </div>

                        <div class="mp_resume_btn_wrap">
                            <ul class="mp_resume_btn_ul">
                                <li><button type="button" class="btn02" onclick="javascript:history.back()">뒤로가기</button></li>
                                <li><button type="button" class="btn01">이력서 작성완료</button></li>
                            </ul>
                        </div>
                    </form>

                </div>

            </div>
        </div>
    </div><!--sub_content-->

    <!-- 사진파일 등록 팝업 { -->
    <div id="upload_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">이미지 올리기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <div id="upload_file" class="filebox03">
                            <input class="upload-name" value="" disabled="disabled">
                            <label for="upload_file01">찾아보기</label>
                            <input type="file" id="upload_file01" class="upload-hidden filename">
                            <p class="upload_file_txt">파일은 최대 3Mbyte까지 업로드 가능하며, 이미지파일(gif, jpg, jpeg, bmp, png)
                                만 업로드 가능합니다.</p>
                            <button type="button" class="btn01 upload_file_btn">확인</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- } 사진파일 등록 팝업 -->

    <!--자격면허 찾기 팝업 {-->
    <div id="license_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">자격면허 찾기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <div class="license_sch_box cf">
                            <span class="license_sch_subj">자격면허찾기</span>
                            <div class="license_sch_cont">
                                <input type="text" name="" class="i-inpt license_sch_inpt">
                                <button class="license_sch_btn">검색하기</button>
                            </div>
                        </div>

                        <div class="license_tab">
                            <ul class="license_tab_ul child3">
                                <li class="active" rel="license_tab_01"><a href="javascript:void(0)">국가기술자격</a></li>
                                <li rel="license_tab_02"><a href="javascript:void(0)">국가전문자격</a></li>
                                <li rel="license_tab_03"><a href="javascript:void(0)">공인민간자격</a></li>
                            </ul>
                        </div>

                        <div class="license_tab_con_wr">
                            <div id="license_tab_01" class="license_tab_cont">
                                <div class="license_sch_letter_cont">
                                    <ul class="license_sch_letter_ul">
                                        <li class="license_sch_letter_act"><a href="">ㄱ</a></li>
                                        <li><a href="">ㄴ</a></li>
                                        <li><a href="">ㄷ</a></li>
                                        <li><a href="">ㄹ</a></li>
                                        <li><a href="">ㅁ</a></li>
                                        <li><a href="">ㅂ</a></li>
                                        <li><a href="">ㅅ</a></li>
                                        <li><a href="">ㅇ</a></li>
                                        <li><a href="">ㅈ</a></li>
                                        <li><a href="">ㅊ</a></li>
                                        <li><a href="">ㅋ</a></li>
                                        <li><a href="">ㅌ</a></li>
                                        <li><a href="">ㅍ</a></li>
                                        <li><a href="">ㅎ</a></li>
                                        <li><a href="">기타</a></li>
                                    </ul>
                                </div>
                                <div class="license_sch_option_cont">
                                    <ul class="license_sch_option_ul">
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기능사1급</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기술사(수학응용)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기능장</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">[미관리] 정보처리기술사(정보처리)</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">정보처리기능사</label>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="i-radio">
                                                <input type="radio" name="" id="">
                                                <label for="">정보처리산업기사</label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <div class="license_sch_txt_wr">
                                    <p class="license_sch_txt">※ “[미관리]”로 표기된 자격은 아트모아에서 관리되지 않거나 실제 폐지된 자격을 의미합니다.</p>
                                    <p class="license_sch_txt">※ “[미관리]”로 표기된 자격을 입력하시고자 하는 경우, 기타자격 항목에 작성하여 주시기 바랍니다.</p>
                                </div>
                            </div>
                            <button type="button" class="btn01 license_btn">적용하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--} 자격면허 찾기 팝업-->

    <!-- 우편번호 찾기 팝업 { -->
    <div id="address_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">도로명 주소 찾기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <div class="address_sch_box cf">
                            <div class="address_sch_txt_wr">
                                <p class="address_sch_txt">가급적 도로명주소 위주로 입력해 주시고, 검색결과가 많을 경우 “결과 내 재 검색” 체크 후 추가 검색어 입력 후 검색하시면 됩니다.</p>
                                <p class="address_sch_txt">건물명의 경우 체신청 우편물 기준 대량 배달처인 경우에 한해 검색이 가능하여, 건물명이나 아파트 이름을 넣어도 검색이 안되는 경우가 있습니다.</p>
                            </div>
                            <div class="address_comp_sch">
                                <div class="address_comp_sch_box cf">
                                    <span class="address_comp_sch_subj">시도</span>
                                    <div class="address_comp_sch_cont">
                                        <select name="" id="" class="i-select">
                                            <option value="">시/도</option>
                                        </select>
                                        <select name="" id="" class="i-select">
                                            <option value="">시/군/구(전체)</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="address_comp_sch_box_wr cf">
                                    <div class="address_comp_sch_box">
                                        <span class="address_comp_sch_subj">검색어</span>
                                        <div class="address_comp_sch_cont">
                                            <input type="text" name="" class="i-inpt address_comp_sch_inpt">
                                        </div>
                                    </div>
                                    <div class="address_comp_sch_box">
                                        <span class="address_comp_sch_subj">우편번호</span>
                                        <div class="address_comp_sch_cont">
                                            <input type="text" name="" class="i-inpt address_comp_zip_inpt">
                                            <div class="i-checks address_comp_zip_chk_wr">
                                                <input type="checkbox" id="address_comp_zip_chk">
                                                <label for="address_comp_zip_chk">결과 내 재검색</label>
                                            </div>
                                            <button class="address_comp_sch_btn">검색하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="address_tb_wr">
                            <table class="board_tb address_list_tb">
                                <caption>도로명 주소 찾기</caption>
                                <thead>
                                    <tr>
                                        <th class="address_th_chk"></th>
                                        <th class="address_th_zipcode">우편번호</th>
                                        <th class="address_th_address01">도로명주소</th>
                                        <th class="address_th_address02">도로명주소</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk01">
                                                <label for="address_list_chk01"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk02">
                                                <label for="address_list_chk02"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="address_list_chk03">
                                                <label for="address_list_chk03"><span class="sound_only">주소 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td>06134</td>
                                        <td>서울특별시 강남구 테헤란로 101 (역삼동)</td>
                                        <td>서울특별시 강남구 역삼동 821 이즈타워</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <button type="button" class="btn01 address_sch_btn">적용하기</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- } 우편번호 찾기 팝업 -->

    <!--장르 선택 팝업 {-->
    <div id="jobs_genre_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">장르 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공연예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">시각예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">영상예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">문화예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타예술</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">세부장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">연극/뮤지컬분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">음악분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">무용분야</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">업종</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자영예술업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기획, 창작, 제작업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">감독, 기술업</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직업명</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">연극 및 뮤지컬 배우</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">안무가</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">마술사</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">곡예사</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직종 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul">
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 장르 선택 팝업-->

    <!--업종 선택 팝업 {-->
    <div id="jobs_sector_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">업종 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">업종</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자영예술업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기획, 창작, 제작업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">감독, 기술업</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공연예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">시각예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">영상예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">문화예술</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타예술</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">세부장르</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">연극/뮤지컬분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">음악분야</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">무용분야</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직업명</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">연극 및 뮤지컬 배우</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">안무가</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">마술사</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">곡예사</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">직종 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul">
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>공연예술</span>
                                    <span>연극뮤지컬분야</span>
                                    <span>자영예술업</span>
                                    <span>연극 및 뮤지컬 배우</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 업종 선택 팝업-->

    <!--근무지역 선택 팝업 {-->
    <div id="jobs_wkplace_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">지역 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">시/도 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">강원도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경기도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경상남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">경상북도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">광주광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">대구광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">대전광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">부산광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">서울특별시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">세종특별자치시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">울산광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">인천광역시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전라남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전라북도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">제주특별자치도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">충청남도</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">충청북도</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">구/군 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_check">
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">전체</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">강릉시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">고성군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">동해시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">삼척시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">속초시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">양구군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">양양군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">영월군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">원주시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">인제군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">정선군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">철원군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">춘천시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">태백시</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">평창군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">홍천군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">화천군</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-checks">
                                        <input type="checkbox" name="" id="">
                                        <label for="">횡성군</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">선택 지역</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_result_ul wkplace_option_result_ul">
                                <li>
                                    <span>강원도 강릉시</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                                <li>
                                    <span>강원도 고성군</span>
                                    <button type="button" id="" class="jobs_sch_option_result_remove">삭제</button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 근무지역 선택 팝업-->

    <!--전공 선택 팝업 {-->
    <div id="person_major_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">전공 선택</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">

                    <div class="person_major_pop_sch">
                        <form action="" class="cf">
                            <label for="person_major_pop_sch_inpt" class="sound_only">전공 검색</label>
                            <input type="text" name="" id="person_major_pop_sch_inpt" class="i-inpt" placeholder="전공 관련 키워드를 입력하세요.">
                            <button type="button" class="person_major_pop_sch_btn">검색하기</button>
                        </form>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">1차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">인문계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">사회계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">교육계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">공학계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">자연계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">의약계열</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">예체능계열</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">2차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기계·금속</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전기·전자</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">정밀·에너지</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">소재·재료</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">컴퓨터·통신</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">산업</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">화공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">기타</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">3차 계열</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">전산학·컴퓨터공학</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">응용 소프트웨어 공학</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">정보·통신공학</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="jobs_sch_option">
                        <p class="jobs_sch_option_title">전공 선택</p>
                        <div class="jobs_sch_option_cont">
                            <ul class="jobs_sch_option_ul jobs_sch_option_radio">
                                <li class="person_pop_major_li">
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">학과명 직접입력&nbsp;</label>

                                        <input type="text" name="" id="" class="i-inpt person_pop_major_inpt" placeholder="찾으시는 학과가 없을 시 직접 입력하세요.">
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털제어공학전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털컨텍트전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">멀티미디어공학전공</label>
                                    </div>
                                </li>
                                <li>
                                    <div class="i-radio">
                                        <input type="radio" name="" id="">
                                        <label for="">디지털컨텐츠학부</label>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <button type="button" id="" class="btn01 jobs_sch_option_apply">적용하기</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 전공 선택 팝업-->
</div>
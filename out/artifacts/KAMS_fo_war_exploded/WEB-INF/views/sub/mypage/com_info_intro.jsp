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
    $(document).ready(function () {//로고 삭제 기능
        var cLogo = $(".mp_comp_introd_logo"),
            cLogo_img;

        cLogo.on('click', '#mp_comp_introd_logo_del', function(){
            cLogo_img = $(".mp_comp_introd_logo .preview-image img");

            if(cLogo_img.length == 0){
                alert("등록된 로고가 없습니다.")
            }else{
                var result = confirm("등록된 로고를 삭제 하시겠습니까?");
                if(!result){
                    return false;
                }else{
                    cLogo_img.remove();
                }
            }
        });
    });
</script>

<div id="mp_comp_introd" class="sub mypage">
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
                                <li><a href="/sub/mypage/com_info_info_pass_check.do">기업정보 관리</a></li>
                                <li class="on"><a href="/sub/mypage/com_info_info_pass_check2.do">회사소개 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check3.do">채용담당자 정보관리</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">회사소개관리</p>
                    </div>

                    <form action="">
                        <div class="mp_sec mp_comp_introd_sec">
                            <div class="mp_comp_introd_tb_wrap">
                                <table class="signup_fm_tb mp_comp_introd_tb">
                                    <caption>회원가입 채용담당자 정보 입력</caption>
                                    <tbody>
                                        <tr>
                                            <td class="mp_comp_introd_logo">
                                                <div class="mp_comp_introd_logo_box">
                                                    <div class="filebox preview-image">
                                                        <label for="mp_comp_introd_logo_inpt">로고등록</label>
                                                        <input type="file" name="" id="mp_comp_introd_logo_inpt" class="upload-hidden">
                                                        <button type="button" id="mp_comp_introd_logo_del">삭제</button>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="pd0">
                                                <table class="mp_comp_introd_tb_in">
                                                    <tbody>
                                                        <tr>
                                                            <th><label for="mp_comp_introd_logo_subj">로고 제목</label></th>
                                                            <td><input type="text" name="" id="mp_comp_introd_logo_subj" class="i-inpt"></td>
                                                        </tr>
                                                        <tr>
                                                            <th><label for="mp_comp_introd_logo_expl">로고 설명</label></th>
                                                            <td><textarea name="" id="mp_comp_introd_logo_expl" class="i-textar i-textar_full" cols="30" rows="10"></textarea></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th><label for="mp_comp_introd_site">회사 홈페이지</label></th>
                                            <td><input type="text" name="" id="mp_comp_introd_site" class="i-inpt i-inpt_full"></td>
                                        </tr>
                                        <tr>
                                            <th><label for="mp_comp_introd_blog">회사 블로그</label></th>
                                            <td><input type="text" name="" id="mp_comp_introd_blog" class="i-inpt i-inpt_full"></td>
                                        </tr>
                                        <tr>
                                            <th class="mp_comp_introd_expl_th"><label for="mp_comp_introd_expl">회사 소개</label></th>
                                            <td>
                                                <!--에디터-->
                                                <textarea name="" id="mp_comp_introd_expl" class="i-textar i-textar_full" cols="30" rows="10"></textarea>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="mp_comp_introd_submit_box cf">
                                <ul class="mp_mbedit_submit_ul mp_mbedit_submit_ul01">
                                    <li><button type="submit" id="mp_comp_introd_withdrawal" class="btn03">회원탈퇴</button></li>
                                    <li><a href="/sub/mypage/com_info_info_pass_edit.do" id="mp_comp_introd_password" class="btn03">비밀번호 변경</a></li>
                                </ul>
                                <ul class="mp_comp_introd_submit_ul mp_comp_introd_submit_ul02">
                                    <li><a href="javascript:history.back();" id="mp_comp_introd_cancle" class="btn02">뒤로가기</a></li>
                                    <li><button type="submit" id="mp_comp_introd_submit" class="btn01">회사소개 변경</button></li>
                                </ul>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
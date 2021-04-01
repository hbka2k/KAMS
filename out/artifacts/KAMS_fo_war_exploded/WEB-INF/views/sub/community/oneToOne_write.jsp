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

<!--Contents {-->
<div id="inq_w" class="sub">
    <div class="sub_visual sub_visual06">
        <div class="wrapper">
            <p class="sub_vs_title">커뮤니티</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">커뮤니티</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">자주하는 질문</option>
                            <option value="" selected>1:1 온라인 문의</option>
                            <option value="">공지사항</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">1:1 온라인 문의</p>

            <form action="">
                <div class="write_tb_wrap inq_w_tb_wrap">
                    <table class="write_tb inq_w_tb">
                        <tbody>
                            <tr>
                                <th><label for="inq_w_cate">문의종류<span class="required">*</span></label></th>
                                <td>
                                    <select name="" id="inq_w_cate" class="i-select">
                                        <option value="">선택</option>
                                        <option value="">이용문의</option>
                                        <option value="">교육문의</option>
                                        <option value="">기타문의</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="inq_w_writer">작성자<span class="required">*</span></label></th>
                                <td><input type="text" name="" id="inq_w_writer" class="i-inpt"></td>
                            </tr>
                            <tr>
                                <th><label for="inq_w_pw">비밀번호<span class="required">*</span></label></th>
                                <td><input type="password" name="" id="inq_w_pw" class="i-inpt"></td>
                            </tr>
                            <tr>
                                <th><label for="">내용<span class="required">*</span></label></th>
                                <td><textarea name="" id="inq_w_content" class="i-textar i-textar_full" cols="30" rows="15"></textarea></td>
                            </tr>
                            <tr>
                                <th><label for="inq_w_public">공개상태<span class="required">*</span></label></th>
                                <td>
                                    <ul class="inq_w_raio">
                                        <li class="i-radio">
                                            <input type="radio" name="inq_w_public_settings" id="inq_w_public" value="y" checked>
                                            <label for="inq_w_public">공개</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="inq_w_public_settings" id="inq_w_private" value="n">
                                            <label for="inq_w_private">비공개</label>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="inq_w_file">파일첨부</label></th>
                                <td>
                                    <div id="inq_w_file" class="filebox02">
                                        <input class="upload-name" value="파일선택" disabled="disabled">
                                        <label for="inq_w_file01"></label>
                                        <input type="file" id="inq_w_file01" class="upload-hidden filename">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th><label for="inq_w_email01">이메일</label></th>
                                <td>
                                    <input type="text" name="" id="inq_w_email01" class="i-inpt">&nbsp;&nbsp;@&nbsp;
                                    <input type="text" name="" id="inq_w_email02" class="i-inpt disabled i-mail_inpt" disabled="">
                                    <select name="" id="inq_w_email03" class="i-select i-mail_sel">
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
                        </tbody>
                    </table>
                </div>
                <div class="inq_talk_priv">
                    <div class="i-checks">
                        <input type="checkbox" id="inq_talk_priv_chk">
                        <label for="inq_talk_priv_chk">개인정보처리방침에 동의합니다.</label>
                        <button type="button" class="priv_content_btn" onclick="privacyView();">[내용확인]</button>
                    </div>
                    <div id="priv_view_content" class="priv_content mCustomScrollbar _mCS_2 mCS_no_scrollbar" style=""><div id="mCSB_2" class="mCustomScrollBox mCS-dark-thick mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 128px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
                        <div class="priv_content_wrap">
                            개인정보처리방침 내용입니다.
                        </div>
                    </div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark-thick mCSB_scrollTools_vertical" style="display: none;"><a href="#" class="mCSB_buttonUp"></a><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div><a href="#" class="mCSB_buttonDown"></a></div></div></div>
                </div>
                <div class="inq_w_btn_box">
                    <ul class="inq_w_btn_ul">
                        <li><button type="submit" id="inq_w_submit" class="btn01">문의하기</button></li>
                        <li><a href="" id="inq_w_cancle" class="btn02">취소하기</a></li>
                    </ul>
                </div>
            </form>
        </div>
    </div><!--sub_content-->
</div><!--sub-->
<!--} Contents-->
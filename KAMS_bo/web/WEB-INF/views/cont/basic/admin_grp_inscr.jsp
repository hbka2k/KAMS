<%--
  Created by IntelliJ IDEA.
  User: shlee
  Date: 2021-03-15
  Time: 오후 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
    $(document).ready(function () {
        $("#C03").change(function() {
            if($("#C03").is(":checked")){
                $("#04").prop('checked', true);$("#07").prop('checked', true);$("#08").prop('checked', true);$("#12").prop('checked', true);
            }else{
                $("#04").prop('checked', false);$("#07").prop('checked', false);$("#08").prop('checked', false);$("#12").prop('checked', false);
            }
        });
        $("#C13").change(function() {
            if($("#C13").is(":checked")){
                $("#14").prop('checked', true);$("#15").prop('checked', true);$("#16").prop('checked', true);$("#17").prop('checked', true);$("#18").prop('checked', true);
            }else{
                $("#14").prop('checked', false);$("#15").prop('checked', false);$("#16").prop('checked', false);$("#17").prop('checked', false);$("#18").prop('checked', false);
            }
        });
        $("#C19").change(function() {
            if($("#C19").is(":checked")){
                $("#20").prop('checked', true);$("#21").prop('checked', true);$("#22").prop('checked', true);$("#23").prop('checked', true);
            }else{
                $("#20").prop('checked', false);$("#21").prop('checked', false);$("#22").prop('checked', false);$("#23").prop('checked', false);
            }
        });
        $("#C24").change(function() {
            if($("#C24").is(":checked")){
                $("#25").prop('checked', true);
            }else{
                $("#25").prop('checked', false);
            }
        });
        $("#C26").change(function() {
            if($("#C26").is(":checked")){
                $("#27").prop('checked', true);$("#28").prop('checked', true);$("#54").prop('checked', true);$("#31").prop('checked', true);$("#32").prop('checked', true);$("#33").prop('checked', true);$("#29").prop('checked', true);$("#30").prop('checked', true);$("#55").prop('checked', true);$("#34").prop('checked', true);
            }else{
                $("#27").prop('checked', false);$("#28").prop('checked', false);$("#54").prop('checked', false);$("#31").prop('checked', false);$("#32").prop('checked', false);$("#33").prop('checked', false);$("#29").prop('checked', false);$("#30").prop('checked', false);$("#55").prop('checked', false);$("#34").prop('checked', false);
            }
        });
        $("#C35").change(function() {
            if($("#C35").is(":checked")){
                $("#36").prop('checked', true);$("#37").prop('checked', true);$("#38").prop('checked', true);$("#39").prop('checked', true);$("#40").prop('checked', true);$("#41").prop('checked', true);$("#42").prop('checked', true);$("#43").prop('checked', true);
            }else{
                $("#36").prop('checked', false);$("#37").prop('checked', false);$("#38").prop('checked', false);$("#39").prop('checked', false);$("#40").prop('checked', false);$("#41").prop('checked', false);$("#42").prop('checked', false);$("#43").prop('checked', false);
            }
        });
        $("#C44").change(function() {
            if($("#C44").is(":checked")){
                $("#45").prop('checked', true);$("#46").prop('checked', true);$("#47").prop('checked', true);$("#48").prop('checked', true);
            }else{
                $("#45").prop('checked', false);$("#46").prop('checked', false);$("#47").prop('checked', false);$("#48").prop('checked', false);
            }
        });

        $("#btn_insert").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.kind_cd, "관리자유형")){return false;}
            if(!fnIsValidRequired(frm.grp_nm, "관리자그룹")){return false;}

            $("#frm").submit();
        });
    });
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${subMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <article class="contUnit tbl_area leftType">
        <div class="btnArea mgt0 mgb10">
            <div class="left">
                <h3></h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
                    <span class="co_red">*</span> 필수입력
                </div>
            </div>
        </div>
        <form name="frm" id="frm" action="/artmore_adm/cont/basic/admin_grp_inscr.do" method="post" enctype="multipart/form-data">
            <table>
                <colgroup>
                    <col style="width:15rem">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>사용여부</th>
                    <td>
                        <input type="radio" name="use_yn" id="use_y" value="Y" checked>
                        <label for="use_y">사용</label>
                        <input type="radio" name="use_yn" id="use_n" value="N">
                        <label for="use_n">미사용</label>
                    </td>
                </tr>
                <tr>
                    <th class="required">관리자유형</th>
                    <td>
                        <select class="wid200" name="kind_cd" id="kind_cd">
                            <option value="">유형 선택</option>
                            <option value="S">통합관리자</option>
                            <option value="N">일반관리자</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="required">관리자그룹</th>
                    <td>
                        <input type="text" class="wid100per" id="grp_nm" name="grp_nm">
                    </td>
                </tr>
                <tr>
                    <th>그룹 설명</th>
                    <td>
                        <input type="text" class="wid100per" id="grp_exp" name="grp_exp">
                    </td>
                </tr>
                <tr>
                    <th class="required">그룹 권한</th>
                    <td>
                        <table class="mgt10">
                            <colgroup>
                                <col style="width:20rem">
                                <col>
                            </colgroup>
                            <tbody>
                            <!-- 기본관리 -->
                            <tr>
                                <td rowspan="4">
                                    <input type="checkbox" name="menu_array" id="C03" value="3" title="기본관리"><label for="C03">기본관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="04" value="4" title="관리자관리"><label for="04">관리자관리</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="07" value="7" title="메뉴관리"><label for="07">메뉴관리</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="08" value="8" title="공통 코드관리"><label for="08">공통 코드관리</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="12" value="12" title="IP관리"><label for="12">IP관리</label>
                                </td>
                            </tr>
                            <!-- 메인ㆍ베너관리 -->
                            <tr>
                                <td rowspan="5">
                                    <input type="checkbox" name="menu_array" id="C13" value="13" title="메인ㆍ배너관리"><label for="C13">메인ㆍ배너관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="14" value="14" title="메인 채용공고"><label for="14">메인 채용공고</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="15" value="15" title="메인 배너"><label for="15">메인 배너</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="16" value="16" title="하단 배너"><label for="16">하단 배너</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="17" value="17" title="연계 배너"><label for="17">연계 배너</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="18" value="18" title="팝업 레이어"><label for="18">팝업 레이어</label>
                                </td>
                            </tr>
                            <!-- 회원관리 -->
                            <tr>
                                <td rowspan="4">
                                    <input type="checkbox" name="menu_array" id="C19" value="19" title="회원관리"><label for="C19">회원관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="20" value="20" title="개인회원 정보"><label for="20">개인회원 정보</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="21" value="21" title="기업회원 정보"><label for="21">기업회원 정보</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="22" value="22" title="휴면회원 관리(개인)"><label for="22">휴면회원 관리(개인)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="23" value="23" title="휴면회원 관리(기업)"><label for="23">휴면회원 관리(기업)</label>
                                </td>
                            </tr>
                            <!-- 채용공고관리 -->
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="C24" value="24" title="채용공고관리"><label for="C24">채용공고관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="25" value="25" title="채용공고목록"><label for="25">채용공고목록</label>
                                </td>
                            </tr>
                            <!-- 게시판 관리 -->
                            <tr>
                                <td rowspan="10">
                                    <input type="checkbox" name="menu_array" id="C26" value="26" title="게시판관리"><label for="C26">게시판관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="27" value="27" title="매칭스토리"><label for="27">매칭스토리</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="28" value="28" title="취업 최신동향 뉴스"><label for="28">취업 최신동향 뉴스</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="54" value="54" title="기업탐방"><label for="54">기업탐방</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="31" value="31" title="자료실"><label for="31">자료실</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="32" value="32" title="FAQ"><label for="32">FAQ</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="33" value="33" title="공지사항"><label for="33">공지사항</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="29" value="29" title="고용복지 정책안내"><label for="29">고용복지 정책안내</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="30" value="30" title="직업 정보"><label for="30">직업 정보</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="55" value="55" title="1대1 온라인 문의"><label for="55">1대1 온라인 문의</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="34" value="34" title="게시판 설정"><label for="34">게시판 설정</label>
                                </td>
                            </tr>
                            <!-- 콘텐츠관리 -->
                            <tr>
                                <td rowspan="8">
                                    <input type="checkbox" name="menu_array" id="C35" value="35" title="콘텐츠관리"><label for="C35">콘텐츠관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="36" value="36" title="아트모아는?"><label for="36">아트모아는?</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="37" value="37" title="이용안내(개인)"><label for="37">이용안내(개인)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="38" value="38" title="이용안내(기업)"><label for="38">이용안내(기업)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="39" value="39" title="이용약관"><label for="39">이용약관</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="40" value="40" title="개인정보처리방침"><label for="40">개인정보처리방침</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="41" value="41" title="저작권정책"><label for="41">저작권정책</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="42" value="42" title="회원정책"><label for="42">회원정책</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="43" value="43" title="이메일무단수집거부"><label for="43">이메일무단수집거부</label>
                                </td>
                            </tr>
                            <!-- 통계관리 -->
                            <tr>
                                <td rowspan="4">
                                    <input type="checkbox" name="menu_array" id="C44" value="44" title="통계관리"><label for="C44">통계관리</label>
                                </td>
                                <td>
                                    <input type="checkbox" name="menu_array" id="45" value="45" title="PV(페이지별방문자)"><label for="45">PV(페이지별방문자)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="46" value="46" title="UV(홈페이지방문자)"><label for="46">UV(홈페이지방문자)</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="47" value="47" title="브라우저/OS현황"><label for="47">브라우저/OS현황</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="checkbox" name="menu_array" id="48" value="48" title="구인구직통계"><label for="48">구인구직통계</label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/kihs_adm/cont/system/admin_group_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn red" id="btn_insert">등록</a>
            </div>
        </div>
    </article>
</div>

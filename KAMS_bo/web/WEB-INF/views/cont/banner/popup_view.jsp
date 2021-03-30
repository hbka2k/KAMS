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
        /* Date Picker Settings */
        $('#start_dt').daterangepicker({
            "singleDatePicker": true,
            "timePicker": false,
            "linkedCalendars": false,
            "showCustomRangeLabel": false,
            "buttonClasses": "btn btn_cal",
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " - ",
                "applyLabel": "선택",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "daysOfWeek": ["일","월","화","수","목","금","토"],
                "monthNames": ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                "firstDay": 0
            }
        }, function(start, end, label) {
            console.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
        });

        /* Date Picker Settings */
        $('#end_dt').daterangepicker({
            "singleDatePicker": true,
            "timePicker": false,
            "linkedCalendars": false,
            "showCustomRangeLabel": false,
            "buttonClasses": "btn btn_cal",
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " - ",
                "applyLabel": "선택",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "daysOfWeek": ["일","월","화","수","목","금","토"],
                "monthNames": ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"],
                "firstDay": 0
            }
        }, function(start, end, label) {
            console.log("New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')");
        });

        $("#btn_update").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.name, "팝업 레이어 명")){return false;}
            if(!fnIsValidRequired(frm.link_url, "링크 URL")){return false;}

            // 에디터 처리 공통 ///////////////////////////////
            if (CrossEditor.IsPrivacyInfo(true,true,true)) {
                alert('개인정보 발견');
                return false;
            }
            frm.cont.value = CrossEditor.GetBodyValue();
            ////////////////////////////////////////////////

            $("#frm").submit();
        });

        $("#btn_delete").click(function(){
            modalMsg("삭제 하시겠습니까?", 'yesorno', delete_frm);
        });
    });

    function delete_frm() {
        document.delfrm.submit();
    }
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
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
        <form name="delfrm" id="delfrm" action="/artmore_adm/cont/banner/popup_delete.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="popup_idx" value="${popupVo.popup_idx}" />
        </form>
        <form name="frm" id="frm" action="/artmore_adm/cont/banner/popup_view.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="popup_idx" id="popup_idx" value="${popupVo.popup_idx}" />
        <table>
            <colgroup>
                <col style="width:15%">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th class="required">팝업 레이어 명</th>
                <td>
                    <input type="text" class="wid300" placeholder="팝업 레이어 명 입력" name="name" id="name" value="${popupVo.name}">
                </td>
            </tr>
            <tr>
                <th class="required">타입</th>
                <td>
                    <input type="radio" name="gbn_cd" id="gbn_cd_l" value="L" <c:if test="${popupVo.gbn_cd eq 'L'}">checked="checked"</c:if>>
                    <label for="gbn_cd_l">레이어</label>
                    <input type="radio" name="gbn_cd" id="gbn_cd_p" value="P" <c:if test="${popupVo.gbn_cd eq 'P'}">checked="checked"</c:if>>
                    <label for="gbn_cd_p">팝업</label>
                </td>
            </tr>
            <tr>
                <th>노출기간</th>
                <td>
                    <input type="text" id="start_dt" name="start_dt" class="wid100" title="시작일자" value="${popupVo.start_dt}">
                    <a href="javascript:showCalendar('start_dt');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png" alt="달력아이콘"></a>
                    ~
                    <input type="text" id="end_dt" name="end_dt" class="wid100" title="종료일자" value="${popupVo.end_dt}">
                    <a href="javascript:showCalendar('end_dt');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png" alt="달력아이콘"></a>
                </td>
            </tr>
            <tr>
                <th class="required">상시노출</th>
                <td>
                    <input type="radio" name="all_yn" id="all_y" value="Y" <c:if test="${popupVo.all_yn eq 'Y'}">checked="checked"</c:if>>
                    <label for="all_y">예</label>
                    <input type="radio" name="all_yn" id="all_n" value="N" <c:if test="${popupVo.all_yn eq 'N'}">checked="checked"</c:if>>
                    <label for="all_n">아니오</label>
                </td>
            </tr>
            <tr>
                <th>사이즈/위치</th>
                <td>
                    <input type="text" class="wid150" placeholder="WIDTH" oninput="this.value = this.value.replace(/[^0-9]/g, '');" name="width" id="width" value="${popupVo.width}">
                    <input type="text" class="wid150" placeholder="HEIGHT" oninput="this.value = this.value.replace(/[^0-9]/g, '');" name="height" id="height" value="${popupVo.height}">
                    <input type="text" class="wid150" placeholder="LEFT" oninput="this.value = this.value.replace(/[^0-9]/g, '');" name="left" id="left" value="${popupVo.left}">
                    <input type="text" class="wid150" placeholder="TOP" oninput="this.value = this.value.replace(/[^0-9]/g, '');" name="top" id="top" value="${popupVo.top}">
                    (숫자만 입력)
                </td>
            </tr>
            <tr>
                <th class="required">노출여부</th>
                <td>
                    <input type="radio" name="use_yn" id="use_y" value="Y" <c:if test="${popupVo.use_yn eq 'Y'}">checked="checked"</c:if>>
                    <label for="use_y">노출</label>
                    <input type="radio" name="use_yn" id="use_n" value="N" <c:if test="${popupVo.use_yn eq 'N'}">checked="checked"</c:if>>
                    <label for="use_n">미노출</label>
                </td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    <textarea id="cont" name="cont" title="initText">${popupVo.cont}</textarea>
                    <script type="text/javascript">
                        var CrossEditor = new NamoSE('cont');
                        CrossEditor.params.Width = "100%";
                        CrossEditor.params.ImageSavePath = "/upfile/editor";
                        CrossEditor.params.UploadFileExecutePath = "/artmore_adm/resources/namo/websource/jsp/ImageUpload.jsp";
                        CrossEditor.params.UserLang = "auto";
                        CrossEditor.params.FullScreen = false;

                        CrossEditor.EditorStart();
                        function OnInitCompleted(e){
                            e.editorTarget.SetBodyValue(document.getElementById("cont").value);
                        }
                    </script>
                </td>
            </tr>
            <tr>
                <th class="required">링크 URL</th>
                <td>
                    <input type="text" class="wid500" name="link_url" id="link_url" title="링크" value="${popupVo.link_url}">
                    <select id="link_tgt" name="link_tgt" title="링크타겟">
                        <option value="N" <c:if test="${popupVo.link_tgt eq 'N'}">selected="selected"</c:if>>새창</option>
                        <option value="C" <c:if test="${popupVo.link_tgt eq 'C'}">selected="selected"</c:if>>현재창</option>
                    </select>
                </td>
            </tr>
            </tbody>
        </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/banner/popup_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn red" id="btn_delete">삭제</a>
                <a href="#none" class="btn grey" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

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

        // 파일 삭제 버튼 클릭시
        $("a[id^=btn_file_del_]").click(function(){
            let del_id_arr = $(this).attr("id").replace("btn_file_del_", "").split('_');
            if(confirm("삭제 하시겠습니까?")){
                $.ajax({
                    url: '/artmore_adm/file/file_delete.do',
                    type: 'POST',
                    dataType: 'json',
                    data: "atch_file_id=" + del_id_arr[0] + "&file_num=" + del_id_arr[1],
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        if (data !== true) {
                            alert("삭제에 실패하였습니다.");
                        } else {
                            alert("삭제하였습니다.");
                            location.href = "?banner_idx=${bannerVo.banner_idx}";
                        }
                    }
                });
            }else{
                return false;
            }
            return false;
        });

        $("#btn_update").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.name, "배너명")){return false;}
            if(!fnIsValidRequired(frm.title, "표시문안")){return false;}
            /*if(!fnIsValidRequired(frm.attfile, "배너")){return false;}*/
            if(!fnIsValidRequired(frm.alt_txt, "배너 대체 텍스트")){return false;}

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
        <form name="delfrm" id="delfrm" action="/artmore_adm/cont/banner/main_banner_delete.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="banner_idx" value="${bannerVo.banner_idx}" />
        </form>
        <form name="frm" id="frm" action="/artmore_adm/cont/banner/main_banner_view.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="banner_idx" id="banner_idx" value="${bannerVo.banner_idx}" />
        <table>
            <colgroup>
                <col style="width:15%">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th class="required">노출여부</th>
                <td>
                    <input type="radio" name="use_yn" id="use_y" value="Y" <c:if test="${bannerVo.use_yn eq 'Y'}">checked="checked"</c:if>>
                    <label for="use_y">공개</label>
                    <input type="radio" name="use_yn" id="use_n" value="N" <c:if test="${bannerVo.use_yn eq 'N'}">checked="checked"</c:if>>
                    <label for="use_n">비공개</label>
                </td>
            </tr>
            <tr>
                <th class="required">노출기간</th>
                <td>
                    <input type="text" id="start_dt" name="start_dt" class="wid100" title="시작일자" value="${bannerVo.start_dt}">
                    <a href="javascript:showCalendar('start_dt');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png" alt="달력아이콘"></a>
                    ~
                    <input type="text" id="end_dt" name="end_dt" class="wid100" title="종료일자" value="${bannerVo.end_dt}">
                    <a href="javascript:showCalendar('end_dt');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png" alt="달력아이콘"></a>
                </td>
            </tr>
            <%--<tr>
                <th>순서</th>
                <td>
                    <input type="text" class="wid50" name="ord" id="ord" oninput="this.value = this.value.replace(/[^0-9]/g, '');" title="노출순서" value="${bannerVo.ord}"> ※ 숫자만 입력 가능합니다. 미입력시 가장 마지막 순서가 부여됩니다
                </td>
            </tr>--%>
            <tr>
                <th class="required">메인 배너 명</th>
                <td>
                    <input type="text" class="wid100per" name="name" id="name" title="배너명" value="${bannerVo.name}">
                </td>
            </tr>
            <tr>
                <th class="required">표시문안</th>
                <td>
                    <input type="text" class="wid100per" name="title" id="title" title="표시문안" value="${bannerVo.title}">
                </td>
            </tr>
            <tr>
                <th>링크 URL</th>
                <td>
                    <input type="text" class="wid500" name="link_url" id="link_url" title="링크" value="${bannerVo.link_url}">
                    <select id="link_tgt" name="link_tgt" title="링크타겟">
                        <option value="N" <c:if test="${bannerVo.link_tgt eq 'N'}">selected="selected"</c:if>>새창</option>
                        <option value="C" <c:if test="${bannerVo.link_tgt eq 'C'}">selected="selected"</c:if>>현재창</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="required">배너</th>
                <td>
                    <input type="file" name="attfile" id="attfile#" class="wid350"> ※ 파일형식 : jpg, jpeg, png, gif / 최적 사이즈 : 최적 사이즈 : 610px * 90px
                    <c:forEach items="${bannerVo.fileList}" var="item" varStatus="status">
                        <div class="imgArea">
                            <span>
                            <a style="text-decoration: underline;" href="/artmore_adm/file/fileDown.do?atchFileId=${item.atch_file_id}&amp;fileNum=${item.file_num}">${item.file_ori_nm}</a>
                            </span>
                            <a href="#" id="btn_file_del_${item.atch_file_id}_${item.file_num}" class="btn_del">x</a><br/>
                            <img src="${item.file_src}" alt="${bannerVo.alt_txt}">
                        </div>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th class="required">배너 대체 텍스트</th>
                <td>
                    <input type="text" class="wid750" name="alt_txt" id="alt_txt" title="배너 대체 텍스트" value="${bannerVo.alt_txt}">
                </td>
            </tr>
            <tr>
                <th class="required">등록자/최종수정자</th>
                <td>
                    ${bannerVo.reg_id} /
                    <c:choose>
                        <c:when test="${bannerVo.up_id eq '' || bannerVo.up_id eq null}">-</c:when>
                        <c:otherwise>${bannerVo.up_id}</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th class="required">등록일/최종수정일</th>
                <td>
                    ${fn:substring(bannerVo.reg_dt, 0, 10)} /
                    <c:choose>
                        <c:when test="${bannerVo.up_dt eq '' || bannerVo.up_dt eq null}">-</c:when>
                        <c:otherwise>${fn:substring(bannerVo.up_dt, 0, 10)}</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            </tbody>
        </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/banner/main_banner_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn red" id="btn_delete">삭제</a>
                <a href="#none" class="btn grey" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

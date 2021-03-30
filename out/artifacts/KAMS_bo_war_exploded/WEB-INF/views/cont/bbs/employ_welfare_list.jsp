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
<%@taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
<script type="text/javascript">
    $(document).ready(function () {
        /* Date Picker Settings */
        $('#searchSDate').daterangepicker({
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
        $('#searchEDate').daterangepicker({
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

        // 선택 삭제 - 공통 /////////////////////////////////////////////////////////////////////////////////////////////////
        $('#allCheck_Y').click(function(){
            if ($("#allCheck_Y").is(":checked")) {
                $('input:checkbox[name=del_id]').prop("checked", true);
            } else {
                $('input:checkbox[name=del_id]').prop("checked", false);
            }
        });

        $('input:checkbox[name=del_id]').on("click", function(){
            let chk = true;
            $('input:checkbox[name=del_id]').each(function(){
                if (!$(this).is(":checked")) {
                    chk = false;
                }
            });
            $('#allCheck_Y').prop("checked", chk);
        });

        $("#btn_select_del").click(function(){
            let checkCnt = $("input[name=del_id]:checked").size();
            if(checkCnt === 0){
                alert("데이터를 선택해 주세요.");
                return false;
            }

            if(confirm("선택한 데이터를 삭제 하시겠습니까?.")) {
                let data = $("#del_frm").serialize();
                $.ajax({
                    url: '/artmore_adm/ajax/bbs_detail_delete.do',
                    type: 'POST',
                    dataType: 'json',
                    data: data,
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        if (data !== true) {
                            alert("삭제에 실패하였습니다.");
                        } else {
                            alert("삭제 되었습니다.");
                            location.reload();
                        }
                    }
                });
            }
        });
        /////////////////////////////////////////////////////////////////
        // 공통 - 검색 /////////////////////////////////////////////////
        $("#btn_search").click(function(){
            // 소속 검색 조건 정리
            goSearch();
        });

        $("#searchVal").on("keyup", function(event) {
            if (event.keyCode === 13) {
                goSearch();
            }
        });

        $("select[id=listSize_select]").change(function() {
            let listSize = $(this).val();

            $("#page").val("1");
            $("#listSize").val(listSize);

            $("#frm").submit();
        });
        /////////////////////////////////////////////////////////////////
    });

    function goSearch() {
        $("#page").val("1");
        $("#frm").submit();
    }
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="frm" id="frm" method="post" action="/artmore_adm/cont/bbs/employ_welfare_list.do">
        <input type="hidden" name="page" id="page" value="${page}"/>
        <input type="hidden" name="listSize" id="listSize" value="${listSize}"/>
        <article class="contUnit sch_area">
            <h3>
                <span class="material-icons">search</span> Search <small>검색</small>
            </h3>
            <div class="line">
                <div class="formCont">
                    <label for="searchSDate">등록일</label>
                    <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                    <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                    ~
                    <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                    <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                </div>
                <div class="formCont half">
                    <label for="searchKind3">키워드</label>
                    <select id="searchKind3" name="searchKind3" class="wid150">
                        <option value="ALL">전체</option>
                        <option value="1" <c:if test="${searchKind3 eq '1'}">selected="selected"</c:if>>제목</option>
                        <option value="2" <c:if test="${searchKind3 eq '2'}">selected="selected"</c:if>>내용</option>
                        <option value="3" <c:if test="${searchKind3 eq '3'}">selected="selected"</c:if>>등록자</option>
                    </select>
                    <input type="text" class="wid250" name="searchVal" id="searchVal" value="${searchVal}">
                    <a href="#none" class="btn orange" id="btn_search">
                        <span class="material-icons">search</span>
                        검색
                    </a>
                </div>
            </div>
        </article>
    </form>

    <article class="contUnit tbl_area">
        <div class="btnArea mgt0 mgb10 of_h">
            <div class="left">
                <div class="totalNum">
                    총 <b><fmt:formatNumber value="${totalCount}" pattern="##,###"/></b>건
                </div>
            </div>
            <div class="right">
                <select id="listSize_select" title="목록수">
                    <option value="10" <c:if test="${listSize == '10'}">selected="selected"</c:if>>10개</option>
                    <option value="30" <c:if test="${listSize == '30'}">selected="selected"</c:if>>30개</option>
                    <option value="50" <c:if test="${listSize == '50'}">selected="selected"</c:if>>50개</option>
                    <option value="100" <c:if test="${listSize == '100'}">selected="selected"</c:if>>100개</option>
                </select>
            </div>
        </div>
        <form name="del_frm" id="del_frm">
            <table>
                <colgroup>
                    <col style="width:2%">
                    <col style="width:10%">
                    <col>
                    <col style="width:10%">
                    <col style="width:10%">
                    <col style="width:10%">
                </colgroup>
                <thead>
                <tr>
                    <th><input type="checkbox" name="allCheck_Y" id="allCheck_Y"></th>
                    <th>번호</th>
                    <th>제목</th>
                    <th>등록자</th>
                    <th>등록일</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${fn:length(itemList) == 0}">
                    <tr class="noData">
                        <td colspan="6">등록된 데이터가 없습니다.</td>
                    </tr>
                </c:if>
                <c:set var="lno" value="0"/>
                <c:forEach items="${itemList}" var="item" varStatus="status">
                    <c:set var="lno">${lno + 1}</c:set>
                    <c:choose>
                        <c:when test="${item.top_yn eq 'Y'}">
                            <tr class="notice">
                                <td><input type="checkbox" name="del_id" id="del_id_${item.bbs_detail_idx}" value="${item.bbs_detail_idx}"></td>
                                <td><span class="material-icons">mic</span></td>
                                <td class="ta_l">
                                    <div class="line01">
                                        <b class="co_blue">[${item.cate_nm}]</b>
                                        <a href="/artmore_adm/cont/bbs/employ_welfare_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="line">${item.title}</a>
                                        <c:if test="${item.is_new eq 'Y'}"><b class="co_orange">N</b></c:if>
                                    </div>
                                </td>
                                <td>${item.reg_nm}</td>
                                <td>${fn:substring(item.reg_dt, 0, 10)}</td>
                                <td><fmt:formatNumber value="${item.cnt}" pattern="##,###"/></td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td><input type="checkbox" name="del_id" id="del_id_${item.bbs_detail_idx}" value="${item.bbs_detail_idx}"></td>
                                <td>
                                    <fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/>
                                </td>
                                <td class="ta_l">
                                    <div class="line01">
                                        <b class="co_blue">[${item.cate_nm}]</b>
                                        <a href="/artmore_adm/cont/bbs/employ_welfare_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="line">${item.title}</a>
                                        <c:if test="${item.is_new eq 'Y'}"><b class="co_orange">N</b></c:if>
                                    </div>
                                </td>
                                <td>${item.reg_nm}</td>
                                <td>${fn:substring(item.reg_dt, 0, 10)}</td>
                                <td><fmt:formatNumber value="${item.cnt}" pattern="##,###"/></td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                </tbody>
            </table>
        </form>
        <common:pageLinkAdmin name="pageholder"/>
        <div class="btnArea">
            <div class="left">
                <a href="#none" class="btn grey" id="btn_select_del">선택삭제</a>
            </div>
            <div class="right">
                <a href="/artmore_adm/cont/bbs/employ_welfare_inscr.do" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

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
        // 검색 조건중 소속 정보가 있는 경우
        let kind_cd = '${searchKind}';
        let admin_rule_idx = '${searchKind2}';
        if(kind_cd !== '' && admin_rule_idx !== '') {
            let select_val = kind_cd;
            let html = '';
            if(select_val !== '') {
                $.ajax({
                    url: "/artmore_adm/ajax/admin_rule_list.do?kind_cd=" + select_val,
                    type: 'POST',
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        $('#searchKind2').children().remove();
                        html += '<option value="">전체</option>';
                        $.each(data,function(key,v) {
                            let idx = v['admin_rule_idx'];
                            if (idx === Number(admin_rule_idx)) {
                                html += '<option value="' + v['admin_rule_idx'] + '" selected>' + v['grp_nm'] + '</option>';
                            } else {
                                html += '<option value="' + v['admin_rule_idx'] + '">' + v['grp_nm'] + '</option>';
                            }
                        });
                        $('#searchKind2').append(html);
                    }
                });
            }
        } else if(kind_cd !== '') {
            let select_val = kind_cd;
            let html = '';
            if(select_val !== '') {
                $.ajax({
                    url: "/artmore_adm/ajax/admin_rule_list.do?kind_cd=" + select_val,
                    type: 'POST',
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    async: false,
                    success: function (data) {
                        $('#searchKind2').children().remove();
                        html += '<option value="">전체</option>';
                        $.each(data, function (key, v) {
                            html += '<option value="' + v['admin_rule_idx'] + '">' + v['grp_nm'] + '</option>';
                        });
                        $('#searchKind2').append(html);
                    }
                });
            }
        }

        $('#searchKind').change(function() {
            let select_val = $(this).val();
            let html = '';
            if(select_val !== '') {
                $.ajax({
                    url: "/artmore_adm/ajax/admin_rule_list.do?kind_cd=" + select_val,
                    type: 'POST',
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        $('#searchKind2').children().remove();
                        html += '<option value="">전체</option>';
                        $.each(data,function(key,v) {
                            let idx = v['admin_rule_idx'];
                            html += '<option value="' + v['admin_rule_idx'] + '">' + v['grp_nm'] + '</option>';
                        });
                        $('#searchKind2').append(html);
                    }
                });
            } else {
                $('#searchKind2').children().remove();
                html += '<option value="">전체</option>';
                $('#searchKind2').append(html);
            }
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
                alert("삭제 대상을 선택해 주세요.");
                return false;
            }

            if(confirm("선택한 데이터를 삭제 하시겠습니까?.")) {
                let data = $("#ordfrm").serialize();
                $.ajax({
                    url: '/artmore_adm/ajax/admin_rule_delete.do',
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
                    },
                    error:function () {
                        alert("사용중인 권한은 삭제하실 수 없습니다.");
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

        $("select[id=listSize_select]").change(function() {
            let listSize = $(this).val();

            $("#page").val("1");
            $("#listSize").val(listSize);

            $("#frm").submit();
        });
        /////////////////////////////////////////////////////////////////

        // 공통 - 엑셀다운로드 /////////////////////////////////////////////////
        $('#btn_excel').click(function() {
            let param = $("#frm").serialize();
            document.location.href="/artmore_adm/cont/excel/admin_group_list.do?" + param;
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
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${subMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="frm" id="frm" method="post" action="/artmore_adm/cont/basic/admin_grp_list.do">
        <input type="hidden" name="page" id="page" value="${page}"/>
        <input type="hidden" name="listSize" id="listSize" value="${listSize}"/>
    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont">
                <label for="searchKind">유형 및 그룹</label>
                <select id="searchKind" name="searchKind">
                    <option value="">전체</option>
                    <option value="S" <c:if test="${searchKind eq 'S'}">selected="selected"</c:if>>통합관리자</option>
                    <option value="N" <c:if test="${searchKind eq 'N'}">selected="selected"</c:if>>일반관리자</option>
                </select>
                <select id="searchKind2" name="searchKind2">
                    <option value="">전체</option>
                </select>
            </div>
            <div class="formCont">
                <label for="searchKind3">사용여부</label>
                <select name="searchKind3" id="searchKind3" >
                    <option value="">전체</option>
                    <option value="Y" <c:if test="${searchKind3 eq 'Y'}">selected="selected"</c:if>>사용</option>
                    <option value="N" <c:if test="${searchKind3 eq 'N'}">selected="selected"</c:if>>미사용</option>
                </select>
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
            <div class="right mgt10">
                <a href="#none" class="btn sml green" id="btn_excel">
                    <span class="material-icons">file_download</span>
                    엑셀 다운로드
                </a>
            </div>
        </div>
        <form name="ordfrm" id="ordfrm">
        <table>
            <colgroup>
                <%--<col style="width:2%">--%>
                <col style="width:6%">
                <col style="width:20%">
                <col style="width:20%">
                <col>
                <col style="width:20%">
            </colgroup>
            <thead>
            <tr>
                <%--<th><input type="checkbox" name="allCheck_Y" id="allCheck_Y"></th>--%>
                <th>번호</th>
                <th>관리자유형</th>
                <th>관리자그룹</th>
                <th>그룹 설명</th>
                <th>사용여부</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${fn:length(itemList) == 0}">
                <tr class="noData">
                    <td colspan="5">등록된 데이터가 없습니다.</td>
                </tr>
            </c:if>
            <c:set var="lno" value="0"/>
            <c:forEach items="${itemList}" var="item" varStatus="status">
                <c:set var="lno">${lno + 1}</c:set>
                <tr>
                    <%--<td><input type="checkbox" name="del_id" id="del_id_${item.admin_rule_idx}" value="${item.admin_rule_idx}"></td>--%>
                    <td><fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${item.kind_cd eq 'S'}">통합관리자</c:when>
                            <c:otherwise>일반관리자</c:otherwise>
                        </c:choose>
                    </td>
                    <td><a href="/artmore_adm/cont/basic/admin_grp_view.do?admin_rule_idx=${item.admin_rule_idx}" class="line">${item.grp_nm}</a></td>
                    <td class="ta_l">${item.grp_exp}</td>
                    <td>
                        <c:choose>
                            <c:when test="${item.use_yn eq 'Y'}">사용</c:when>
                            <c:otherwise>미사용</c:otherwise>
                        </c:choose>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </form>
        <common:pageLinkAdmin name="pageholder"/>
        <div class="btnArea">
            <div class="left">
                <%--<a href="#none" class="btn grey" id="btn_select_del">선택삭제</a>--%>
            </div>
            <div class="center">
            </div>
            <div class="right">
                <a href="/artmore_adm/cont/basic/admin_grp_inscr.do" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

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

    function pop_cate(idx) {
        var url = "/artmore_adm/popup/bbs/cate_list.do?bbs_idx=" + idx;
        window.open(url, 'pop_cate', 'width=820, height=520, scrollbars=0, toolbar=0, menubar=no');
    }
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="frm" id="frm" method="post" action="/artmore_adm/cont/bbs/bbs_mng_list.do">
        <input type="hidden" name="page" id="page" value="${page}"/>
        <input type="hidden" name="listSize" id="listSize" value="${listSize}"/>
    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont full">
                <label for="searchKind">키워드</label>
                <select id="searchKind" name="searchKind" class="wid150">
                    <option value="ALL" <c:if test="${searchKind eq 'ALL'}">selected="selected"</c:if>>전체</option>
                    <option value="1" <c:if test="${searchKind eq '1'}">selected="selected"</c:if>>게시판명</option>
                    <option value="2" <c:if test="${searchKind eq '2'}">selected="selected"</c:if>>사용자 경로</option>
                </select>
                <input type="text" name="searchVal" id="searchVal" class="wid250" value="${searchVal}">
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
        <table>
            <colgroup>
                <col style="width:2%">
                <col style="width:35%">
                <col>
                <col style="width:20%">
            </colgroup>
            <thead>
            <tr>
                <th>번호</th>
                <th>게시판명</th>
                <th>사용자 경로</th>
                <th>관리</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${fn:length(itemList) == 0}">
                <tr class="noData">
                    <td colspan="4">등록된 데이터가 없습니다.</td>
                </tr>
            </c:if>
            <c:set var="lno" value="0"/>
            <c:forEach items="${itemList}" var="item" varStatus="status">
                <c:set var="lno">${lno + 1}</c:set>
                <tr>
                    <td><fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/></td>
                    <td class="ta_c"><a href="/artmore_adm/cont/bbs/bbs_mng_upscr.do?bbs_idx=${item.bbs_idx}">${item.name}</a></td>
                    <td class="ta_l">${item.home_path}</td>
                    <td><a href="#none" class="btn sml grey" onclick="pop_cate('${item.bbs_idx}')">카테고리 관리</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <common:pageLinkAdmin name="pageholder"/>
    </article>
</div>

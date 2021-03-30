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
        <table>
            <colgroup>
                <col style="width:15%">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th class="required">사용여부</th>
                <td>
                    <c:choose>
                        <c:when test="${adminVo.use_yn eq 'Y'}">사용</c:when>
                        <c:otherwise>미사용</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th class="required">관리자유형</th>
                <td>
                    <c:choose>
                        <c:when test="${adminVo.kind_cd eq 'S'}">통합관리자</c:when>
                        <c:otherwise>일반관리자</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th class="required">관리자그룹</th>
                <td>${adminVo.grp_nm}</td>
            </tr>
            <tr>
                <th class="required">성명</th>
                <td>${adminVo.name}</td>
            </tr>
            <tr>
                <th class="required">아이디</th>
                <td>
                    ${adminVo.admin_id}
                    <%--<p class="co_red">※ 초기 비밀번호는 아이디와 동일합니다. 로그인 후 반드시 비밀번호변경을 권유해주세요.</p>--%>
                </td>
            </tr>
            <tr>
                <th class="required">부서명</th>
                <td>${adminVo.part_nm}</td>
            </tr>
            </tbody>
        </table>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/basic/admin_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <%--<a href="#none" class="btn grey">삭제</a>--%>
                <a href="/artmore_adm/cont/basic/admin_upscr.do?admin_id=${adminVo.admin_id}" class="btn red">수정</a>
            </div>
        </div>
    </article>
</div>

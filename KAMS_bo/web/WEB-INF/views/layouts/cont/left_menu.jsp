<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- 왼쪽 메뉴(S) -->
<aside class="leftMenu">
    <ul class="menu">
        <c:forEach items="${topMenuList}" var="topMenu_item">
        <li>
            <a href="#none" id="${topMenu_item.menu_idx}" <c:if test="${topMenu_item.menu_idx eq topMenu.menu_idx}">class="on"</c:if>>${topMenu_item.name}</a>
            <ul class="subMenu<c:if test="${topMenu_item.menu_idx eq topMenu.menu_idx}"> on</c:if>">
                <c:forEach items="${topMenu_item.sublist}" var="sub">
                        <c:choose>
                            <c:when test="${fn:length(sub.sublist) != 0}">
                            <li>
                                <a href="#none" class="hasSub <c:if test="${subMenu.menu_idx eq sub.menu_idx}">on</c:if>" id="subMenu_${sub.menu_idx}">${sub.name}</a>
                                <ul class="finMenu <c:if test="${sub.menu_idx eq subMenu.menu_idx}"> on</c:if>">
                                    <c:forEach items="${sub.sublist}" var="child">
                                        <li <c:if test="${currentMenu.menu_idx eq child.menu_idx}">class="on"</c:if>>
                                            <a href="${child.url}" <c:if test="${child.kind eq 'LINK'}">target="_blank"</c:if>>${child.name}</a>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </li>
                            </c:when>
                            <c:otherwise>
                            <li <c:if test="${currentMenu.menu_idx eq sub.menu_idx}">class="on"</c:if>>
                                <a href="${sub.url}">${sub.name}</a>
                            </li>
                            </c:otherwise>
                        </c:choose>
                </c:forEach>
            </ul>
        </li>
        </c:forEach>
    </ul>
</aside>
<!-- //좌측 영역 -->

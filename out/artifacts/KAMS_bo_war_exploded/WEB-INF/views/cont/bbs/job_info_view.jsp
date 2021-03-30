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
        <table>
            <colgroup>
                <col style="width:15%">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>공지여부</th>
                <td>공지</td>
            </tr>
            <tr>
                <th>노출여부</th>
                <td>공개</td>
            </tr>
            <tr>
                <th>제목</th>
                <td>제목입니다.</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    내용입니다.<br>
                    내용입니다.<br>
                    내용입니다.
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td>
                    <span class="material-icons">attach_file</span>
                    파일명이 표시됩니다.
                </td>
            </tr>
            <tr>
                <th>등록자/최종수정자</th>
                <td>홍길동/-</td>
            </tr>
            <tr>
                <th>등록일/최종수정일</th>
                <td>2021-01-01/-</td>
            </tr>
            <tr>
                <th>조회수</th>
                <td>666</td>
            </tr>
            </tbody>
        </table>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/bbs/job_info_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn grey">삭제</a>
                <a href="/artmore_adm/cont/bbs/job_info_upscr.do" class="btn red">수정</a>
            </div>
        </div>
    </article>
</div>

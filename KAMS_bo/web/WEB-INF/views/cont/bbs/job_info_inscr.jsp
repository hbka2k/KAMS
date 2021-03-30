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
                <th class="required">공지여부</th>
                <td>
                    <input type="checkbox" id="checkbox_01">
                    <label for="checkbox_01">전체공지</label>
                    <p class="co_lightGrey mgt10">
                        ※ 체크 시 해당 게시판 최상단에 노출됩니다.
                    </p>
                </td>
            </tr>
            <tr>
                <th class="required">노출여부</th>
                <td>
                    <input type="radio" name="radio01" id="radio01_01">
                    <label for="radio01_01">공개</label>
                    <input type="radio" name="radio01" id="radio01_02">
                    <label for="radio01_02">비공개</label>
                </td>
            </tr>
            <tr>
                <th class="required">제목</th>
                <td>
                    <input type="text" class="wid100per">
                </td>
            </tr>
            <tr>
                <th class="required">내용</th>
                <td>
                    editor
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td>
                    <input type="file" class="wid300">
                    <button class="btn sml grey circle"><span class="material-icons">add</span></button>

                    <p class="co_lightGrey mgt10">
                        ※ 파일형식 : hwp, ppt, pptx, xls, xlsx, doc, docx, jpg, jpeg, png, gif<br>
                        ※ 최대 10개까지 첨부 가능합니다.
                    </p>

                    <div class="mgt10">
                        <span class="material-icons">attach_file</span>
                        파일명이 표시됩니다.pdf <button class="co_red mgl10">X</button>
                    </div>
                    <div class="mgt10">
                        <span class="material-icons">attach_file</span>
                        파일명이 표시됩니다.pdf <button class="co_red mgl10">X</button>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/bbs/job_info_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

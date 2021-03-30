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
                <th class="required">코드명</th>
                <td>
                    <input type="text" class="wid300" placeholder="코드명 입력">
                </td>
            </tr>
            <tr>
                <th class="required">코드</th>
                <td>
                    <input type="text" class="wid300" placeholder="코드 입력">
                    <span class="co_blue">등록 가능한 코드입니다.</span>
                    <span class="co_red">사용 중인 코드입니다.</span>
                </td>
            </tr>
            <tr>
                <th class="required">상위코드</th>
                <td>
                    <select class="wid300">
                        <option>1차 분류</option>
                    </select>
                    <select class="wid300">
                        <option>2차 분류</option>
                    </select>
                    <select class="wid300">
                        <option>3차 분류</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th class="required">사용여부</th>
                <td>
                    <input type="radio" name="radio01" id="radio01_01">
                    <label for="radio01_01">사용</label>
                    <input type="radio" name="radio01" id="radio01_02">
                    <label for="radio01_02">미사용</label>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/basic/genre_code_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn grey">취소</a>
                <a href="#none" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

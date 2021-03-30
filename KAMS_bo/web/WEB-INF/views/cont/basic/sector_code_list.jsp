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

    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont full">
                <label for="sel01_01">키워드</label>
                <select id="sel01_01" class="wid150">
                    <option>전체 Depth</option>
                </select>
                <select id="sel01_02" class="wid150">
                    <option>전체</option>
                </select>
                <input type="text" id="keyword_01" class="wid200">
                <a href="#none" class="btn orange">
                    <span class="material-icons">search</span>
                    검색
                </a>
            </div>
        </div>
    </article>

    <article class="contUnit tbl_area">
        <div class="btnArea mgt0 mgb10 of_h">
            <div class="left">
                <div class="totalNum">
                    총 <b>999</b>건
                </div>
            </div>
            <div class="right">
                <select>
                    <option>10개</option>
                    <option>30개</option>
                    <option>50개</option>
                    <option>100개</option>
                </select>
            </div>
        </div>
        <table>
            <colgroup>
                <col style="width:2%">
                <col style="width:15%">
                <col style="width:15%">
                <col style="width:15%">
                <col>
                <col style="width:15%">
                <col style="width:15%">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" id="allCheck"></th>
                <th>코드</th>
                <th>코드명</th>
                <th>상위코드</th>
                <th>상위코드명</th>
                <th>사용여부</th>
                <th>등록일</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="checkbox"></td>
                <td>SDA</td>
                <td>코드명 1차</td>
                <td>SDA > SDB> DSDC</td>
                <td>코드명1차 > 코드명2차 > 코드명3차</td>
                <td>사용</td>
                <td>2021-01-01</td>
            </tr>
            <tr class="noData">
                <td colspan="7">등록된 데이터가 없습니다.</td>
            </tr>
            </tbody>
        </table>
        <div class="paginArea">
            <ul class="pagination">
                <li class="first">
                    <a href="#none"><span class="material-icons">keyboard_arrow_left</span><span class="material-icons">keyboard_arrow_left</span></a>
                </li>
                <li class="prev">
                    <a href="#none"><span class="material-icons">keyboard_arrow_left</span></a>
                </li>
                <li><a href="#none">1</a></li>
                <li class="on"><a href="#none">2</a></li>
                <li><a href="#none">3</a></li>
                <li><a href="#none">4</a></li>
                <li><a href="#none">5</a></li>
                <li><a href="#none">6</a></li>
                <li><a href="#none">7</a></li>
                <li><a href="#none">8</a></li>
                <li><a href="#none">9</a></li>
                <li><a href="#none">10</a></li>
                <li class="next">
                    <a href="#none"><span class="material-icons">keyboard_arrow_right</span></a>
                </li>
                <li class="last">
                    <a href="#none"><span class="material-icons">keyboard_arrow_right</span><span class="material-icons">keyboard_arrow_right</span></a>
                </li>
            </ul>
        </div>
        <div class="btnArea">
            <div class="left">
                <a href="#none" class="btn grey">선택삭제</a>
            </div>
            <div class="right">
                <a href="/artmore_adm/cont/basic/sector_code_inscr.do" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

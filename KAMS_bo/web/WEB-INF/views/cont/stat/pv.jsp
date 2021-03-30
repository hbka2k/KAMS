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

    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont half">
                <label for="datepicker_01">기간 선택</label>
                <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                ~
                <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
            </div>
            <div class="formCont">
                <label for="sel01_02">목록 정렬</label>
                <select id="sel01_02" class="wid150">
                    <option>오름차순</option>
                    <option>내림차순</option>
                </select>
            </div>
        </div>
        <div class="line">
            <div class="formCont full">
                <label for="sel2_01">메뉴 선택</label>
                <select id="sel2_01" class="wid150">
                    <option>대메뉴 선택</option>
                </select>
                <select id="sel02_02" class="wid150">
                    <option>중메뉴 선택</option>
                </select>
                <select id="sel02_03" class="wid150">
                    <option>소메뉴 선택</option>
                </select>
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
                <col style="width:10%">
                <col>
                <col style="width:10%">
            </colgroup>
            <thead>
            <th>번호</th>
            <th>메뉴</th>
            <th>PV</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>999</td>
                <td class="ta_l">공지사항(아트모아 안내>공지사항)</td>
                <td>999</td>
            </tr>
            <tr class="noData">
                <td colspan="3">등록된 데이터가 없습니다.</td>
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
    </article>

</div>

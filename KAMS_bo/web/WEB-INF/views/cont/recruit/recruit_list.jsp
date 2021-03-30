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
            <div class="formCont">
                <label for="datepicker_01">등록일</label>
                <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                ~
                <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
            </div>
            <div class="formCont">
                <label for="datepicker_02">마감일</label>
                <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                ~
                <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
            </div>
        </div>
        <div class="line">
            <div class="formCont full">
                <label for="sel01_01">키워드</label>
                <select id="sel01_01" class="wid150">
                    <option>전체</option>
                </select>
                <select id="sel01_01" class="wid150">
                    <option>전체</option>
                    <option>진행중</option>
                    <option>접수마감</option>
                    <option>채용종료</option>
                    <option>워크넷</option>
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
                    총 <b>999</b>명
                </div>
            </div>
            <%--<div class="center">
                <a href="#none" class="btn sml green">
                    <span class="material-icons">file_download</span>
                    엑셀 다운로드
                </a>
            </div>--%>
            <div class="right">
                <input type="checkbox" id="checkboxEnd">
                <label for="checkboxEnd">마감 제외</label>

                <select>
                    <option>등록일↑</option>
                    <option>등록일↓</option>
                    <option>마감일↑</option>
                    <option>마감일↓</option>
                </select>
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
                <col>
                <col style="width:20%">
                <col style="width:10%">
                <col style="width:10%">
                <col style="width:10%">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" id="allCheck"></th>
                <th>기업명</th>
                <th>제목</th>
                <th>장르/업종</th>
                <th>지역</th>
                <th>등록일/마감일</th>
                <th>출처</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="checkbox"></td>
                <td>재 중구문화재단</td>
                <td class="ta_l">서울형 뉴딜일자리 「도심지역특화 문화기획자 양성사업」 참여자 추가 모집 공고</td>
                <td>
                    공연예술 > 연극/뮤지컬분야<br>
                    자영예술업 > 연극/뮤지컬 분야
                </td>
                <td>서울 송파구</td>
                <td>
                    2020-01-01<br>
                    2020-01-18
                </td>
                <td>워크넷</td>
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
                <%--<a href="#none" class="btn grey">선택삭제</a>--%>
            </div>
            <div class="right">
            </div>
        </div>
    </article>
</div>

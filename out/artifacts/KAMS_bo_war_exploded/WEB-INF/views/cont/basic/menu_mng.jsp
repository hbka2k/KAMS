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

    <article class="halfArea">
        <article class="contUnit half tbl_area leftType">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h4>메뉴선택</h3>
                </div>
                <div class="right">
                    <a href="#none" class="js_treeExpand">
                        <span class="material-icons">expand</span> 전체열기
                    </a>
                    <a href="#none" class="js_treeCollapse">
                        <span class="material-icons">compress</span> 전체닫기
                    </a>
                </div>
            </div>
            <article class="treeUnit">
                <ul>
                    <li>
                        <p>전체메뉴</p>
                        <ul>
                            <li>
                                <p>모아안내</p>
                                <ul>
                                    <li><p>아트모아는?</p></li>
                                    <li><p>매칭스토리</p></li>
                                    <li><p>이용안내</p></li>
                                </ul>
                            </li>
                            <li>
                                <p>채용정보</p>
                                <ul>
                                    <li>
                                        <p>채용검색</p>
                                        <ul>
                                            <li>
                                                <p>인재검색</p>
                                                <ul>
                                                    <li>
                                                        <p>기업 정보</p>
                                                        <ul>
                                                            <li><p>아트모아는?</p></li>
                                                            <li><p>매칭스토리</p></li>
                                                            <li>
                                                                <p>이용안내</p>
                                                                <ul>
                                                                    <li><p>기업 정보</p></li>
                                                                    <li><p>기업 탐방</p></li>
                                                                    <li><p>직업 정보</p></li>
                                                                    <li><p>취업 큐레이션</p></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li><p>기업 탐방</p></li>
                                                    <li><p>직업 정보</p></li>
                                                    <li><p>취업 큐레이션</p></li>
                                                </ul>
                                            </li>
                                            <li><p>장르별</p></li>
                                            <li><p>업종별</p></li>
                                            <li><p>지역별</p></li>
                                        </ul>
                                    </li>
                                    <li><p>장르별</p></li>
                                    <li><p>업종별</p></li>
                                    <li><p>지역별</p></li>
                                    <li><p>채용캘린더</p></li>
                                </ul>
                            </li>
                            <li>
                                <p>인재정보</p>
                                <ul>
                                    <li><p>인재검색</p></li>
                                    <li><p>장르별</p></li>
                                    <li><p>업종별</p></li>
                                    <li><p>지역별</p></li>
                                </ul>
                            </li>
                            <li>
                                <p>기업/직업정보</p>
                                <ul>
                                    <li><p>기업 정보</p></li>
                                    <li><p>기업 탐방</p></li>
                                    <li><p>직업 정보</p></li>
                                    <li><p>취업 큐레이션</p></li>
                                </ul>
                            </li>
                            <li>
                                <p>뉴스자료</p>
                                <ul>
                                    <li><p>취업 뉴스</p></li>
                                    <li><p>자료실</p></li>
                                    <li><p>취업 도우미</p></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </article>
        </article>

        <article class="contUnit half tbl_area leftType">
            <!--
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h4>기본설정</h3>
                </div>
                <div class="right">
                    <span class="co_red">*</span> 필수입력
                </div>
            </div>
            <div>
                <table>
                    <colgroup>
                        <col style="width:25%">
                        <col>
                    </colgroup>
                    <tbody>
                        <tr>
                            <th class="required">메뉴 명</th>
                            <td>
                                <input type="text" class="wid300" id="menuName" placeholder="메뉴명 입력">
                            </td>
                        </tr>
                        <tr>
                            <th class="required">사용여부</th>
                            <td>
                                <input type="radio" name="radio02_01" id="radio02_01_01" checked><label for="radio02_01_01">사용</label>
                                <input type="radio" name="radio02_01" id="radio02_01_02"><label for="radio02_01_02">미사용</label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="btnArea">
                    <a href="#none" class="btn red">저장</a>
                </div>
            </div>
            -->
            <iframe src="admin-01-기본관리-메뉴관리-form.html" class="menuIframe"></iframe>
        </article>
    </article>
</div>

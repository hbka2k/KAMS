<%--
  Created by IntelliJ IDEA.
  User: gtlif
  Date: 2021-03-29
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
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
        /////////////////////////////////////////////////////////////////
    })

    function goSearch() {
        $("#page").val("1");
        $("#frm").submit();
    }
</script>

<!--Contents {-->
<div id="employ_data" class="sub">
    <div class="sub_visual sub_visual05">
        <div class="wrapper">
            <p class="sub_vs_title">뉴스/자료</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">뉴스/자료</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel" onchange="location.href=value">
                            <option value="/sub/news/news_list.do">고용복지 정책안내</option>
                            <option value="/sub/news/employ_list.do">고용복지 정책안내</option>
                            <option value="/sub/news/data_room_list.do" selected>자료실</option>
                            <option value="/sub/news/help_cal.do">취업 도우미</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">자료실</p>

            <form name="frm" id="frm" method="get" action="/sub/news/data_room_list.do">
                <input type="hidden" name="page" id="page" value="${page}"/>
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b><fmt:formatNumber value="${totalCount}" pattern="##,###"/></b>건</span>
                    <div class="bo_sch_box">
                        <select name="searchKind3" id="searchKind3" class="i-select bo_sch_sel" title="검색조건">
                            <option value="ALL" <c:if test="${searchKind3 eq 'ALL'}">selected="selected"</c:if>>제목+내용</option>
                            <option value="1" <c:if test="${searchKind3 eq '1'}">selected="selected"</c:if>>제목</option>
                            <option value="2" <c:if test="${searchKind3 eq '2'}">selected="selected"</c:if>>내용</option>
                        </select>
                        <input type="text" class="bo_sch_inpt" name="searchVal" id="searchVal" value="${searchVal}" title="검색어 입력">
                        <button class="bo_sch_btn" id="btn_search"><img src="/resources/images/hd_sch_icon.png" alt="검색 버튼"></button>
                    </div>
                </div>
            </form>

                <div class="board_list_wrap">
                    <table class="board_tb notice_tb">
                        <caption>공지사항 게시글 목록</caption>

                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>등록일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:if test="${fn:length(itemList) == 0}">
                                <tr>
                                    <td colspan="4">등록된 데이터가 없습니다.</td>
                                </tr>
                            </c:if>
                            <c:set var="lno" value="0"/>
                            <c:forEach items="${itemList}" var="item" varStatus="status">
                                <c:set var="lno">${lno + 1}</c:set>
                                <tr>
                                    <td><fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/></td>
                                    <td class="ta_l">
                                        <a href="/sub/news/data_room_view.do?bbs_detail_idx=${item.bbs_detail_idx}">
                                                ${item.title}
                                                <%--<ul class="bo_icon_ul">
                                                    <li><img src="/resources/images/board_secret_icon.png" alt=""></li>
                                                    <li><img src="/resources/images/board_file_icon.png" alt=""></li>
                                                </ul>--%>
                                        </a>
                                    </td>
                                    <td>${fn:substring(item.reg_dt, 0, 10)}</td>
                                    <td><fmt:formatNumber value="${item.cnt}" pattern="##,###"/></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="board_list_bot">
                    <common:pageLink name="pageholder"/>
                </div>

            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
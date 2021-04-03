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
<div id="em_comp_tour" class="sub">
    <div class="sub_visual sub_visual04">
        <div class="wrapper">
            <p class="sub_vs_title">기업/직업 정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel" title="">
                            <option value="">기업/직업 정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel" onchange="location.href=value" title="">
                            <option value="/sub/comJob/com_info_list.do">기업정보</option>
                            <option value="/sub/comJob/com_visit_list.do" selected>기업탐방</option>
                            <option value="/sub/comJob/job_info_list.do">직업정보</option>
                            <option value="/sub/comJob/job_curation_list.do">직업 큐레이션</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">기업 탐방</p>

            <div class="board_wrap webzine_bo_wrap">
                <form name="frm" id="frm" method="get" action="/sub/comJob/com_visit_list.do">
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

                <div class="gallery_list_wrap">
                    <!--loop {-->

                    <!--} loop-->

                    <c:if test="${fn:length(itemList) == 0}">
                        <div class="gallery_list" style="width:100%;text-align:center;">
                            등록된 데이터가 없습니다.
                        </div>
                    </c:if>
                    <c:set var="lno" value="0"/>
                    <c:forEach items="${itemList}" var="item" varStatus="status">
                        <c:set var="lno">${lno + 1}</c:set>
                        <div class="gallery_list">
                            <div class="gallery_list_inner">
                                <a href="/sub/comJob/com_visit_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="gallery_thumb">
                                    <img src="/resources/images/t-matching_thumb01.jpg">
<%--                                    <img src="${item.banner_idx}" alt="">--%>
                                    <div class="gallery_over_box"></div>
                                </a>
                                <a href="/sub/comJob/com_visit_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="gallery_title">${item.title}</a>
                                <p class="gallery_date">${fn:substring(item.reg_dt, 0, 10)}</p>
                            </div>
                        </div>
                    </c:forEach>
                </div><!--gallery_list_wrap-->

                <div class="board_list_bot">
                    <common:pageLink name="pageholder"/>
                </div>
            </div><!--board_wrap-->

        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
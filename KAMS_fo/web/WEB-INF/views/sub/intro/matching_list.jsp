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
<div id="matching" class="sub">
    <div class="sub_visual sub_visual01">
        <div class="wrapper">
            <p class="sub_vs_title">모아안내</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">모아안내</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel" onchange="location.href=value">
                            <option value="/sub/intro/about_artmore.do">아트모아는?</option>
                            <option value="/sub/intro/matching_list.do" selected>매칭 스토리</option>
                            <option value="/sub/intro/use_info.do">이용안내</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">매칭 스토리</p>

            <div class="board_wrap gallery_bo_wrap">
                <form name="frm" id="frm" method="get" action="/sub/intro/matching_list.do">
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
                                <a href="/sub/intro/matching_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="gallery_thumb">
                                    <img src="/resources/images/t-matching_thumb01.jpg" alt="">
                                    <div class="gallery_over_box"></div>
                                </a>
                                <a href="/sub/intro/matching_view.do" class="gallery_title">${item.title}</a>
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
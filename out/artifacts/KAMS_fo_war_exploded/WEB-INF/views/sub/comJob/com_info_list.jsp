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
<div id="em_comp_info" class="sub">
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
                            <option value="/sub/comJob/com_info_list.do" selected>기업정보</option>
                            <option value="/sub/comJob/com_visit_list.do">기업탐방</option>
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
            <p class="sub_title">기업 정보</p>

            <div class="em_comp_sch_wrap">
                <form name="frm" id="frm" method="get" action="/sub/comJob/com_info_list.do">
                    <input type="hidden" name="page" id="page" value="${page}"/>
                    <div class="em_comp_sch">
                        <div class="em_comp_sch_box em_comp_sch_genre cf">
                            <span class="em_comp_sch_subj">장르별</span>
                            <div class="em_comp_sch_cont">
                                <select name="" id="" class="i-select" title="">
                                    <option value="">장르</option>
                                </select>
                                <select name="" id="" class="i-select" title="">
                                    <option value="">세부 장르</option>
                                </select>
                            </div>
                        </div>
                        <div class="em_comp_sch_box em_comp_sch_business cf">
                            <span class="em_comp_sch_subj">업종별</span>
                            <div class="em_comp_sch_cont">
                                <select name="" id="" class="i-select" title="">
                                    <option value="">업종</option>
                                </select>
                                <select name="" id="" class="i-select" title="">
                                    <option value="">세부 장르</option>
                                </select>
                            </div>
                        </div>
                        <div class="em_comp_sch_box em_comp_schbar cf">
                            <span class="em_comp_sch_subj">검색어</span>
                            <div class="em_comp_sch_cont">
                                <input type="text" name="" class="i-inpt em_comp_sch_inpt" title="">
                                <button class="em_comp_sch_btn">검색하기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="board_wrap card2_bo_wrap">
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b><fmt:formatNumber value="${totalCount}" pattern="##,###"/></b>건</span>
                </div>

                <div class="card2_list_wrap">
                    <c:if test="${fn:length(itemList) == 0}">
                        <div class="card2_list" style="width:100%;text-align:center;">
                            등록된 데이터가 없습니다.
                        </div>
                    </c:if>
                    <c:set var="lno" value="0"/>
                    <c:forEach items="${itemList}" var="item" varStatus="status">
                        <c:set var="lno">${lno + 1}</c:set>
                        <div class="card2_list">
                            <div class="card2_list_inner">
                                <a href="/sub/comJob/com_info_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="card2_thumb">
                                    <img src="/resources/images/t-em_comp_logo01.jpg" alt="">
                                </a>
                                <a href="/sub/comJob/com_info_view.do?bbs_detail_idx=${item.bbs_detail_idx}" class="card2_title">${item.title}</a>
                            </div>
                        </div>
                    </c:forEach>
                </div><!--webzine_list_wrap-->

                <div class="board_list_bot">
                    <common:pageLink name="pageholder"/>
                </div>
            </div><!--board_wrap-->

        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
<%--
  Created by IntelliJ IDEA.
  User: gtlif
  Date: 2021-03-29
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
<script type="text/javascript">
    $(document).ready(function(){
        $(".qna_list_ul").on("click", ".qna_q", function(){
            $(this).toggleClass("active").siblings(".qna_a").slideToggle(200).parents("li").siblings().find(".qna_q").removeClass("active").siblings(".qna_a").slideUp(200);
        })

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
<div id="qna" class="sub">
    <div class="sub_visual sub_visual06">
        <div class="wrapper">
            <p class="sub_vs_title">커뮤니티</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">커뮤니티</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="" selected>자주하는 질문</option>
                            <option value="">1:1 온라인 문의</option>
                            <option value="">공지사항</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">자주하는 질문</p>

            <div class="board_tb_wrap notice_tb_wrap">
                <form name="frm" id="frm" method="get" action="/sub/community/faq.do">
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

                <div class="qna_list_warp">
                    <ul class="qna_list_ul">
                        <c:if test="${fn:length(itemList) == 0}">
                            <li>
                                <div class="qna_a" style="display:block;text-align:center;">
                                    <div class="qna_txt">
                                        등록된 데이터가 없습니다.
                                    </div>
                                </div>
                            </li>
                        </c:if>
                        <c:set var="lno" value="0"/>
                        <c:forEach items="${itemList}" var="item" varStatus="status">
                            <c:set var="lno">${lno + 1}</c:set>
                            <li>
                                <div class="qna_q">
                                    <div class="qna_txt">
                                        <span class="qna_q_sym">Q.</span>
                                        ${item.title}
                                    </div>
                                    <i class="arrow down"></i>
                                </div>
                                <div class="qna_a">
                                    <div class="qna_txt">
                                        <span class="qna_a_sym">A.</span>
                                        ${item.cont}
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </div>

                <div class="board_list_bot">
                    <common:pageLink name="pageholder"/>
                </div>

            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
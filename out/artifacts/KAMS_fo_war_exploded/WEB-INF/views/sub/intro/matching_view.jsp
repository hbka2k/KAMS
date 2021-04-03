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
<script type="text/javascript">
    $(document).ready(function () {
    });
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

            <div class="board_view">
                <div class="bo_v_top cf">
                    <p class="bo_v_title">${bbsDetailVo.title}</p>
                    <span class="bo_v_date">${fn:substring(bbsDetailVo.reg_dt, 0, 10)}</span>
                </div>

                <div class="bo_v_file">
                    <ul class="bo_v_file_ul">
                        <c:forEach items="${bbsDetailVo.fileList}" var="item" varStatus="status">
                            <c:if test="${item != null}">
                                <li>
                                    <a href="/file/fileDown.do?atchFileId=${item.atch_file_id}&amp;fileNum=${item.file_num}">
                                        <img src="/resources/images/file_icon01.png" alt="${item.file_ori_nm}">${item.file_ori_nm}
                                    </a>
                                </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>

                <div class="bo_v_cont">
                    ${bbsDetailVo.cont}
                </div>

                <div class="bo_v_bot">
                    <div class="bo_v_btn">
                        <ul class="bo_v_btn_ul">
                            <c:choose>
                                <c:when test="${bbsDetailVo.prev ne null}">
                                    <li class="bo_v_arrow bo_v_prev"><a href="/sub/intro/matching_view.do?bbs_detail_idx=${bbsDetailVo.prev.bbs_detail_idx}"><i class="arrow left"></i></a></li>
                                </c:when>
                                <c:otherwise>
                                    <%--<li class="bo_v_arrow bo_v_prev"><a href="#none"><i class="arrow left"></i></a></li>--%>
                                </c:otherwise>
                            </c:choose>
                            <li class="bo_v_list"><a href="/sub/intro/matching_list.do">목록</a></li>
                            <c:choose>
                                <c:when test="${bbsDetailVo.next ne null}">
                                    <li class="bo_v_arrow bo_v_next"><a href="/sub/intro/matching_view.do?bbs_detail_idx=${bbsDetailVo.next.bbs_detail_idx}"><i class="arrow right"></i></a></li>
                                </c:when>
                                <c:otherwise>
                                    <%--<li class="bo_v_arrow bo_v_prev"><a href="#none"><i class="arrow left"></i></a></li>--%>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
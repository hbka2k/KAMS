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
<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<!--Contents {-->
<div id="employ_welfare_view" class="sub">
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
                        <select class="sub_location_sel">
                            <option value="">고용복지 정책안내</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">고용복지 정책안내</p>

            <div class="board_view">
                <p class="bo_title">고용복지 정책안내</p>

                <div class="bo_v_top cf">
                    <p class="bo_v_title">게시판 제목 영역입니다.</p>
                    <span class="bo_v_date">2021.01.01</span>
                </div>

                <div class="bo_v_file">
                    <ul class="bo_v_file_ul">
                        <li><a href=""><img src="/resources/images/file_icon01.png" alt="첨부파일.jpg">첨부파일.jpg</a></li>
                    </ul>
                </div>

                <div class="bo_v_cont">
                    게시판 내용이 노출됩니다. <br>
                    게시판 내용이 노출됩니다.
                </div>

                <div class="bo_v_bot">
                    <div class="bo_v_btn">
                        <ul class="bo_v_btn_ul">
                            <li class="bo_v_arrow bo_v_prev"><a href=""><i class="arrow left"></i></a></li>
                            <li class="bo_v_list"><a href="/sub/news/employ_list.do">목록</a></li>
                            <li class="bo_v_arrow bo_v_next"><a href=""><i class="arrow right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
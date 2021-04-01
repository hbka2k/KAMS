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
                        <select class="sub_location_sel">
                            <option value="">취업 뉴스</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">자료실</p>

            <div class="bo_category cf">
                <span class="bo_category_title">양식선택</span>
                <ul class="bo_category_ul child4">
                    <li class="active"><a href="">전체</a></li>
                    <li><a href="">이력서 양식</a></li>
                    <li><a href="">경력 기술서</a></li>
                    <li><a href="">기타 서식</a></li>
                </ul>
            </div>

            <div class="board_tb_wrap notice_tb_wrap">
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>21</b>건</span>
                    <div class="bo_sch_box">
                        <form action="">
                            <select name="" id="" class="i-select bo_sch_sel">
                                <option value="">제목+내용</option>
                            </select>
                            <input type="text" class="bo_sch_inpt">
                            <button class="bo_sch_btn"><img src="/resources/images/hd_sch_icon.png" alt="검색 버튼"></button>
                        </form>
                    </div>
                </div>

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
                            <!--loop {-->
                            <tr>
                                <td>21</td>
                                <td class="ta_l"><a href="/sub/news/data_room_view.do">자료실 제목이 노출되는 영역입니다.</a></td>
                                <td>2021.01.01</td>
                                <td>10</td>
                            </tr>
                            <!--} loop-->
                            <tr>
                                <td>20</td>
                                <td class="ta_l">
                                    <a href="/sub/news/data_room_view.do">
                                        자료실 제목이 노출되는 영역입니다.
                                        <ul class="bo_icon_ul">
                                            <li><img src="/resources/images/board_secret_icon.png" alt=""></li>
                                            <li><img src="/resources/images/board_file_icon.png" alt=""></li>
                                        </ul>
                                    </a>
                                </td>
                                <td>2021.01.01</td>
                                <td>20</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="board_list_bot">
                    <div class="paging">
                        <ul class="paging_ul">
                            <li class="paging_prev"><a href=""><i class="arrow left"></i></a></li>
                            <li class="paging_active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">4</a></li>
                            <li><a href="">5</a></li>
                            <li class="paging_next"><a href=""><i class="arrow right"></i></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
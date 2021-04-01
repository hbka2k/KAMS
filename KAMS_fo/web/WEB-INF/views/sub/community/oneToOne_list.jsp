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
<div id="inq" class="sub">
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
                            <option value="">자주하는 질문</option>
                            <option value="" selected>1:1 온라인 문의</option>
                            <option value="">공지사항</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">1:1 온라인 문의</p>

            <div class="board_tb_wrap inq_tb_wrap">
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>21</b>건</span>
                    <div class="bo_sch_box">
                        <form action="">
                            <select name="" id="" class="i-select bo_sch_sel">
                                <option value="">제목+내용</option>
                                <option value="">제목</option>
                                <option value="">내용</option>
                            </select>
                            <input type="text" class="bo_sch_inpt">
                            <button class="bo_sch_btn"><img src="/resources/images/hd_sch_icon.png" alt="검색 버튼"></button>
                        </form>
                    </div>
                </div>

                <table class="board_tb inq_tb">
                    <caption>1:1 온라인 문의 게시글 목록</caption>

                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>제목</th>
                            <th>작성자</th>
                            <th>등록일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--loop {-->
                        <tr>
                            <td>21</td>
                            <td class="ta_l">
                                <a href="/sub/community/oneToOne_view.do" class="bo_subj">
                                    <p class="bo_subj_txt"><span class="bo_cate">[이용문의]</span>온라인 문의입니다.</p>
                                    <ul class="bo_icon_ul">
                                        <li><img src="/resources/images/board_secret_icon.png" alt=""></li>
                                        <li><img src="/resources/images/board_file_icon.png" alt=""></li>
                                    </ul>
                                </a>
                            </td>
                            <td>홍**</td>
                            <td>2021.01.01</td>
                            <td>10</td>
                        </tr>
                        <!--} loop-->
                        <tr>
                            <td>20</td>
                            <td class="ta_l">
                                <a href="/sub/community/oneToOne_view.do" class="bo_subj">
                                    <p class="bo_subj_txt"><span class="bo_cate">[교육문의]</span>온라인 문의입니다.</p>
                                    <ul class="bo_icon_ul">
                                        <li><img src="/resources/images/board_secret_icon.png" alt=""></li>
                                    </ul>
                                </a>
                            </td>
                            <td>홍**</td>
                            <td>2021.01.01</td>
                            <td>10</td>
                        </tr>
                    </tbody>
                </table>

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
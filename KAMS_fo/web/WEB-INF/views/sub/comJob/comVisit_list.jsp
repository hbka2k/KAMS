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
<div id="em_comp_tour" class="sub">
    <div class="sub_visual sub_visual04">
        <div class="wrapper">
            <p class="sub_vs_title">기업/직업 정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">기업/직업 정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel">
                            <option value="">기업정보</option>
                            <option value="" selected>기업탐방</option>
                            <option value="">직업정보</option>
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
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>40</b>건</span>
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

                <div class="gallery_list_wrap">
                    <!--loop {-->
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb01.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <!--} loop-->
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb02.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb01.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb02.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb01.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb02.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb01.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                    <div class="gallery_list">
                        <div class="gallery_list_inner">
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_thumb">
                                <img src="/resources/images/t-matching_thumb02.jpg" alt="">
                                <div class="gallery_over_box"></div>
                            </a>
                            <a href="/sub/comJob/comVisit_view.do" class="gallery_title">기업 탐방 제목이 출력됩니다. <br>제목이 길어질 경우 “...”으로 표시됩니다.</a>
                            <p class="gallery_date">2021.01.01</p>
                        </div>
                    </div>
                </div><!--gallery_list_wrap-->

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
            </div><!--board_wrap-->

        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
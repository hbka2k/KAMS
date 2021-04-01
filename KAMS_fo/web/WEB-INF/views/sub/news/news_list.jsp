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
<div id="employ_news" class="sub">
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
            <p class="sub_title">취업 뉴스</p>

            <div class="tab_wrap sub_tab">
                <ul class="tab_wrap_ul child2">
                    <li class="active"><a href="/sub/news/news_list.do">취업 최신동향 뉴스</a></li>
                    <li><a href="/sub/news/employ_list.do">고용복지 정책안내</a></li>
                </ul>
            </div>

            <div class="board_wrap webzine_bo_wrap">
                <p class="bo_title">취업 최신동향 뉴스</p>
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>12</b>건</span>
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

                <div class="webzine_list_wrap">
                    <!--loop {-->
                    <div class="webzine_list">
                        <div class="webzine_thumb">
                            <img src="/resources/images/t-webzine_thumb01.jpg" alt="">
                        </div>
                        <div class="webzine_cont">
                            <a href="/sub/news/news_view.do" class="webzine_title">취업뉴스 제목입니다.</a>
                            <a href="/sub/news/news_view.do" class="webzine_expl">취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용
                                영역입니다.</a>
                            <p class="webzine_date">2021.01.01</p>
                        </div>
                    </div>
                    <!--} loop-->
                    <div class="webzine_list">
                        <div class="webzine_thumb">
                            <img src="/resources/images/t-webzine_thumb02.jpg" alt="">
                        </div>
                        <div class="webzine_cont">
                            <a href="" class="webzine_title">취업뉴스 제목입니다.</a>
                            <a href="" class="webzine_expl">취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용 영역입니다. 취업뉴스 내용
                                영역입니다.</a>
                            <p class="webzine_date">2021.01.01</p>
                        </div>
                    </div>
                </div><!--webzine_list_wrap-->

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
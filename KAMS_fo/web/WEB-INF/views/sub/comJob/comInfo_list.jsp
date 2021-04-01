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
<div id="em_comp_info" class="sub">
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
                            <option value="" selected>기업정보</option>
                            <option value="">기업탐방</option>
                            <option value="">직업정보</option>
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
                <form action="">
                    <div class="em_comp_sch">
                        <div class="em_comp_sch_box em_comp_sch_genre cf">
                            <span class="em_comp_sch_subj">장르별</span>
                            <div class="em_comp_sch_cont">
                                <select name="" id="" class="i-select">
                                    <option value="">장르</option>
                                </select>
                                <select name="" id="" class="i-select">
                                    <option value="">세부 장르</option>
                                </select>
                            </div>
                        </div>
                        <div class="em_comp_sch_box em_comp_sch_business cf">
                            <span class="em_comp_sch_subj">업종별</span>
                            <div class="em_comp_sch_cont">
                                <select name="" id="" class="i-select">
                                    <option value="">업종</option>
                                </select>
                                <select name="" id="" class="i-select">
                                    <option value="">세부 장르</option>
                                </select>
                            </div>
                        </div>
                        <div class="em_comp_sch_box em_comp_schbar cf">
                            <span class="em_comp_sch_subj">검색어</span>
                            <div class="em_comp_sch_cont">
                                <input type="text" name="" class="i-inpt em_comp_sch_inpt">
                                <button class="em_comp_sch_btn">검색하기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            <div class="board_wrap card2_bo_wrap">
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>40</b>건</span>
                </div>

                <div class="card2_list_wrap">
                    <!--loop {-->
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo01.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <!--} loop-->
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo02.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo01.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo02.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo01.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo02.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo01.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
                        </div>
                    </div>
                    <div class="card2_list">
                        <div class="card2_list_inner">
                            <a href="/sub/comJob/comInfo_view.do" class="card2_thumb">
                                <img src="/resources/images/t-em_comp_logo02.jpg" alt="">
                            </a>
                            <a href="/sub/comJob/comInfo_view.do" class="card2_title">예술인경영지원센터</a>
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
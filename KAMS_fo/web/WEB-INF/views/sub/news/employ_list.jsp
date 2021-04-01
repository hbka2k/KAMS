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

<div id="employ_welfare" class="sub">
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

            <div class="bo_category cf">
                <span class="bo_category_title">정책선택</span>
                <ul class="bo_category_ul child4">
                    <li class="active"><a href="">전체</a></li>
                    <li><a href="">청년</a></li>
                    <li><a href="">여성</a></li>
                    <li><a href="">중장년</a></li>
                    <li><a href="">장애인</a></li>
                    <li><a href="">외국인</a></li>
                </ul>
            </div>

            <div class="board_wrap webzine_bo_wrap">
                <p class="bo_title">고용복지 정책안내</p>
                <div class="bo_list_top cf">
                    <span class="bo_list_cnt">총 <b>40</b>건</span>
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

                <div class="card_list_wrap">
                    <!--loop {-->
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <!--} loop-->
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
                    </div>
                    <div class="card_list">
                        <a href="/sub/news/employ_view.do" class="card_list_inner">
                            <p class="card_title">제목 영역입니다. 내용이 길어지면 “...”으로 표시됩니다.</p>
                            <p class="card_expl">고용복지 정책안내 내용 영역입니다. <br>고용복지 정책안내 내용 영역입니다.</p>
                            <p class="card_date">2021.01.01</p>
                            <span class="card_more_icon"></span>
                        </a>
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
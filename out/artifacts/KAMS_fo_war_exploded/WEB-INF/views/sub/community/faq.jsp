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
        //자주묻는 질문 아코디언 기능
        $(document).ready(function(){
            $(".qna_list_ul").on("click", ".qna_q", function(){
                $(this).toggleClass("active").siblings(".qna_a").slideToggle(200).parents("li").siblings().find(".qna_q").removeClass("active").siblings(".qna_a").slideUp(200);
            })
        })
    });
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

                <div class="qna_list_warp">
                    <ul class="qna_list_ul">
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    면접은 어떤 방식으로 진행되나요?
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="qna_q">
                                <div class="qna_txt">
                                    <span class="qna_q_sym">Q.</span>
                                    자주하는 질문의 제목이 출력됩니다.
                                </div>
                                <i class="arrow down"></i>
                            </div>
                            <div class="qna_a">
                                <div class="qna_txt">
                                    <span class="qna_a_sym">A.</span>
                                    자주하는 질문의 답변이 출력됩니다.
                                </div>
                            </div>
                        </li>
                    </ul>
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
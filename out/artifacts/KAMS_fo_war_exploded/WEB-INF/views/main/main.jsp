<%--
  Created by IntelliJ IDEA.
  User: shlee
  Date: 2021-03-15
  Time: 오후 8:22
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

<div class="section main_section01" data-anchor="page1">
    <div class="main_visual">
        <div class="main_visual_sl">
            <!--loop {-->
            <div class="main_visual_cont" style="background: url('/resources/images/main_vs01.jpg') no-repeat center/cover;">
                <div class="main_visual_txtbox">
                    <p class="main_visual_txt01">2021년</p>
                    <p class="main_visual_txt02">예술분야기업 <br>일자리 플랫폼</p>
                    <div class="main_visual_link"><a href="#">+자세히보기</a></div>
                </div>
            </div>
            <!--} loop-->
            <div class="main_visual_cont" style="background: url('/resources/images/main_vs02.jpg') no-repeat center/cover;">
                <div class="main_visual_txtbox">
                    <p class="main_visual_txt01">2021년</p>
                    <p class="main_visual_txt02">예술분야기업 <br>일자리 플랫폼</p>
                    <div class="main_visual_link"><a href="#">+자세히보기</a></div>
                </div>
            </div>
        </div><!--main_visual_sl-->
        <div class="main_visual_tgcont">
            <div class="main_visual_tgtxtbox">
                <p class="main_visual_tgtxt01 active"></p>
                <p class="main_visual_tgtxt02 active"></p>
                <div class="main_visual_tglink"><a href="">+자세히보기</a></div>
            </div><!--main_visual_tgtxtbox-->

            <ul class="main_visual_control_ul">
                <li class="main_visual_prev">
                    <i class="arrow left"></i>
                </li>
                <li class="main_visual_pause"><img src="/resources/images/pause_icon01.png" alt="메인 슬라이더 일시 정지"></li>
                <li class="main_visual_next">
                    <i class="arrow right"></i>
                </li>
                <li class="main_visual_timebar">
                    <div class="countdown"><div class="countdown_inner"></div></div>
                </li>
                <li class="main_visual_count">
                    <span class="main_visual_num main_visual_num_act">01</span>
                    <span class="main_visual_num main_visual_num_bar">/</span>
                    <span class="main_visual_num main_visual_num_tot"></span>
                </li>
            </ul><!--main_visual_control_ul-->

            <div class="main_schbox">
                <p class="main_sch_title">채용정보검색</p>

                <div class="main_sch_cont">
                    <form action="">
                        <div class="main_sch_select_box">
                            <ul class="main_sch_select_ul">
                                <li>
                                    <select name="" id="" class="i-select main_sch_select">
                                        <option value="">지역</option>
                                    </select>
                                </li>
                                <li>
                                    <select name="" id="" class="i-select main_sch_select">
                                        <option value="">장르</option>
                                    </select>
                                </li>
                            </ul>
                        </div>
                        <div class="main_sch_keyword_box">
                            <input type="text" class="main_sch_inpt" placeholder="검색 키워드를 입력하세요.">
                            <button type="button" class="main_sch_btn" onclick="location.href='/sub/recruit/search_list.do'"><img src="/resources/images/sch_icon01.png" alt="검색버튼"></button>
                        </div>
                    </form>
                </div>
            </div><!--main_schbox-->
        </div>
    </div><!--main_visual-->

    <div class="main_recruit_box">
        <div class="recruit_list_box main_recruit_list_box">
            <!--loop {-->
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/t-korea_arts_logo.jpg" alt=""></div>
                    <p class="recruit_list_corp">(재)예술경영지원센터</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용 2021년 신입 및 경력사원 채용 2021년 신입 및 경력사원 채용 2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark on"></span>
                    </div>
                </a>
            </div>
            <!--} loop-->
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo01.jpg" alt=""></div>
                    <p class="recruit_list_corp">문화가 있는 날</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo02.jpg" alt=""></div>
                    <p class="recruit_list_corp">서울문화포털</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo03.jpg" alt=""></div>
                    <p class="recruit_list_corp">문화체육관광부</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo04.jpg" alt=""></div>
                    <p class="recruit_list_corp">문화셈터</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo05.jpg" alt=""></div>
                    <p class="recruit_list_corp">문화포털</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo03.jpg" alt=""></div>
                    <p class="recruit_list_corp">문화체육관광부</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
            <div class="recruit_list">
                <a href="/sub/recruit/search_view.do" class="recruit_list_inner">
                    <div class="recruit_list_thumb"><img src="/resources/images/ft_bn_logo02.jpg" alt=""></div>
                    <p class="recruit_list_corp">서울문화포털</p>
                    <p class="recruit_list_subj">2021년 신입 및 경력사원 채용</p>
                    <div class="recruit_list_bot cf">
                        <p class="recruit_list_dday">D-7</p>
                        <span class="recruit_list_bmark"></span>
                    </div>
                </a>
            </div>
        </div><!--recruit_list_box-->

        <ul class="main_recruit_control_ul">
            <li class="main_recruit_prev">
                <i class="arrow left"></i>
            </li>
            <li class="main_recruit_pause"><img src="/resources/images/pause_icon02.png" alt="채용공고 슬라이더 일시 정지"></li>
            <li class="main_recruit_next">
                <i class="arrow right"></i>
            </li>
            <li class="main_recruit_timebar">
                <div class="countdown"><div class="countdown_inner"></div></div>
            </li>
        </ul><!--main_recruit_control_ul-->
    </div><!--main_recruit_box-->
</div><!--section-->
<div class="section main_section02" data-anchor="page2">
    <div class="main_board">
        <div class="main_board_wr">
            <div class="main_board_titlebox cf">
                <p class="main_board_title">공지사항</p>
                <div class="main_board_tab">
                    <ul class="main_board_tab_ul">
                        <li class="active"><a href="javascript:void(0);">공지사항</a></li>
                        <li><a href="javascript:void(0);">취업뉴스</a></li>
                        <li><a href="javascript:void(0);">자주하는 질문</a></li>
                        <li><a href="javascript:void(0);">자료실</a></li>
                        <li><a href="javascript:void(0);">매칭스토리</a></li>
                    </ul>
                </div>
                <span class="main_board_line_bar"></span>
            </div><!--main_board_titlebox-->
            <div class="main_board_cont">
                <div class="main_board_cont_wr">
                    <!--loop {-->
                    <div class="main_board_list">
                        <a href="/sub/community/notice_view.do" class="main_board_list_inner">
                            <div class="main_board_list_date">
                                <p class="main_board_date_txt01">01.05</p>
                                <p class="main_board_date_txt02">2021</p>
                            </div>
                            <div class="main_board_list_cont">
                                <p class="main_board_subj">공지사항 제목 영역입니다.</p>
                                <p class="main_board_expl">공지사항 내용 영역입니다. 해당 영역보다 내용이 많을 경우 “...”으로 표기됩니다.</p>
                            </div>
                        </a>
                    </div>
                    <!--} loop-->
                    <div class="main_board_list">
                        <a href="/sub/community/notice_view.do" class="main_board_list_inner">
                            <div class="main_board_list_date">
                                <p class="main_board_date_txt01">01.05</p>
                                <p class="main_board_date_txt02">2021</p>
                            </div>
                            <div class="main_board_list_cont">
                                <p class="main_board_subj">공지사항 제목 영역입니다.</p>
                                <p class="main_board_expl">공지사항 내용 영역입니다. 해당 영역보다 내용이 많을 경우 “...”으로 표기됩니다.</p>
                            </div>
                        </a>
                    </div>
                    <div class="main_board_list">
                        <a href="/sub/community/notice_view.do" class="main_board_list_inner">
                            <div class="main_board_list_date">
                                <p class="main_board_date_txt01">01.05</p>
                                <p class="main_board_date_txt02">2021</p>
                            </div>
                            <div class="main_board_list_cont">
                                <p class="main_board_subj">공지사항 제목 영역입니다.</p>
                                <p class="main_board_expl">공지사항 내용 영역입니다. 해당 영역보다 내용이 많을 경우 “...”으로 표기됩니다.</p>
                            </div>
                        </a>
                    </div>
                    <div class="main_board_list">
                        <a href="/sub/community/notice_view.do" class="main_board_list_inner">
                            <div class="main_board_list_date">
                                <p class="main_board_date_txt01">01.05</p>
                                <p class="main_board_date_txt02">2021</p>
                            </div>
                            <div class="main_board_list_cont">
                                <p class="main_board_subj">공지사항 제목 영역입니다.</p>
                                <p class="main_board_expl">공지사항 내용 영역입니다. 해당 영역보다 내용이 많을 경우 “...”으로 표기됩니다.</p>
                            </div>
                        </a>
                    </div>
                </div>
            </div><!--main_board_cont-->
            <a href="/sub/community/notice_list.do" class="main_board_more">
                <span class="main_board_more_icon"></span>
                <span class="main_board_more_txt">더보기</span>
            </a>
        </div>
    </div><!--main_board-->
</div><!--section-->
<div class="section main_section03" data-anchor="page3">
    <div class="main_adv">
        <div class="main_adv_wr">
            <div class="main_bnzone">
                <p class="main_adv_title">BANNER ZONE</p>
                <div class="main_bnzone_slbox">
                    <div class="main_bnzone_control">
                        <ul class="main_bnzone_control_ul">
                            <li class="main_bnzone_prev">
                                <i class="arrow left"></i>
                            </li>
                            <li class="main_bnzone_pause"><img src="/resources/images/pause_icon02.png" alt="배너존 슬라이더 일시 정지"></li>
                            <li class="main_bnzone_next">
                                <i class="arrow right"></i>
                            </li>
                        </ul>
                    </div>

                    <div class="main_bnzone_sl">
                        <!--loop {-->
                        <div class="main_bnzone_cont">
                            <img src="/resources/images/main_banner01.jpg" alt="">
                        </div>
                        <!--} loop-->
                        <div class="main_bnzone_cont">
                            <img src="/resources/images/main_banner01.jpg" alt="">
                        </div>
                        <div class="main_bnzone_cont">
                            <img src="/resources/images/main_banner01.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div><!--main_bnzone-->
            <div class="main_empzone">
                <p class="main_adv_title">취뽀도우미</p>
                <div class="main_emp_cont">
                    <div class="main_emp_cont_wr">
                        <div class="main_emp_list">
                            <a href="/sub/news/help_cal.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon01.png" alt="">
                                <p class="main_emp_list_txt">연봉계산기</p>
                            </a>
                        </div>
                        <div class="main_emp_list">
                            <a href="/sub/news/help_spell.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon02.png" alt="">
                                <p class="main_emp_list_txt">맞춤법 검사</p>
                            </a>
                        </div>
                        <div class="main_emp_list">
                            <a href="/sub/news/help_job_work.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon03.png" alt="">
                                <p class="main_emp_list_txt">취업활동 증명서</p>
                            </a>
                        </div>
                        <div class="main_emp_list">
                            <a href="/sub/news/help_grade.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon04.png" alt="">
                                <p class="main_emp_list_txt">학점 변환</p>
                            </a>
                        </div>
                        <div class="main_emp_list">
                            <a href="/sub/news/help_lang.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon05.png" alt="">
                                <p class="main_emp_list_txt">이수학점 변환</p>
                            </a>
                        </div>
                        <div class="main_emp_list">
                            <a href="/sub/news/help_word.do" class="main_emp_list_inner">
                                <img src="/resources/images/emp_icon06.png" alt="">
                                <p class="main_emp_list_txt">글자 수 세기</p>
                            </a>
                        </div>
                    </div>
                </div><!--main_emp_cont-->
            </div><!--main_empzone-->
        </div>
    </div>
</div><!--section-->

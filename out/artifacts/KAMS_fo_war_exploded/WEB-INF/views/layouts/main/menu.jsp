<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
    $(document).ready(function() {
    });
</script>
<h1 class="hd_logo main_hd_logo">
    <a href="/main/main.do">
        <!--main-->
        <img src="/resources/images/main_hd_logo.png" alt="artmore" class="hd_logo_white_img">
        <img src="/resources/images/hd_logo.png" alt="artmore" class="hd_logo_black_img">

        <!--sub
        <img src="/resources/images/hd_logo.png" alt="artmore" class="hd_logo_black_img">
        -->
    </a>
</h1>

<div id="header" class="main_header"> <!--main페이지에서만 main_header 클래스 적용-->
    <div class="gnb_btn">
        <div class="gnb_btn_sym">
            <span></span>
            <span></span>
            <span></span>
        </div>
        <p class="gnb_btn_txt">MENU</p>
    </div>

    <div class="hd_quick_menu">
        <ul class="hd_quick_menu_ul">
            <li>
                <a href="javascript:void(0)" onclick="popUp('total_search')">
                    <img src="/resources/images/hd_sch_icon.png" alt="" class="hd_quick_icon_w">
                    <img src="/resources/images/hd_sch_ov_icon.png" alt="" class="hd_quick_icon_b">
                    <p class="hd_quick_menu_txt">통합검색</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="/resources/images/hd_news_icon.png" alt="" class="hd_quick_icon_w">
                    <img src="/resources/images/hd_news_ov_icon.png" alt="" class="hd_quick_icon_b">
                    <p class="hd_quick_menu_txt">새소식</p>
                    <span class="hd_news_icon">N</span>
                </a>
            </li>
            <li>
                <a href="../member/login.html">
                    <img src="/resources/images/hd_login_icon.png" alt="" class="hd_quick_icon_w">
                    <img src="/resources/images/hd_login_ov_icon.png" alt="" class="hd_quick_icon_b">
                    <p class="hd_quick_menu_txt">로그인</p>
                </a>
            </li>
            <li>
                <a href="../mypage/individual/home.html"><!--(기업)마이페이지 홈 링크: ../mypage/company/home.html-->
                    <img src="/resources/images/hd_mypage_icon.png" alt="" class="hd_quick_icon_w">
                    <img src="/resources/images/hd_mypage_ov_icon.png" alt="" class="hd_quick_icon_b">
                    <p class="hd_quick_menu_txt">마이페이지</p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="/resources/images/hd_members_icon.png" alt="" class="hd_quick_icon_w">
                    <img src="/resources/images/hd_members_ov_icon.png" alt="" class="hd_quick_icon_b">
                    <p class="hd_quick_menu_txt">기업회원</p>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="gnb_dim">
    <div class="gnb_wr">
        <nav id="gnb">
            <ul class="gnb_ul wrapper">
                <li>
                    <a href="">모아안내</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/intro/aboutArtmore.do">아트모아는?</a></li>
                        <li><a href="/sub/intro/matching_list.do">매칭 스토리</a></li>
                        <li><a href="/sub/intro/useInfo.do">이용안내</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" class="gnb_more">채용정보</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/recruit/search_list.do">채용검색</a></li>
                        <li><a href="/sub/recruit/genre_list.do">장르별</a></li>
                        <li><a href="/sub/recruit/type_list.do">업종별</a></li>
                        <li><a href="/sub/recruit/area_list.do">지역별</a></li>
                        <li><a href="/sub/recruit/calendar.do">채용캘린더</a></li>
                    </ul>
                    <div class="gnb3_wr wrapper">
                        <div class="gnb3">
                            <div class="gnb3_top">
                                <p>장르별</p>
                                <div class="gnb3_plus">
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                            <div class="gnb3_bt">
                                <ul class="gnb3_ul">
                                    <li><a href="">공연예술</a></li>
                                    <li><a href="">시각분야</a></li>
                                    <li><a href="">영상예술</a></li>
                                    <li><a href="">문화예술</a></li>
                                    <li><a href="">기타/특수분야</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="gnb3 gnb3_x2">
                            <div class="gnb3_top">
                                <p>세부장르별</p>
                                <div class="gnb3_plus">
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                            <div class="gnb3_bt gnb3_bt_2">
                                <ul class="gnb3_ul">
                                    <li><a href="">연극/뮤지컬분야</a></li>
                                    <li><a href="">음악분야</a></li>
                                    <li><a href="">무용분야</a></li>
                                    <li><a href="">전통분야</a></li>
                                    <li><a href="">미술분야</a></li>
                                    <li><a href="">디자인분야</a></li>
                                </ul>
                                <ul class="gnb3_ul">
                                    <li><a href="">영화/방송분야</a></li>
                                    <li><a href="">영상디자인분야</a></li>
                                    <li><a href="">문학분야</a></li>
                                    <li><a href="">비문학분야</a></li>
                                    <li><a href="">기타/특수분야</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="gnb3">
                            <div class="gnb3_top">
                                <p>업종별</p>
                                <div class="gnb3_plus">
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                            <div class="gnb3_bt">
                                <ul class="gnb3_ul">
                                    <li><a href="">자영예술업</a></li>
                                    <li><a href="">기획·창작·제작업</a></li>
                                    <li><a href="">감독·기술업</a></li>
                                    <li><a href="">관리업</a></li>
                                    <li><a href="">사무업</a></li>
                                    <li><a href="">공간·운영업</a></li>
                                    <li><a href="">유통·소비업</a></li>
                                    <li><a href="">교육서비스업</a></li>
                                    <li><a href="">연구·개발업</a></li>
                                    <li><a href="">기타 서비스업</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="gnb3">
                            <div class="gnb3_top">
                                <p>지역별</p>
                                <div class="gnb3_plus">
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                            <div class="gnb3_bt gnb3_bt_2">
                                <ul class="gnb3_ul">
                                    <li><a href="">서울</a></li>
                                    <li><a href="">경기</a></li>
                                    <li><a href="">인천</a></li>
                                    <li><a href="">부산</a></li>
                                    <li><a href="">대구</a></li>
                                    <li><a href="">대전</a></li>
                                    <li><a href="">경남</a></li>
                                    <li><a href="">전남</a></li>
                                    <li><a href="">충남</a></li>
                                </ul>
                                <ul class="gnb3_ul">
                                    <li><a href="">광주</a></li>
                                    <li><a href="">울산</a></li>
                                    <li><a href="">경북</a></li>
                                    <li><a href="">전북</a></li>
                                    <li><a href="">충북</a></li>
                                    <li><a href="">강원</a></li>
                                    <li><a href="">제주</a></li>
                                    <li><a href="">세종</a></li>
                                    <li><a href="">전국</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="">인재정보</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/human/search_list.do">채용검색</a></li>
                        <li><a href="/sub/human/genre_list.do">장르별</a></li>
                        <li><a href="/sub/human/type_list.do">업종별</a></li>
                        <li><a href="/sub/human/area_list.do">지역별</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">기업/직업 정보</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/comJob/comInfo_list.do">기업정보</a></li>
                        <li><a href="/sub/comJob/comVisit_list.do">기업탐방</a></li>
                        <li><a href="/sub/comJob/jobInfo_list.do">직업정보</a></li>
                        <li><a href="/sub/comJob/jobCuration_list.do">직업 큐레이션</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">뉴스/자료</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/news/news_list.do">취업뉴스</a></li>
                        <li><a href="/sub/news/dataRoom_list.do">자료실</a></li>
                        <li><a href="/sub/news/helpCal.do">취업 도우미</a></li>
                    </ul>
                </li>
                <li>
                    <a href="">커뮤니티</a>
                    <ul class="gnb2_ul">
                        <li><a href="/sub/community/talk_list.do">취업 톡톡</a></li>
                        <li><a href="/sub/community/faq.do">자주하는 질문 </a></li>
                        <li><a href="/sub/community/oneToOne_list.do">1:1 온라인 문의</a></li>
                        <li><a href="/sub/community/notice_list.do">공지사항</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</div>

<div id="total_search" class="popup_dim">
    <div class="popup_wrap">
        <div class="popup_top">
            <span class="popup_title">통합검색</span>
            <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
        </div>

        <div class="popup_cont">
            <div class="popup_cont_inner">
                <div class="total_search_wrap">
                    <label for="" class="sound_only">통합검색 입력</label>
                    <input type="text" name="" id="" class="total_search_inpt" placeholder="검색 내용을 입력하세요">
                    <button type="button" class="total_search_btn">
                        <img src="/resources/images/search-icon.png" srcset="/resources/images/search-icon@2x.png 2x,/resources/images/search-icon@3x.png 3x" class="search_icon">
                    </button>
                </div>
                <div class="total_search_keyword_wrap">
                    <ul class="total_search_keyword_ul">
                        <li>
                            <span class="total_search_keyword">
                              학점계산기
                              <button type="button" id="" class="total_search_remove_btn">삭제</button>
                            </span>
                        </li>
                        <li>
                            <span class="total_search_keyword">
                              예술경영
                              <button type="button" id="" class="total_search_remove_btn">삭제</button>
                            </span>
                        </li>
                        <li>
                            <span class="total_search_keyword">
                              뮤지컬배우
                              <button type="button" id="" class="total_search_remove_btn">삭제</button>
                            </span>
                        </li>
                        <li>
                            <span class="total_search_keyword">
                              자영예술업
                              <button type="button" id="" class="total_search_remove_btn">삭제</button>
                            </span>
                        </li>
                        <li>
                            <span class="total_search_keyword">
                              자기소개서 등록
                              <button type="button" id="" class="total_search_remove_btn">삭제</button>
                            </span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--} Header-->
<div id="main">



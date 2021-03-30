<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
    $(document).ready(function() {
        $("#totalSearch").on("keyup", function(event) {
            if (event.keyCode === 13) {
                goTotalSearch();
            }
        });

        $("#totalSearchMob").on("keyup", function(event) {
            if (event.keyCode === 13) {
                goTotalSearchMob();
            }
        });
    });

    function goTotalSearch() {
        //$("#page").val("1");
        $("#frm_search").submit();
    }

    function goTotalSearchMob() {
        //$("#page").val("1");
        $("#frm_search_mob").submit();
    }
</script>
<!-- 헤더 -->
<header id="header" class="start">
    <div class="topUnit">
        <h1 class="left">
            <a href="/kor_main/main/main.do">
                <img src="/artmore_adm/resources/img/gnb_logo_white.png" alt="KIHS 한국 수자원조사기술원 Korea Institute of Hydrological Survey"
                     class="start">
                <img src="/artmore_adm/resources/img/gnb_logo.png" alt="KIHS 한국 수자원조사기술원 Korea Institute of Hydrological Survey"
                     class="scroll">
            </a>
        </h1>
        <nav class="center">
            <ul class="gnbDepth_01">
                <li>
                    <a href="/kor_sub/intro/hello.do">기관소개</a>
                    <ul class="gnbDepth_02">
                        <li>
                            <a href="/kor_sub/intro/hello.do">원장님 인사말</a>
                        </li>
                        <li>
                            <a href="/kor_sub/intro/vision.do">비전 및 미션</a>
                        </li>
                        <li>
                            <a href="/kor_sub/intro/overview.do">기관 개요</a>
                        </li>
                        <li>
                            <a href="/kor_sub/intro/organ.do">조직안내</a>
                        </li>
                        <li>
                            <a href="/kor_sub/intro/ci.do">CI소개</a>
                        </li>
                        <li>
                            <a href="/kor_sub/intro/goto.do">찾아오시는 길</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/kor_sub/biz/gate_survey.do">주요업무</a>
                    <ul class="gnbDepth_02">
                        <li>
                            <a href="/kor_sub/biz/gate_survey.do">수문조사</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/work_edu.do">수문조사 종사자 교육</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/device_test.do">수문조사기기 검정</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/water_survey.do">전국유역조사</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/flood_servey.do">홍수피해 상황조사</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/global_cor.do">국제협력</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/research_list.do">연구사업</a>
                        </li>
                        <li>
                            <a href="/kor_sub/biz/gate_consult.do">수문조사 컨설팅</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/kor_sub/bbs/notice_list.do">알림마당</a>
                    <ul class="gnbDepth_02">
                        <li>
                            <a href="/kor_sub/bbs/notice_list.do">공지사항</a>
                        </li>
                        <li>
                            <a href="/kor_sub/bbs/recruit_list.do">채용공고</a>
                        </li>
                        <li>
                            <a href="/kor_sub/bbs/bid_list.do">입찰공고</a>
                        </li>
                        <li>
                            <a href="/kor_sub/bbs/faq_list.do">FAQ</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/kor_sub/oper/disclosure.do">열린경영</a>
                    <ul class="gnbDepth_02">
                        <li>
                            <a href="/kor_sub/oper/disclosure.do">경영공시</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/open_data.do">공공데이터 개방</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/realname_list.do">사업실명제</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/information_notice_list.do">사전정보공표</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/admin_work.do">적극행정</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/info_open_list.do">정보공개</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/major_active.do">윤리·인권·안정경영</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/comm_center_apply.do">소통센터</a>
                        </li>
                        <li>
                            <a href="/kor_sub/oper/clean_center.do">클린신고센터</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="/kor_sub/comm/pr_list.do">홍보마당</a>
                    <ul class="gnbDepth_02">
                        <li>
                            <a href="/kor_sub/comm/pr_list.do">홍보자료</a>
                        </li>
                        <li>
                            <a href="/kor_sub/comm/newsletter_list.do">뉴스레터</a>
                        </li>
                        <li>
                            <a href="/kor_sub/comm/comm_contb_list.do">지역사회공헌</a>
                        </li>
                        <li>
                            <a href="/kor_sub/comm/comm_sns.do">SNS 소통</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="right">
            <div class="zoomUnit">
                <p class="text">화면</p>
                <a href="#none" class="zoomIn">
                    <img src="/artmore_adm/resources/img/main_visual_plus.png" alt="텍스트 크게보기">
                </a>
                <a href="#none" class="zoomOut">
                    <img src="/artmore_adm/resources/img/main_visual_minus.png" alt="텍스트 작게보기">
                </a>
            </div>
            <form name="frm_search" id="frm_search" method="post" action="/kor_sub/search/search_list.do">
            <div class="contUnit">
                <span class="schFormUnit gnb">
                    <span class="inputArea">
                        <input type="search" class="searchClearInput" placeholder="검색어를 입력하세요." title="검색" id="totalSearch">
                        <a href="#none" class="searchClearBtn" tabindex="0" title="검색어 지움">
                            <img src="/artmore_adm/resources/img/icon_input_clear.png" alt="">
                        </a>
                    </span>
                    <a href="#none" title="검색" class="btnGnbSch">
                        <img src="/artmore_adm/resources/img/gnb_icon_zoom_w.png" alt="" class="start">
                        <img src="/artmore_adm/resources/img/gnb_icon_zoom.png" alt="" class="scroll">
                    </a>
                </span>
                <a href="#none" title="검색" class="btnGnbSch js_popOpen for_MI" id="popup_gnbSchMobile">
                    <img src="/artmore_adm/resources/img/gnb_icon_zoom_w.png" alt="" class="start">
                    <img src="/artmore_adm/resources/img/gnb_icon_zoom.png" alt="" class="scroll">
                </a>
                <c:choose>
                    <c:when test="${sessionScope.loginVo ne null}">
                        <a href="#none" title="로그인" class="btnGnbLogin on">
                            <img src="/artmore_adm/resources/img/gnb_icon_user_w.png" alt="" class="start">
                            <img src="/artmore_adm/resources/img/gnb_icon_user.png" alt="" class="scroll">
                        </a>
                        <span class="selMypageUnit">
                            <a href="/kor_sub/mypage/edu_apy_list.do" title="마이페이지" class="link">마이페이지</a>
                            <a href="/kor_sub/login/logout.do" title="로그아웃" class="link">로그아웃</a>
                        </span>
                    </c:when>
                    <c:otherwise>
                        <a href="/kor_sub/login/member_login.do" title="로그인" class="btnGnbLogin">
                            <img src="/artmore_adm/resources/img/gnb_icon_user_w.png" alt="" class="start">
                            <img src="/artmore_adm/resources/img/gnb_icon_user.png" alt="" class="scroll">
                        </a>
                    </c:otherwise>
                </c:choose>
                <a href="#none" title="언어선택" class="btnGnbLang">
                    <img src="/artmore_adm/resources/img/gnb_icon_langKor_w.png" alt="" class="start">
                    <img src="/artmore_adm/resources/img/gnb_icon_langKor.png" alt="" class="scroll">
                </a>
                <span class="selLangUnit">
                    <a href="/kor_main/main/main.do" title="한국어" class="kor on">KOR</a>
                    <a href="#none" title="영어" class="eng">ENG</a>
                </span>
                <a href="#none" title="전체메뉴" class="btnGnbAllMenu js_popOpen" id="popup_allMenu">
                    <img src="/artmore_adm/resources/img/gnb_icon_allMenu_w.png" alt="" class="start">
                    <img src="/artmore_adm/resources/img/gnb_icon_allMenu.png" alt="" class="scroll">
                </a>
            </div>
            </form>
        </div>
    </div>
    <div class="subMenuBg">
        <div class="leftImg">
            <p></p>
        </div>
    </div>
</header>

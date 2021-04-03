<%--
  Created by IntelliJ IDEA.
  User: gtlif
  Date: 2021-03-29
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<div id="em_comp_info" class="sub">
    <div class="sub_visual sub_visual04">
        <div class="wrapper">
            <p class="sub_vs_title">기업/직업 정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel" title="">
                            <option value="" title="">기업/직업 정보</option>
                        </select>
                    </li>
                    <li>
                        <select class="sub_location_sel" onchange="location.href=value" title="">
                            <option value="/sub/comJob/com_info_list.do" selected>기업정보</option>
                            <option value="/sub/comJob/com_visit_list.do">기업탐방</option>
                            <option value="/sub/comJob/job_info_list.do">직업정보</option>
                            <option value="/sub/comJob/job_curation_list.do">직업 큐레이션</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">기업 정보</p>

            <div class="comp_inf_v_cont comp_inf_v_cont01">
                <p class="comp_inf_v_cont_tit">기본정보</p>
                <div class="comp_inf_v_cont_wrap">
                    <div class="comp_inf_v_pf">
                        <div class="comp_inf_v_pf_img"><img src="/resources/images/t-em_comp_logo01.jpg" alt=""></div>
                        <div class="comp_inf_v_pf_text">
                            <p class="comp_inf_v_pf_subj">
                                <span class="comp_inf_v_pf_cname">${bbsDetailVo.title}</span>
                                <span class="comp_inf_v_pf_ctype">공공</span>
                            </p>
                            <p class="comp_inf_v_pf_addr">서울특별시 00로 01 예술빌딩 3층</p>
                            <button type="button" class="btn02 comp_inf_v_pf_scrap_btn"><img src="/resources/images/heart_icon.png" alt="">관심기업등록</button>
                            <!--관심기업 등록된 상태
                            <button type="button" class="btn02 comp_inf_v_pf_scrap_btn active"><img src="/resources/images/heart_ov_icon.png" alt="">관심기업등록</button>
                            -->
                        </div>
                    </div>

                    <div class="comp_inf_v_inf cf">
                        <div class="comp_inf_v_inf_inner comp_inf_v_inf_inner_lt">
                            <ul class="comp_inf_v_inf_cont">
                                <li>
                                    <span class="comp_inf_v_inf_stitle">대표자명</span>
                                    <div class="comp_inf_v_inf_expl">홍길동</div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">장르</span>
                                    <div class="comp_inf_v_inf_expl">
                                        <ul class="comp_inf_v_genre cf">
                                            <li>공연예술</li>
                                            <li>연극/뮤지컬분야</li>
                                        </ul>

                                    </div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">업종</span>
                                    <div class="comp_inf_v_inf_expl">자영예술업</div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">주요사업내용</span>
                                    <div class="comp_inf_v_inf_expl">주요사업내용을 자유롭게 입력합니다.</div>
                                </li>
                            </ul>
                        </div>
                        <div class="comp_inf_v_inf_inner comp_inf_v_inf_inner_rt">
                            <ul class="comp_inf_v_inf_cont">
                                <li>
                                    <span class="comp_inf_v_inf_stitle">자본금</span>
                                    <div class="comp_inf_v_inf_expl">6억 6천만원</div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">연매출액</span>
                                    <div class="comp_inf_v_inf_expl">60억 6천만원</div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">홈페이지</span>
                                    <div class="comp_inf_v_inf_expl">
                                        <a href="" target="_blank">www.homepage.com</a>
                                    </div>
                                </li>
                                <li>
                                    <span class="comp_inf_v_inf_stitle">근로자수</span>
                                    <div class="comp_inf_v_inf_expl">10 명</div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="comp_inf_v_introd">
                        <p class="comp_inf_v_introd_title">회사소개</p>
                        <div class="comp_inf_v_introd_expl">
                            ${bbsDetailVo.cont}
                        </div>
                    </div>
                </div>
            </div>

            <div class="comp_inf_v_cont comp_inf_v_cont02">
                <p class="comp_inf_v_cont_tit">채용현황</p>
                <p class="comp_inf_v_cont_stit">예술경영지원센터에서 진행 중인 채용공고 (N건)</p>
                <div class="comp_inf_v_cont_wrap">
                    <table class="board_tb comp_inf_v_tb">
                        <caption>채용현황 목록</caption>

                        <thead>
                            <tr>
                                <th>채용공고명</th>
                                <th>마감일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!--loop {-->
                            <tr>
                                <td class="ta_l">
                                    <a href="" class="comp_inf_v_jobs_subj"><span class="comp_inf_v_jobs_state state01">진행중</span>예술경영지원센터 직원 모집합니다. 예술경영지원센터 직원 모집합니다.</a>
                                </td>
                                <td>2021.01.01</td>
                            </tr>
                            <!--} loop-->
                            <tr>
                                <td class="ta_l">
                                    <a href="" class="comp_inf_v_jobs_subj"><span class="comp_inf_v_jobs_state state02">마감</span>예술경영지원센터 직원 모집합니다. 예술경영지원센터 직원 모집합니다.</a>
                                </td>
                                <td>2021.01.01</td>
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
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
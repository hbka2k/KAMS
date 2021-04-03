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

<div id="em_job_info" class="sub">
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
                        <select class="sub_location_sel" onchange="location.href=value" title="">
                            <option value="/sub/comJob/com_info_list.do">기업정보</option>
                            <option value="/sub/comJob/com_visit_list.do">기업탐방</option>
                            <option value="/sub/comJob/job_info_list.do" selected>직업정보</option>
                            <option value="/sub/comJob/job_curation_list.do">직업 큐레이션</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">직업 정보</p>

            <div class="em_jobs_sel">
                <p class="em_jobs_sel_title">직업 1차 선택</p>
                <div class="em_jobs_sel_cont">
                    <ul class="em_jobs_sel_ul">
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel1" id="em_jobs_sel1_1">
                                <label for="em_jobs_sel1_1">작가 및 관련 전문가</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel1" id="em_jobs_sel1_2">
                                <label for="em_jobs_sel1_2">사서 및 기록물 관리자</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel1" id="em_jobs_sel1_3">
                                <label for="em_jobs_sel1_3">출판물기획자</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel1" id="em_jobs_sel1_4">
                                <label for="em_jobs_sel1_4">번역가</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel1" id="em_jobs_sel1_5">
                                <label for="em_jobs_sel1_5">통역가</label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="em_jobs_sel">
                <p class="em_jobs_sel_title">직업 2차 선택</p>
                <div class="em_jobs_sel_cont">
                    <ul class="em_jobs_sel_ul">
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel2" id="em_jobs_sel2_1">
                                <label for="em_jobs_sel2_1">시인</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel2" id="em_jobs_sel2_2">
                                <label for="em_jobs_sel2_2">방송작가</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel2" id="em_jobs_sel2_3">
                                <label for="em_jobs_sel2_3">평론가</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel2" id="em_jobs_sel2_4">
                                <label for="em_jobs_sel2_4">게임시나리오작가</label>
                            </div>
                        </li>
                        <li>
                            <div class="i-radio">
                                <input type="radio" name="em_jobs_sel2" id="em_jobs_sel2_5">
                                <label for="em_jobs_sel2_5">작사가</label>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div><!--sub_content-->

</div>
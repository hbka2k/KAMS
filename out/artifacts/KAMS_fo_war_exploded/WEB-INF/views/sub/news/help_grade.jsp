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
<div id="grade_converter" class="sub">
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
                            <option value="">취업 도우미</option>
                        </select>
                    </li>
                </ul>
            </div>
        </div>
    </div><!--sub_visual-->

    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">취업 도우미</p>

            <div class="tab_wrap sub_tab">
                <ul class="tab_wrap_ul child6">
                    <li><a href="/sub/news/help_cal.do">연봉계산기</a></li>
                    <li><a href="/sub/news/help_spell.do">맞춤법 검사</a></li>
                    <li><a href="/sub/news/help_job_work.do">취업활동 증명서</a></li>
                    <li class="active"><a href="/sub/news/help_grade.do">학점 변환</a></li>
                    <li><a href="/sub/news/help_lang.do">어학점수 변환</a></li>
                    <li><a href="/sub/news/help_word.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">학점 변환</p>
                <div class="grade_cont">
                    <div class="grade_input">
                        <p class="em_title_02">나의 평균 학점</p>
                        <div class="grade_box_in">
                            <select name="grade_type" id="grade_type_sel" class="i-select">
                                <option value="">만점기준</option>
                                <option value="">4.0 만점</option>
                                <option value="">4.3 만점</option>
                                <option value="">4.5 만점</option>
                                <option value="">100 만점</option>
                            </select>
                            <div class="grade_inpt_wr">
                                <input type="text" name="grade_num" id="grade_inpt" class="i-inpt">
                                <p class="grade_inpt_txt">점</p>
                            </div>
                        </div>
                        <div class="grade_btn_wr">
                            <button type="button" class="btn01 grade_btn">변환하기</button>
                        </div>
                    </div>
                    <div class="grade_output">
                        <p class="em_title_02">학점변환 결과</p>
                        <div class="grade_box_in">
                            <div class="grade_box_item">
                                <input type="text" id="grade_cvt_inpt01" class="i-inpt grade_cvt_inpt" disabled>
                                <p class="grade_cvt_total">/ 4.0 만점</p>
                            </div>
                            <div class="grade_box_item">
                                <input type="text" id="grade_cvt_inpt02" class="i-inpt grade_cvt_inpt" disabled>
                                <p class="grade_cvt_total">/ 4.5 만점</p>
                            </div>
                            <div class="grade_box_item">
                                <input type="text" id="grade_cvt_inpt03" class="i-inpt grade_cvt_inpt" disabled>
                                <p class="grade_cvt_total">/ 4.3 만점</p>
                            </div>
                            <div class="grade_box_item">
                                <input type="text" id="grade_cvt_inpt04" class="i-inpt grade_cvt_inpt" disabled>
                                <p class="grade_cvt_total">/ 100 만점</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
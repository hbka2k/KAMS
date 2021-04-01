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
<div id="salary_calc" class="sub">
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
                    <li class="active"><a href="/sub/news/help_cal.do">연봉계산기</a></li>
                    <li><a href="/sub/news/help_spell.do">맞춤법 검사</a></li>
                    <li><a href="/sub/news/help_job_work.do">취업활동 증명서</a></li>
                    <li><a href="/sub/news/help_grade.do">학점 변환</a></li>
                    <li><a href="/sub/news/help_lang.do">어학점수 변환</a></li>
                    <li><a href="/sub/news/help_word.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">연봉계산기</p>
                <div class="calc_cont">
                    <div class="calc_input">
                        <p class="em_title_02">연봉 입력</p>
                        <div class="calc_input_box">
                            <div class="calc_input_row">
                                <div class="calc_input_col calc_input_col_tit">
                                    <p class="calc_input_txt">급여기준</p>
                                </div>
                                <div class="calc_input_col calc_input_col_con">
                                    <ul class="calc_input_rd_wr">
                                        <li class="calc_input_rd_col">
                                            <input type="radio" name="salaryType" id="salary_year" checked>
                                            <label for="salary_year" class="calc_input_rd_lbl">연봉</label>
                                        </li>
                                        <li class="calc_input_rd_col">
                                            <input type="radio" name="salaryType" id="salary_month">
                                            <label for="salary_month" class="calc_input_rd_lbl">월급</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="calc_input_row">
                                <div class="calc_input_col calc_input_col_tit">
                                    <p class="calc_input_txt">비과세액</p>
                                </div>
                                <div class="calc_input_col calc_input_col_con">
                                    <input type="text" name="taxFree" id="tax_free" class="i-inpt i-inpt_num">
                                    <p class="calc_price_txt">원</p>
                                </div>
                            </div>
                        </div>
                        <div class="calc_input_box">
                            <div class="calc_input_row">
                                <div class="calc_input_col calc_input_col_tit">
                                    <p class="calc_input_txt">연봉</p>
                                </div>
                                <div class="calc_input_col calc_input_col_con">
                                    <input type="text" name="pay" id="pay" class="i-inpt i-inpt_num">
                                    <p class="calc_price_txt">원</p>
                                </div>
                            </div>
                        </div>
                        <div class="calc_gray_box">
                            <p class="calc_gray_txt">퇴직금 별도</p>
                            <p class="calc_gray_txt">소득세 공제 미포함</p>
                        </div>
                        <button type="button" id="calc_btn" class="btn01">계산하기</button>
                    </div>
                    <div class="calc_output">
                        <p class="em_title_02">세금 공제한 월 실수령액</p>
                        <div class="calc_output_box">
                            <div class="calc_output_row">
                                <div class="calc_output_col calc_output_col_tit">
                                    <p class="calc_output_txt">예상 소득액(월)</p>
                                </div>
                                <div class="calc_output_col calc_output_col_con">
                                    <p class="calc_output_num"><span class="">100,000</span>원</p>
                                </div>
                            </div>
                        </div>
                        <div class="calc_output_box">
                            <div class="calc_output_row">
                                <div class="calc_output_col calc_output_col_tit">
                                    <p class="calc_output_txt">공제액 합계</p>
                                </div>
                                <div class="calc_output_col calc_output_col_con">
                                    <p class="calc_output_num"><span class="">100,000</span>원</p>
                                </div>
                            </div>
                            <div class="calc_output_detail">
                                <div class="calc_output_row">
                                    <div class="calc_output_col calc_output_col_tit">
                                        <p class="calc_output_txt">국민연금</p>
                                    </div>
                                    <div class="calc_output_col calc_output_col_con">
                                        <p class="calc_output_num"><span class="national_pension">100,000</span>원</p>
                                    </div>
                                </div>
                                <div class="calc_output_row">
                                    <div class="calc_output_col calc_output_col_tit">
                                        <p class="calc_output_txt">건강보험</p>
                                    </div>
                                    <div class="calc_output_col calc_output_col_con">
                                        <p class="calc_output_num"><span class="health_insurance">100,000</span>원</p>
                                    </div>
                                </div>
                                <div class="calc_output_row">
                                    <div class="calc_output_col calc_output_col_tit">
                                        <p class="calc_output_txt">장기요양</p>
                                    </div>
                                    <div class="calc_output_col calc_output_col_con">
                                        <p class="calc_output_num"><span class="longterm_care">100,000</span>원</p>
                                    </div>
                                </div>
                                <div class="calc_output_row">
                                    <div class="calc_output_col calc_output_col_tit">
                                        <p class="calc_output_txt">고용보험</p>
                                    </div>
                                    <div class="calc_output_col calc_output_col_con">
                                        <p class="calc_output_num"><span class="employment_insurance">100,000</span>원</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="calc_rst_box">
                            <div class="calc_rst_col calc_rst_col_tit">
                                <p class="calc_rst_txt">예상 실수령액(월)</p>
                            </div>
                            <div class="calc_rst_col calc_rst_col_con">
                                <p class="calc_rst_num"><span class="calc_rst_total">100,000</span>원</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
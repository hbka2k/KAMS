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
<div id="score_converter" class="sub">
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
                    <li><a href="/sub/news/helpCal.do">연봉계산기</a></li>
                    <li><a href="/sub/news/helpSpell.do">맞춤법 검사</a></li>
                    <li><a href="/sub/news/helpJobWork.do">취업활동 증명서</a></li>
                    <li><a href="/sub/news/helpGrade.do">학점 변환</a></li>
                    <li class="active"><a href="/sub/news/helpLang.do">어학점수 변환</a></li>
                    <li><a href="/sub/news/helpWord.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">어학점수 변환</p>
                <div class="score_cont">
                    <div class="score_input">
                        <p class="em_title_02">내 점수 입력</p>
                        <div class="score_box_in">
                            <select name="score_type" id="score_type_sel" class="i-select">
                                <option value="">선택</option>
                                <option value="">TOEIC</option>
                                <option value="">TEPS</option>
                                <option value="">TOEIC Speaking</option>
                                <option value="">TOEFL</option>
                                <option value="">OPIc</option>
                            </select>
                            <div class="score_inpt_wr">
                                <input type="text" name="score_num" id="score_inpt" class="i-inpt">
                                <p class="score_inpt_txt">점</p>
                            </div>
                        </div>
                        <div class="score_btn_wr">
                            <button type="button" class="btn01 score_btn">변환하기</button>
                        </div>
                    </div>
                    <div class="score_output">
                        <p class="em_title_02">어학점수 변환 결과</p>
                        <div class="score_box_in">
                            <div class="score_box_row">
                                <div class="score_box_col score_box_col_tit">
                                    <p class="score_cvt_subj">TEPS</p>
                                </div>
                                <div class="score_box_col score_box_col_con">
                                    <input type="text" id="score_cvt_inpt01" class="i-inpt score_cvt_inpt" disabled>
                                    <p class="score_cvt_txt">점</p>
                                </div>
                            </div>
                            <div class="score_box_row">
                                <div class="score_box_col score_box_col_tit">
                                    <p class="score_cvt_subj">TEPS</p>
                                </div>
                                <div class="score_box_col score_box_col_con">
                                    <input type="text" id="score_cvt_inpt02" class="i-inpt score_cvt_inpt" disabled>
                                    <p class="score_cvt_txt">점</p>
                                </div>
                            </div>
                            <div class="score_box_row">
                                <div class="score_box_col score_box_col_tit">
                                    <p class="score_cvt_subj">TOEIC Speaking</p>
                                </div>
                                <div class="score_box_col score_box_col_con">
                                    <input type="text" id="score_cvt_inpt03" class="i-inpt score_cvt_inpt" disabled>
                                    <p class="score_cvt_txt">점</p>
                                </div>
                            </div>
                            <div class="score_box_row">
                                <div class="score_box_col score_box_col_tit">
                                    <p class="score_cvt_subj">TOEFL</p>
                                </div>
                                <div class="score_box_col score_box_col_con">
                                    <input type="text" id="score_cvt_inpt04" class="i-inpt score_cvt_inpt" disabled>
                                    <p class="score_cvt_txt">점</p>
                                </div>
                            </div>
                            <div class="score_box_row">
                                <div class="score_box_col score_box_col_tit">
                                    <p class="score_cvt_subj">OPIc</p>
                                </div>
                                <div class="score_box_col score_box_col_con">
                                    <input type="text" id="score_cvt_inpt05" class="i-inpt score_cvt_inpt" disabled>
                                    <p class="score_cvt_txt">점</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
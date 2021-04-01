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
<div id="spell_check" class="sub">
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
                    <li class="active"><a href="/sub/news/help_spell.do">맞춤법 검사</a></li>
                    <li><a href="/sub/news/help_job_work.do">취업활동 증명서</a></li>
                    <li><a href="/sub/news/help_grade.do">학점 변환</a></li>
                    <li><a href="/sub/news/help_lang.do">어학점수 변환</a></li>
                    <li><a href="/sub/news/help_word.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">맞춤법 검사</p>
                <div class="spell_cont">
                    <div class="spell_input">
                        <div class="spell_txt_wr">
                            <textarea name="spell_textar" id="spell_textar" cols="30" rows="20" placeholder="검사하고 싶은 내용을 입력하세요."></textarea>
                        </div>
                        <div class="spell_btn_wr">
                            <div class="spell_btn_box spell_fin_box">
                                <button type="button" id="spell_fin_btn" class="btn01">검사완료</button>
                            </div>
                            <div class="spell_btn_box spell_reset_box">
                                <button type="button" id="spell_reset_btn"><img src="/resources/images/reset_icon01.png" alt="초기화아이콘.png"> 초기화</button>
                            </div>
                        </div>
                    </div>
                    <div class="spell_output">
                        <div class="spell_rst_txt">
                            맞춤법 오류발생시 해당칸에 오류내용이 나타납니다. <br>
                            일괄수정을 누르면 오류 발생한 문자가 자동으로 수정됩니다.
                        </div>
                        <div class="spell_edit_box">
                            <button type="button" id="spell_edit_btn" class="btn02">일괄수정</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
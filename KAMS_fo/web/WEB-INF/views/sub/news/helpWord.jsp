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
<div id="text_count" class="sub">
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
                    <li><a href="/sub/news/helpLang.do">어학점수 변환</a></li>
                    <li class="active"><a href="/sub/news/helpWord.do">글자 수 세기</a></li>
                </ul>
            </div>

            <div class="em_cont_wrap">
                <p class="em_title_01">글자 수 세기</p>
                <div class="text_count_wr">
                    <div class="text_count_top">
                        <div class="text_count_item text_count_item_01">
                            공백포함 : 총 <span class="text_space_len">0</span>자
                            (<span class="text_space_byte">0</span>byte)
                        </div>
                        <div class="text_count_item text_count_item_02">
                            공백제외 : 총 <span class="text_nospace_len">0</span>자
                            (<span class="text_nospace_byte">0</span>byte)
                        </div>
                    </div>
                    <div class="text_count_con">
                        <textarea name="text_count_textar" id="text_count_textar" cols="30" rows="10" placeholder="내용을 입력하세요."></textarea>
                    </div>
                </div>
            </div>
        </div>
    </div><!--sub_content-->

</div><!--sub-->
<!--} Contents-->
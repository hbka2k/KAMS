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

<div id="sch_rst" class="sub">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">통합검색결과</p>

            <div class="sch_rst_sch cf">
                <p class="sch_rst_tot">통합검색  총 <b id="sch_rst_tot_num">7,547</b>건</p>
                <div class="sch_rst_sch_f">
                    <form action="">
                        <div class="sch_rst_sch_wrap">
                            <label for="sch_rst_sch_keyword">결과 내 검색</label>
                            <input type="text" name="" id="sch_rst_sch_keyword" class="i-inpt">
                            <button type="button" id="sch_rst_sch_btn" class="btn03">검색하기</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="sch_rst_top cf">
                <p class="sch_rst_keyword"><b>‘웹디자이너’</b>검색결과입니다.</p>
                <ul class="sch_rst_sort cf">
                    <li><button type="button" id="sch_rst_sort_accuracy" class="btn02 active">정확도순</button></li>
                    <li><button type="button" id="sch_rst_sort_latest" class="btn02">최신순</button></li>
                </ul>
            </div>

            <div class="tab_wrap sub_tab sch_rst_tab">
                <ul class="tab_wrap_ul child4 sch_rst_tab_ul">
                    <li>
                        <a href="/sub/total/total.do">통합검색(2,524건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/job.do">일자리 정보(150건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/matching.do">매칭 스토리(1건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/news.do">취업뉴스(50건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/data.do">자료실(10건)</a>
                    </li>
                    <li class="active">
                        <a href="/sub/total/faq.do">자주하는 질문(2건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/notice.do">공지사항(2건)</a>
                    </li>
                    <li>
                        <a href="/sub/total/attatch.do">청부파일(2건)</a>
                    </li>
                </ul>
            </div>

        </div>
    </div>
</div>
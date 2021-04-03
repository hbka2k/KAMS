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


<div id="em_job_info_view" class="sub">
    <div class="sub_visual sub_visual04">
        <div class="wrapper">
            <p class="sub_vs_title df">기업/직업 정보</p>

            <div class="sub_location">
                <ul class="sub_location_ul">
                    <li><a href="/"><img src="/resources/images/home_icon01.png" alt="홈으로"></a></li>
                    <li>
                        <select class="sub_location_sel" title="">
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

            <div class="em_jobs_v_top">
                <p class="em_job_v_name">시인</p>
                <p class="em_job_v_summary">자신의 생각과 느낌을 함축적인 시어로 표현한다.</p>
            </div>

            <div class="em_jobs_v_cont">
                <div class="em_jobs_v_sec">
                    <p class="em_jobs_v_subtitle">01. 수행직무</p>
                    <div class="em_jobs_v_expl">주제를 결정하고, 그 주제를 가장 효과적으로 나타낼 수 있는 소재들을 찾는다.<br>
                        선택된 주제, 자연 및 인생 등 여러 현상을 작가의 주관적인 시각을 통하여 재조명, 정리한다.<br>
                        소재들을 적절하게 구성하여 예술적인 표현으로 이를 형상화 시켜낸다.<br>
                        자연, 인생 등 여러 현상을 작가의 주관적이고 독특한 시각으로 관찰하여 시적 어구로 정리한다.<br>
                        다양하고 현실성 있는 소재 발굴을 위해 취재를 하거나, 다양한 사람들 과의 접촉 등을 통하여 정보를 수집하고 창작에 반영한다.<br>
                        신문사, 출판사, 문예지, 문학상, 인터넷을 통해 등단한다.<br>
                        각종 문예지에 기고하거나 창작시집을 발간한다.<br>
                        시 낭송회에 참석하기도 한다<br>
                        저술물에 대한 인세, 원고료, 저작권료를 계약한다.
                    </div>
                </div>
                <div class="em_jobs_v_sec">
                    <p class="em_jobs_v_subtitle">02. 필요기술 및 지식</p>
                    <div class="em_jobs_v_expl">시인이 되기 위해 정해진 방법이 있는 것은 아니지만 대학의 국어국문학과, 문예창작학과 등에서 관련 교육을 받으면 도움이 된다. 관련 학과에 진학하면 다양한 작품과 작가를 분석하게 되고 습작훈련을 통해 문장력, 표현력 등을 기를 수 있다. 또한 함께 시를 공부하는 동료 및 선후배 등과 학문적 네트워크를 맺으며 시인으로 성장하는데 도움을 받을 수 있다. 한편, 제도적 교육보다는 작가적 자질을 스스로 키워나가는 노력이 더 중요하며, 이를 위해 평소 독서와 사색, 글쓰기 연습을 하고 다양한 경험을 쌓는 것이 필요하다. 시인을 비롯해 작가로 진출하는 경로는 다양하다. 문학작가의 경우 일간지의 신춘문예 당선, 전문지·동인지의 추천, 출판사, 문학잡지 등의 공모전 당선, 혹은 개인 창작집 발표 등을 통해 등단하여 작가가 될 수 있다. 요즘은 온라인 글쓰기 플랫폼을 통해 작품을 연재한 다음 책을 발간해 활동을 시작하는 작가들도 있으나, 시 장르의 경우 흔한 편은 아니다.</div>
                </div>
                <div class="em_jobs_v_sec">
                    <p class="em_jobs_v_subtitle">03. 전문가가 분석한 일자리 전망</p>
                    <div class="em_jobs_v_expl">향후 5년간 시인의 고용은 다소 감소하는 수준이 될 것으로 전망된다. 문학 장르의 경우, 영향력 있는 문예지가 폐간되거나 기업의 사보, 정기간행물 등의 발간이 위축되면서 전반적으로 창작활동이 어려워지고 있다. 문예지나 잡지, 사보 발간에 대한 기업의 투자가 줄고, 인쇄 출판물이 스마트폰 같은 디지털 매체로 상당 부분 대체되면서 문예지 및 잡지 등을 통해 등단할 기회도 다소 줄었다. 또한 출판산업 사업체 수가 줄고 매출이 감소하는 점은 전업작가로 지속적인 활동을 유지하는데 부정적인 영향을 미치고 있다. 또한 출판산업 사업체 수가 줄고 매출이 감소하는 점은 문학작가들이 전업작가로 지속적인 활동을 유지하는데 부정적인 영향을 미치고 있으며, 스마트폰 사용의 증가 및 독서인구의 감소, 제작비 상승 등에 따라 도서 발행 부수 및 신간 부수도 줄어드는 경향을 보이고 있다. 특히, 소설의 경우 디지털 시대에 맞게 웹소설 장르가 성장한 반면, 시 장르의 경우는 디지털 사용자를 유인할 만한 요인이 부족해 더욱 위축되는 경향을 보이고 있다. 다만, 과학기술의 발전과 자동화, 로봇화의 반대급부로서 인문학을 중시하는 문화 풍토가 형성되면서 스트레스 해소 및 마음의 안정을 찾기 위해 시집을 찾는 소비성향은 사라지지 않을 것으로 보인다.</div>
                </div>
                <div class="em_jobs_v_sec">
                    <p class="em_jobs_v_subtitle">04. 관련학과</p>
                    <div class="em_jobs_v_expl">국어·국문학과,&nbsp;기타 아시아어·문학과,&nbsp;기타 유럽어·문학과,&nbsp;독일어·문학과,&nbsp;러시아어·문학과,&nbsp;문예창작과,&nbsp;스페인어·문학과,&nbsp;언어학과,&nbsp;영미어·문학과,&nbsp;일본어·문학과,&nbsp;중국어·문학과,&nbsp;철학·윤리학과,&nbsp;프랑스어·문학과&nbsp;등의 학과가 실무종사자들의 설문조사결과자료와 관련이 있습니다.</div>
                </div>
                <div class="em_jobs_v_sec">
                    <p class="em_jobs_v_subtitle">05. 관련직업</p>
                    <div class="em_jobs_v_expl">소설가, 영화시나리오작가, 카피라이터, 작사가, 방송작가, 평론가, 게임시나리오작가, 번역가, 통역가, 출판물전문가, 출판 · 자료편집사무원, 속기사, 행정사</div>
                </div>
            </div>
            <a href="/sub/comJob/job_info_list.do" class="btn01 em_jobs_v_list_btn">목록</a>
        </div>
    </div><!--sub_content-->

</div>
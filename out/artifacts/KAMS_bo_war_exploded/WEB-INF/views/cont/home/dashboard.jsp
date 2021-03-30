<%--
  Created by IntelliJ IDEA.
  User: shlee
  Date: 2021-03-15
  Time: 오후 8:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
<script type="text/javascript">
    $(document).ready(function () {

    });
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <h2>DASHBOARD</h2>
    <section class="graphArea">
        <canvas id="graphDashboard" style="width:100%;height:40rem;margin-bottom:5rem;"></canvas>
        <script>
            var ctx = document.getElementById("graphDashboard");
            var myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: ["2021-06-13", "2021-06-14", "2021-06-15", "2021-06-16", "2021-06-17", "2021-06-18", "2021-06-19", "2021-06-20"],
                    datasets: [{
                        label: ['통합'],
                        data: [465, 192, 715, 80, 346, 505, 407, 750],
                        fill: false,
                        backgroundColor: 'rgba(255,99,132,1)',
                        borderColor: 'rgba(255,99,132,1)',
                        borderWidth: 3,
                        borderDash: [0, 0],

                        pointBorderColor: 'rgba(255,99,132,.1)',
                        pointBackgroundColor: 'rgba(255,99,132,1)',
                        pointRadius: 5,
                        pointHoverRadius: 5,
                        pointHoverBackgroundColor: 'rgba(255,99,132,1)',
                        pointHoverBorderColor: 'rgba(255,99,132,1)',

                        lineTension: .5,
                        scaleShowGridLines: true,
                    }, {
                        label: ['개인'],
                        data: [165, 152, 215, 70, 146, 205, 107, 350],
                        fill: false,
                        backgroundColor: 'rgba(75,192,192,1)',
                        borderColor: 'rgba(75,192,192,.5)',
                        borderWidth: 1,
                        borderDash: [5, 5],

                        pointBorderColor: 'rgba(75,192,192,.1)',
                        pointBackgroundColor: 'rgba(75,192,192,.5)',
                        pointRadius: 3,
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: 'rgba(75,192,192,1)',
                        pointHoverBorderColor: 'rgba(75,192,192,1)',

                        lineTension: .5,
                        scaleShowGridLines: true,
                    }, {
                        label: ['기업'],
                        data: [265, 40, 500, 10, 200, 300, 300, 400],
                        fill: false,
                        backgroundColor: 'rgba(153,102,255,1)',
                        borderColor: 'rgba(153,102,255,.5)',
                        borderWidth: 1,
                        borderDash: [5, 5],

                        pointBorderColor: 'rgba(153,102,255,.1)',
                        pointBackgroundColor: 'rgba(153,102,255,.5)',
                        pointRadius: 3,
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: 'rgba(153,102,255,1)',
                        pointHoverBorderColor: 'rgba(153,102,255,1)',

                        lineTension: .5,
                        scaleShowGridLines: true,
                    }]
                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'UV (홈페이지 방문자)'
                    },
                    maintainAspectRatio: false,
                    tooltips: {
                        mode: 'index',
                        intersect: false,
                        backgroundColor: "#1d3480",
                        bodyFontColor: "#fff",
                        borderColor: 'rgba(255,255,255,.1)',
                        borderWidth: 1,
                        xPadding: 10,
                        yPadding: 10,
                        displayColors: true,
                        caretPadding: 10,
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: false
                    },
                    scales: {
                        xAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: '날짜'
                            }
                        }],
                        yAxes: [{
                            display: true,
                            scaleLabel: {
                                display: true,
                                labelString: '방문자수'
                            }
                        }]
                    },
                    plugins: {
                        labels: [
                            {render:'value',position:'outside',fontStyle:'normal'}
                        ]
                    }
                }
            });
        </script>
    </section>
    <section class="graphTbl">
        <ul class="boardList">
            <li class="head">
                <span class="tit"><br><br></span>
                <span class="num">이번 연도<br><small>(YYYY년)</small></span>
                <span class="num">1년 전<br><small>(YYYY년)</small></span>
                <span class="num">2년 전<br><small>(YYYY년)</small></span>
                <span class="num">3년 전<br><small>(YYYY년)</small></span>
                <span class="num">현재 3개년<br>평균 증감률</span>
                <span class="num">직전 3개년<br>평균 증감률</span>
            </li>
            <li>
                <span class="tit">
                    개인회원<br>
                    총 가입 건수<br>
                    <small>(전년 대비 증감 율)</small>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
            </li>
            <li>
                <span class="tit">
                    기업회원<br>
                    총 가입 건수<br>
                    <small>(전년 대비 증감 율)</small>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
            </li>
            <li>
                <span class="tit">
                    총 채용공고<br>
                    등록 건수<br>
                    <small>(전년 대비 증감 율)</small>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
            </li>
            <li>
                <span class="tit type2">
                    총 입사지원 건수<br>
                    <small>(전년 대비 증감 율)</small>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
            </li>
            <li>
                <span class="tit type2">
                    총 채용확정 건수<br>
                    <small>(전년 대비 증감 율)</small>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="down">(<span>90.00%</span>)</p>
                </span>
                <span class="num">
                    1,800건
                    <p class="up">(<span>90.00%</span>)</p>
                </span>
            </li>
        </ul>
    </section>
</div>

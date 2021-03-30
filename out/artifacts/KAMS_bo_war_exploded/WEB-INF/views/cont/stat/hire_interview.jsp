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
<script type="text/javascript">
    $(document).ready(function () {

    });
</script>

<div class="container">

    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <article class="tabCont">
        <ul class="tabArea">
            <li>
                <a href="/artmore_adm/cont/stat/hire_complete.do">채용확정</a>
            </li>
            <li>
                <a href="/artmore_adm/cont/stat/hire_resume.do">이력서등록</a>
            </li>
            <li class="on">
                <a href="#none">면접제의</a>
            </li>
            <li>
                <a href="/artmore_adm/cont/stat/hire_contact.do">인재에게 연락하기</a>
            </li>
        </ul>
    </article>

    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont">
                <label for="sel01_01">지역별</label>
                <select id="sel01_01" class="wid150">
                    <option>전체</option>
                </select>
            </div>
            <div class="formCont half">
                <label for="datepicker_01">기간 선택</label>
                <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                ~
                <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                <select id="sel01_02" class="wid100">
                    <option>이번 연도</option>
                </select>
                <a href="#none" class="btn orange">
                    <span class="material-icons">search</span>
                    검색
                </a>
            </div>
        </div>
    </article>

    <article class="contUnit">
        <div class="btnArea mgt0 mgb10">
            <div class="left">
                <h3>지역별</h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
                    YYYY-MM-DD ~ YYYY-MM-DD | 전체지역 > 전체지역
                </div>
            </div>
        </div>

        <section class="graphArea">
            <canvas id="graphZone" style="width:100%;height:40rem;"></canvas>
            <script>
                var ctx = document.getElementById("graphZone");
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ["서울", "경기", "인천", "부산", "대구", "대전", "세종", "광주", "울산", "충남", "충북", "경남", "경북", "전남", "전북", "강원", "제주"],
                        datasets: [{
                            label: ['지역별 개인회원가입'],
                            data: [1800,1200,500,800,1300,1000,300,200,500,700,1500,200,400,800,400,200,150],
                            fill: false,
                            backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)","rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)","rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)"],
                            borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)","rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)","rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)"],
                            borderWidth: 1,
                            borderDash: [0, 0],

                            pointBorderColor: 'rgba(255,99,132,.1)',
                            pointBackgroundColor: 'rgba(255,99,132,1)',
                            pointRadius: 5,
                            pointHoverRadius: 5,
                            pointHoverBackgroundColor: 'rgba(255,99,132,1)',
                            pointHoverBorderColor: 'rgba(255,99,132,1)',

                            lineTension: .5,
                            scaleShowGridLines: true,
                        }]
                    },
                    options: {
                        responsive: true,
                        legend:{
                            display:false,
                            position:'top',
                            labels:{
                                padding:100,
                            }
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
                                    labelString: '지역'
                                },
                                ticks: {
                                    min: 0,
                                    // max: 100000
                                },
                            }],
                            yAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: '공고수'
                                },
                                ticks: {
                                    min: 0,
                                    // max: 100000
                                    // stepSize:2000
                                },
                            }]
                        },
                        layout: {
                            padding: {
                                left: 0,
                                right: 0,
                                top: 20,
                                bottom: 0
                            }
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
    </article>

    <article class="halfArea">
        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>장르별</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphMode" style="width:100%;height:40rem;"></canvas>
                <script>
                    var ctx = document.getElementById("graphMode").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["공연예술", "시각예술", "영상예술", "문학예술", "기타예술"],
                            datasets: [{
                                label: '장르별',
                                data: [1800, 1200, 400, 600, 900],
                                backgroundColor: [
                                    window.chartColors.red,
                                    window.chartColors.yellow,
                                    window.chartColors.blue,
                                    window.chartColors.green,
                                    window.chartColors.gray,
                                ],
                                borderColor: 'rgba(255,255,255,.5)',
                                borderWidth: 1,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend: {
                                position: 'top'
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
                            animation: {
                                animateScale: true,
                                animateRotate: true
                            },
                            plugins: {
                                labels: [
                                    {render:'label',position:'outside',fontStyle:'bold'},
                                    {render:'value',fontColor:'#fff'}
                                ]
                            },
                            cutoutPercentage: 50,
                            rotation: -.5 * Math.PI,
                            circumference: 2 * Math.PI
                        }
                    });
                </script>
            </section>
        </article>

        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>기업형태별</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphComMode" style="width:100%;height:40rem;"></canvas>

                <script>
                    var ctx = document.getElementById("graphComMode").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["민간", "공공", "특수"],
                            datasets: [{
                                label: '기업형태별',
                                data: [1800, 1200, 500],
                                backgroundColor: [
                                    window.chartColors.red,
                                    window.chartColors.yellow,
                                    window.chartColors.blue,
                                ],
                                borderColor: 'rgba(255,255,255,.5)',
                                borderWidth: 1,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend: {
                                position: 'top',
                                display: true,
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
                            animation: {
                                animateScale: true,
                                animateRotate: true
                            },
                            plugins: {
                                labels: [
                                    {render:'label',position:'outside',fontStyle:'bold'},
                                    {render:'value',fontColor:'#fff'}
                                ]
                            },
                            cutoutPercentage: 50,
                            rotation: -.5 * Math.PI,
                            circumference: 2 * Math.PI
                        },
                    });
                </script>
            </section>
        </article>
    </article>

    <article class="halfArea">
        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>세부 장르별</h3>
                </div>
                <div class="right">
                    <div class="tblMsg ta_r">
                    </div>
                </div>
            </div>

            <section class="graphArea half">
                <canvas id="graphDetail" style="width:100%;height:40rem;"></canvas>
                <script>
                    var ctx = document.getElementById("graphDetail");
                    new Chart(ctx, {
                        type: 'horizontalBar',
                        data: {
                            labels: ["연극/뮤지컬분야", "음악분야", "무용분야", "전통분야", "미술분야", "디자인분야", "영화/방송분야", "영상디자인분야", "문학분야", "비문학분야", "기타,특수분야"],
                            datasets: [{
                                label: ['세부 장르별'],
                                data: [1800,1200,500,800,1300,1000,300,200,500,700,1500],
                                fill: false,
                                backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)","rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)"],
                                borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)","rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)"],
                                borderWidth: 1,
                                borderDash: [0, 0],

                                pointBorderColor: 'rgba(255,99,132,.1)',
                                pointBackgroundColor: 'rgba(255,99,132,1)',
                                pointRadius: 5,
                                pointHoverRadius: 5,
                                pointHoverBackgroundColor: 'rgba(255,99,132,1)',
                                pointHoverBorderColor: 'rgba(255,99,132,1)',

                                lineTension: .5,
                                scaleShowGridLines: true,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend:{
                                display:false,
                                position:'top',
                                labels:{
                                    padding:100,
                                }
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
                                        labelString: '공고수'
                                    },
                                    ticks: {
                                        min: 0,
                                        // max: 100000
                                    },
                                }],
                                yAxes: [{
                                    display: true,
                                    scaleLabel: {
                                        display: true,
                                        labelString: '분야'
                                    },
                                    ticks: {
                                        min: 0,
                                        // max: 100000
                                        // stepSize:2000
                                    },
                                }]
                            },
                            layout: {
                                padding: {
                                    left: 0,
                                    right: 0,
                                    top: 20,
                                    bottom: 0
                                }
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
        </article>

        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>업종별</h3>
                </div>
                <div class="right">
                    <div class="tblMsg ta_r">
                    </div>
                </div>
            </div>

            <section class="graphArea half">
                <canvas id="graphComType" style="width:100%;height:40rem;"></canvas>
                <script>
                    var ctx = document.getElementById("graphComType");
                    new Chart(ctx, {
                        type: 'horizontalBar',
                        data: {
                            labels: ["자영예술업", "기획창작제작업", "감독기술업", "관리업", "사무업", "공간운영업", "유통소비업", "교육서비스업", "연구개발업", "기타서비스업", "기타,특수분야"],
                            datasets: [{
                                label: ['업종별'],
                                data: [1800,1200,500,800,1300,1000,300,200,500,700,1500],
                                fill: false,
                                backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)","rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)"],
                                borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)","rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)"],
                                borderWidth: 1,
                                borderDash: [0, 0],

                                pointBorderColor: 'rgba(255,99,132,.1)',
                                pointBackgroundColor: 'rgba(255,99,132,1)',
                                pointRadius: 5,
                                pointHoverRadius: 5,
                                pointHoverBackgroundColor: 'rgba(255,99,132,1)',
                                pointHoverBorderColor: 'rgba(255,99,132,1)',

                                lineTension: .5,
                                scaleShowGridLines: true,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend:{
                                display:false,
                                position:'top',
                                labels:{
                                    padding:100,
                                }
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
                                        labelString: '공고수'
                                    },
                                    ticks: {
                                        min: 0,
                                        // max: 100000
                                    },
                                }],
                                yAxes: [{
                                    display: true,
                                    scaleLabel: {
                                        display: true,
                                        labelString: '업종'
                                    },
                                    ticks: {
                                        min: 0,
                                        // max: 100000
                                        // stepSize:2000
                                    },
                                }]
                            },
                            layout: {
                                padding: {
                                    left: 0,
                                    right: 0,
                                    top: 20,
                                    bottom: 0
                                }
                            },
                            plugins: {
                                labels: [
                                    {render:'label',position:'outside',fontStyle:'bold'}
                                ]
                            },

                        }
                    });
                </script>
            </section>
        </article>
    </article>

    <article class="halfArea">
        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>성별</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphGender" style="width:100%;height:40rem;"></canvas>
                <script>
                    var ctx = document.getElementById("graphGender").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["남", "여"],
                            datasets: [{
                                label: '성별',
                                data: [1800, 1200],
                                backgroundColor: [
                                    window.chartColors.blue,
                                    window.chartColors.red
                                ],
                                borderColor: 'rgba(255,255,255,.5)',
                                borderWidth: 1,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend: {
                                position: 'top'
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
                            animation: {
                                animateScale: true,
                                animateRotate: true
                            },
                            plugins: {
                                labels: [
                                    {render:'label',position:'outside',fontStyle:'bold'},
                                    {render:'value',fontColor:'#fff'}
                                ]
                            },
                            cutoutPercentage: 50,
                            rotation: -.5 * Math.PI,
                            circumference: 2 * Math.PI
                        }
                    });
                </script>
            </section>
        </article>

        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>연령별</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphAge" style="width:100%;height:40rem;"></canvas>

                <script>
                    var ctx = document.getElementById("graphAge").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["19세이하", "20대", "30대", "40대", "50대", "60대"],
                            datasets: [{
                                label: '연령별',
                                data: [1800, 1200, 500, 900, 600, 700],
                                backgroundColor: [
                                    window.chartColors.red,
                                    window.chartColors.orange,
                                    window.chartColors.yellow,
                                    window.chartColors.blue,
                                    window.chartColors.green,
                                    window.chartColors.grey
                                ],
                                borderColor: 'rgba(255,255,255,.5)',
                                borderWidth: 1,
                            }]
                        },
                        options: {
                            responsive: true,
                            legend: {
                                position: 'top',
                                display: true,
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
                            animation: {
                                animateScale: true,
                                animateRotate: true
                            },
                            plugins: {
                                labels: [
                                    {render:'label',position:'outside',fontStyle:'bold'},
                                    {render:'value',fontColor:'#fff'}
                                ]
                            },
                            cutoutPercentage: 50,
                            rotation: -.5 * Math.PI,
                            circumference: 2 * Math.PI
                        },
                    });
                </script>
            </section>
        </article>
    </article>
</div>

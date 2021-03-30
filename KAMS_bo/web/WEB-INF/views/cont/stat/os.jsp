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

    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont half">
                <label for="datepicker_01">기간 선택</label>
                <input type="text" id="searchSDate" name="searchSDate" class="wid100" value="${searchSDate}">
                <a href="javascript:showCalendar('searchSDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
                ~
                <input type="text" id="searchEDate" name="searchEDate" class="wid100" value="${searchEDate}">
                <a href="javascript:showCalendar('searchEDate');" style="border-bottom: 0px solid #000; !important;"><img src="/artmore_adm/resources/img/icon_cal.png"></a>
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
                <h3>브라우저 통계</h3>
            </div>
        </div>
        <section class="graphArea">
            <canvas id="graphBrowser" style="width:100%;height:40rem;"></canvas>
            <script>
                var ctx = document.getElementById("graphBrowser");
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ["IE 9", "IE 10", "IE 11", "EDGE", "CHROME", "SAFARI", "FIREFOX", "etc"],
                        datasets: [{
                            label: ['Browser'],
                            data: [2, 12, 15, 50, 40, 20, 11, 13],
                            fill: false,
                            backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)", "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)", "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)"],
                            borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)", "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)"],
                            borderWidth: 1
                        }]
                    },

                    options: {
                        responsive: true,
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
                                    labelString: '브라우저'
                                }
                            }],
                            yAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: '점유율'
                                },
                                ticks: {
                                    min: 0,
                                    max: 100
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
    </article>

    <article class="halfArea">
        <article class="contUnit half">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                    <h3>PC OS</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphPcOs" style="width:100%;height:40rem;"></canvas>
                <script>
                    var ctx = document.getElementById("graphPcOs").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["Windows", "Mac", "etc"],
                            datasets: [{
                                label: 'PC OS',
                                data: [70, 20, 10],
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
                                    {render:'percentage',fontColor:'#fff'}
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
                    <h3>모바일 OS</h3>
                </div>
            </div>
            <section class="graphArea">
                <canvas id="graphMoOs" style="width:100%;height:40rem;"></canvas>

                <script>
                    var ctx = document.getElementById("graphMoOs").getContext('2d');

                    new Chart(ctx, {
                        type: 'doughnut',
                        data: {
                            labels: ["AOS", "IOS", "etc"],
                            datasets: [{
                                label: '모바일 OS',
                                data: [70, 20, 10],
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
                                // position: 'top',
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
                                    {render:'percentage',fontColor:'#fff'}
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

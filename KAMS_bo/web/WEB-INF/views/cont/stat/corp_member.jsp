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
                <a href="/artmore_adm/cont/stat/normal_member.do">개인회원가입</a>
            </li>
            <li class="on">
                <a href="#none">기업회원가입</a>
            </li>
        </ul>
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
                <select id="sel01_01" class="wid150">
                    <option>이번 연도</option>
                </select>
            </div>
            <div class="formCont">
                <label for="datepicker_01">지역 선택</label>
                <select id="sel01_02" class="wid150">
                    <option>전체</option>
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
                <h3>기간별</h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
                    YYYY-MM-DD ~ YYYY-MM-DD | 전체지역 > 전체지역
                </div>
            </div>
        </div>
        <section class="graphArea">
            <canvas id="graphTerm" style="width:100%;height:40rem;"></canvas>
            <script>
                var ctx = document.getElementById("graphTerm");
                new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: ["2021", "2020", "2019"],
                        datasets: [{
                            label: ['기간별 개인회원가입'],
                            data: [1800, 18000, 12000],
                            fill: false,
                            backgroundColor: 'rgba(255,99,132,.5)',
                            borderColor: 'rgba(255,99,132,1)',
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
                                    labelString: '연도'
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
                                    labelString: '가입수'
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

    <article class="contUnit">
        <div class="btnArea mgt0 mgb10">
            <div class="left">
                <h3>지역별</h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
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
                                    labelString: '연도'
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
                                    labelString: '가입수'
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
</div>

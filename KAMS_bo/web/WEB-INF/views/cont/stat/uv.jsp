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

    <article class="contUnit ">
        <div class="btnArea mgt0 mgb10">
            <div class="left">
                <h3>UV(홈페이지 방문자)</h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
                </div>
            </div>
        </div>
        <section class="graphArea">
            <canvas id="graphUv" style="width:100%;height:40rem;"></canvas>
            <script>
                var ctx = document.getElementById("graphUv");
                new Chart(ctx, {
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
    </article>
</div>

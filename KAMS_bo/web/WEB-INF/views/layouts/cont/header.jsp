<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title><spring:message code="app.title"/></title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="format-detection" content="telephone=no"><!-- iOS 전화 자동연결 방지 메타태그 -->

    <script src="/artmore_adm/resources/js/jquery-1.12.4.min.js"></script>
    <script src="/artmore_adm/resources/js/jquery-ui.js"></script>
    <script src="/artmore_adm/resources/js/common.js"></script>
    <script src="/artmore_adm/resources/js/a2k.js"></script>
    <script src="/artmore_adm/resources/js/utils.js"></script>

    <link rel="shortcut icon" href="/artmore_adm/resources/img/favicon.ico">
    <link href="/artmore_adm/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/artmore_adm/resources/css/style.css" rel="stylesheet" type="text/css">
    <link href="/artmore_adm/resources/css/jquery-ui.css" rel="stylesheet" type="text/css">
    <link href="/artmore_adm/resources/css/icon.css" rel="stylesheet" type="text/css">

    <!-- Dialog tingle -->
    <script type="text/javascript" src="/artmore_adm/resources/plugins/tingle/tingle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/plugins/tingle/tingle.min.css" />
    <!-- jBox Dialog and ToolTip -->
    <%--<script type="text/javascript" src="/artmore_adm/resources/fo/kor/plugins/jbox/jBox.all.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/fo/kor/plugins/jbox/jBox.css" />
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/fo/kor/plugins/jbox/jBox.all.css" />--%>

    <!-- Date Picker -->
    <script type="text/javascript" src="/artmore_adm/resources/plugins/datepicker/moment.min.js"></script>
    <script type="text/javascript" src="/artmore_adm/resources/plugins/datepicker/daterangepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/plugins/datepicker/daterangepicker.css"/>

    <!-- namo editor -->
    <script type="text/javascript" src="/artmore_adm/resources/namo/js/namo_scripteditor.js"></script>


    <!-- 갤러리 -->
    <%--<script type="text/javascript" src="/artmore_adm/resources/bo/plugins/gallery/jquery.justifiedGallery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/bo/plugins/gallery/justifiedGallery.min.css" />--%>

    <!-- chart js -->
    <script type="text/javascript" src="/artmore_adm/resources/js/Chart.min.js"></script>

    <!-- tree view -->
    <%--<script type="text/javascript" src="/artmore_adm/resources/bo/plugins/treeview/jstree.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/bo/plugins/treeview/themes/default/style.min.css" />--%>

    <!-- awesome font -->
    <!-- <script src="https://kit.fontawesome.com/8b5932bd44.js"></script> -->

    <script src="/artmore_adm/resources/js/dialog.js"></script>
</head>
<body>
<script type="text/javascript">

    var theme = getCookie("theme");
    if(theme === "" || theme === "white") {
        $('body').removeClass('dark');
    } else {
        $('body').addClass('dark');
    }

    $(document).ready(function () {
        $("#btn_logout").click(function(){
            modalMsg("로그아웃 하시겠습니까?", 'yesorno', goLogout);
        });
    });

    function goLogout() {
        location.href = "/artmore_adm/login/logout.do";
    }
</script>
<!-- head -->
<header>
    <div class="left">
        <a href="#none"><img src="/artmore_adm/resources/img/logo.png"></a>
    </div>
    <div class="right">
        <span class="user"><b>${adminLoginVo.name}</b>(슈퍼관리자)</span>
        <a href="#none" class="btn_top" id="btn_logout">
            <span class="material-icons">logout</span>
            로그아웃
        </a>
        <a href="/artmore_adm/cont/home/pwd_view.do" class="btn_top">
            <span class="material-icons">portrait</span>
            비밀번호변경
        </a>
        <a href="#none" class="btn_top toggleTheme">
            <span class="material-icons">import_contacts</span>
            테마변경
        </a>
        <div class="themeMenu">
            <a href="#none" class="light on">밝은테마</a>
            <a href="#none" class="dark">어두운테마</a>
        </div>
    </div>
</header>

<section class="wrap">

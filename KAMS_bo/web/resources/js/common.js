$(document).ready(function () {
    //타이틀 변경
    var importTit = $('.container > article.tit').text();
    $('html > head > title').text(importTit);

    //왼쪽메뉴 클릭
    var menuList = $('.leftMenu > .menu > li > a');
    menuList.click(function () {
        var menuClick = $(this).attr('id');
        var menuId = "#" + menuClick;

        if ($(menuList).hasClass('on') === true) {
            $('.leftMenu > .menu > li > a').removeClass('on');
            $('.leftMenu > .menu > li > .subMenu').removeClass('on');
        }

        if ($(menuList).hasClass('on') === false) {
            $(menuId).toggleClass('on');
            $(menuId).next('.subMenu').toggleClass('on');
        }
    });

    //왼쪽서브메뉴 클릭
    var subMenuList = $('.leftMenu > .menu > li > .subMenu > li > a');
    subMenuList.click(function () {
        var subMenuClick = $(this).attr('id');
        var subMenuId = "#" + subMenuClick;

        $(subMenuId).next('.finMenu').toggleClass('on');
        $(subMenuId).toggleClass('on');
    });


    // 탭메뉴
    var tabList = $(".tabUnit li");
    tabList.click(function () {
        var tabClick = $(this).attr('id');
        var tabOpen = "." + tabClick;
        var tabOpenList = "#" + tabClick;

        $(".tabUnit .list li").removeClass('on')
        $(tabOpenList).addClass('on')
        $(".tabUnit .cont").removeClass('on')
        $(tabOpen).addClass('on')
    });

    //전체체크
    $("#allCheck").click(function () {
        var subCheck = $(this).parents('thead').next('tbody').children('tr').children('td').children('input[type=checkbox]')

        if ($("#allCheck").prop("checked")) {
            $(subCheck).prop("checked", true);
            $(subCheck).click(function () {
                $('#allCheck').prop("checked", false);
            });
        } else {
            $(subCheck).prop("checked", false);
        }
    })
    $('.checkboxCont p.tit input[type=checkbox]').click(function () {
        var allCheckId = '#' + $(this).attr("id")
        var subCheck = $(allCheckId).parents().nextAll('input[type=checkbox]')

        if ($(allCheckId).prop("checked")) {
            $(subCheck).prop("disabled", false);
        } else {
            $(subCheck).prop("disabled", true);
        }
    });

    $("#allCheckPop").click(function () {
        var subCheck = $(this).parents('thead').next('tbody').children('tr').children('td').children('input[type=checkbox]')

        if ($("#allCheckPop").prop("checked")) {
            $(subCheck).prop("checked", true);
            $(subCheck).click(function () {
                $('#allCheckPop').prop("checked", false);
            });
        } else {
            $(subCheck).prop("checked", false);
        }
    })

    $('.checkboxCont p.tit input[type=checkbox]').click(function () {
        var allCheckId = '#' + $(this).attr("id")
        var subCheck = $(allCheckId).parents().nextAll('input[type=checkbox]')

        if ($(allCheckId).prop("checked")) {
            $(subCheck).prop("disabled", false);
        } else {
            $(subCheck).prop("disabled", true);
        }
    });

    //테이블열기
    $('.js_tblOpen').click(function () {
        var targetTbl = $(this).parent().parent().next()
        $(targetTbl).slideToggle()
        $(this).toggleClass('close')
    });

    // 팝업열기
    var popList = $(".popOpen");
    popList.click(function () {
        var popClick = $(this).attr('id');
        var popOpen = "." + popClick;
        $(popOpen).addClass('on')
    });

    // 팝업닫기
    $('.btnClose').click(function () {
        $('.popArea').removeClass('on')
    });

    // 트리
    $('.treeUnit li > p').click(function () {
        var currentMenu = $(this).text()

        // $(this).next().slideToggle()
        $(this).parent().toggleClass('close')
        $('.treeUnit li > p').removeClass('current')
        $(this).addClass('current')

        //handle input
        // $('#menuName').attr('value',currentMenu)
    });
    $('.js_treeExpand').click(function () {
        $('.treeUnit ul li').removeClass('close')
    });
    $('.js_treeCollapse').click(function () {
        $('.treeUnit ul li').addClass('close')
    });


    //datepicker
    $(function () {
        $(".datepicker_start").datepicker({
            showButtonPanel: false,
            buttonImageOnly: true,
            showMonthAfterYear: true,
            changeYear: true,
            changeMonth: true,
            buttonImage: "img/icon_cal.png",
            showOn: "both",
            nextText: '다음 달',
            prevText: '이전 달',
            currentText: '오늘',
            closeText: '닫기',
            buttonText: "날짜 선택",
            dateFormat: "yy-mm-dd",
            yearRange: 'c-100:c+1',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
        });
        $(".datepicker_end").datepicker({
            showButtonPanel: false,
            buttonImageOnly: true,
            showMonthAfterYear: true,
            changeYear: true,
            changeMonth: true,
            buttonImage: "img/icon_cal.png",
            showOn: "both",
            nextText: '다음 달',
            prevText: '이전 달',
            currentText: '오늘',
            closeText: '닫기',
            buttonText: "날짜 선택",
            dateFormat: "yy-mm-dd",
            yearRange: 'c-100:c+1',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
        });
        $("#datepicker_start").datepicker({
            showButtonPanel: false,
            buttonImageOnly: true,
            showMonthAfterYear: true,
            changeYear: true,
            changeMonth: true,
            buttonImage: "img/icon_cal.png",
            showOn: "both",
            nextText: '다음 달',
            prevText: '이전 달',
            currentText: '오늘',
            closeText: '닫기',
            buttonText: "날짜 선택",
            dateFormat: "yy-mm-dd",
            yearRange: 'c-100:c+1',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
        });
        $("#datepicker_end").datepicker({
            showButtonPanel: false,
            buttonImageOnly: true,
            showMonthAfterYear: true,
            changeYear: true,
            changeMonth: true,
            buttonImage: "img/icon_cal.png",
            showOn: "both",
            nextText: '다음 달',
            prevText: '이전 달',
            currentText: '오늘',
            closeText: '닫기',
            buttonText: "날짜 선택",
            dateFormat: "yy-mm-dd",
            yearRange: 'c-100:c+1',
            monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
            dayNamesMin: ['일', '월', '화', '수', '목', '금', '토']
        });
    });
});

// 입력글자수 실시간 세크
$(document).ready(function () {
    // 입력 문자열 계산 //////////////////////////////////////////////////////////////////////////////////////////
    /*$('#title').keyup(function (event) {
        if($(this).val().length > 50) {
            if(event.keyCode !== 8) {
                alert("50자까지만 입력이 가능합니다.");
            }
            $('#title').val($('#title').val().substr(0, $('#title').val().length -1));
        } else {
            $('#txt_length').text($(this).val().length);
        }
    });*/

    /*$('#title').keydown(function (event) {
        if($(this).val().length > 50) {
            if(event.keyCode !== 8) {
                alert("50자까지만 입력이 가능합니다.");
            }
            $('#title').val($('#title').val().substr(0, $('#title').val().length -1));
        } else {
            $('#txt_length').text($(this).val().length);
        }
    });*/

    /*let title = $('#title').val();
    if(!isEmpty(title) && title !== '') {
        $('#txt_length').text(title.length);
    }*/
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    // 테마관련
    // 테마변경
    $('.toggleTheme').click(function() {
        $('.themeMenu').slideToggle(400);
    });
    $('.themeMenu .light').click(function() {
        $('body').removeClass('dark');
        $('.themeMenu').slideUp(400);
        $('.themeMenu a:nth-child(1)').addClass('on');
        $('.themeMenu a:nth-child(2)').removeClass('on');

        setCookie("theme", "white", 365);
    });
    $('.themeMenu .dark').click(function() {
        $('body').addClass('dark');
        $('.themeMenu').slideUp(400);
        $('.themeMenu a:nth-child(1)').removeClass('on');
        $('.themeMenu a:nth-child(2)').addClass('on');

        setCookie("theme", "dark", 365);
    });

    var theme = getCookie("theme");
    if(theme === "" || theme === "white") {
        $('.themeMenu a:nth-child(1)').addClass('on');
        $('.themeMenu a:nth-child(2)').removeClass('on');
    } else {
        $('.themeMenu a:nth-child(1)').removeClass('on');
        $('.themeMenu a:nth-child(2)').addClass('on');
    }

    // 첨부파일 한줄 삭제
    $(document).on('click', '.btn_del' , function(){
        if($("#file_ul li").size() > 1){
            var clickedRow = $(this).parent();
            clickedRow.remove();
        }
        return false;
    });

    // 첨부파일 추가
    $("#btn_add").click(function(){
        add_file();
        return false;
    });
});

// 숫자만 입력가능
function fnIsNumberKeyCode(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;

    alert(keyID);
    if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) )
    {
        return true;
    }
    else
    {
        if (keyID == 8) {return true;} /* 백스페이스 예외 허용 */
        if (keyID == 9) {return true;} /* 탭 예외 허용 */
        return false;
    }
}

function add_file()
{
    /*if(file_cnt > 10) {
        alert("최대 10개까지 첨부 가능합니다.");
        return;
    }*/

    var lastItemNo = $("#file_ul li:last").find("input:eq(0)").attr("id").replace("attfile", "");
    $("#file_ul li:eq(0)").attr("style", "display:none");

    if(lastItemNo == '#'){
        lastItemNo = 0;
    }
    var newitem = $("#file_ul li:eq(0)").clone();
    newitem.attr("style", "");
    newitem.removeClass();
    newitem.find("input").each(function(){
        $(this).attr("id", $(this).attr("id").replace("#", parseInt(lastItemNo)+1));
    });
    newitem.find("label").each(function(){
        $(this).attr("for", $(this).attr("for").replace("#", parseInt(lastItemNo)+1));
    });
    $("#file_ul").append(newitem);
}

function showCalendar(id) {
    var selector = "#" + id;
    $(selector).trigger("click");
}

function nvl(str, defaultStr){

    if(typeof str == "undefined" || str == null || str == "")
        str = defaultStr ;

    return str ;
}

function isEmpty(str){

    if(typeof str == "undefined" || str == null || str == "")
        return true;
    else
        return false ;
}

function numberWithCommas(x, name) {
    var selector = '#' + name;
    x = x.replace(/[^0-9]/g,'');   // 입력값이 숫자가 아니면 공백
    x = x.replace(/,/g,'');          // ,값 공백처리

    $(selector).val(x.replace(/\B(?=(\d{3})+(?!\d))/g, ",")); // 정규식을 이용해서 3자리 마다 , 추가
}

function replaceAll(str, searchStr, replaceStr) {
    return str.split(searchStr).join(replaceStr);
}

// 글자수 입력 제한
function calcWordLng(max_length) {
    var MAX_LENGTH = max_length;
    var tg = event.currentTarget,
        wordCnt = $(tg).val().length,
        writer = $(tg).parent().find('.word_cnt_wrap');
    if(wordCnt > MAX_LENGTH) {
        alert(MAX_LENGTH+'글자까지 입력 가능합니다.');
        var bakWord = $(tg).val().substr(0,200);
        $(tg).val(bakWord);
        wordCnt = $(tg).val().length;
    }
    writer.find('.now_cnt').text(wordCnt);
}

// 콤마 찍기
function numberWithCommasString(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

// 쿠키 가져오기
function getCookie( name ) {
    var nameOfCookie = name + "=";
    var x = 0;
    while ( x <= document.cookie.length )
    {
        var y = (x+nameOfCookie.length);
        if ( document.cookie.substring( x, y ) == nameOfCookie ) {
            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                endOfCookie = document.cookie.length;
            return unescape( document.cookie.substring( y, endOfCookie ) );
        }
        x = document.cookie.indexOf( " ", x ) + 1;
        if ( x == 0 )
            break;
    }
    return "";
}


// 24시간 기준 쿠키 설정하기  expiredays 후의 클릭한 시간까지 쿠키 설정
function setCookie( name, value, expiredays ) {
    var todayDate = new Date();
    todayDate.setDate( todayDate.getDate() + expiredays );
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

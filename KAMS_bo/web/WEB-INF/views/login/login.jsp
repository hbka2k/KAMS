<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: shlee
  Date: 2020-09-10
  Time: 오전 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

    <title>Administrator</title>

    <script src="/artmore_adm/resources/js/jquery-1.12.4.min.js"></script>
    <script src="/artmore_adm/resources/js/jquery.cookie.js"></script>
    <script src="/artmore_adm/resources/js/common.js"></script>

    <link rel="shortcut icon" href="/artmore_adm/resources/img/favicon.ico">
    <link href="/artmore_adm/resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="/artmore_adm/resources/css/style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <script type="text/javascript" src="/artmore_adm/resources/plugins/tingle/tingle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/artmore_adm/resources/plugins/tingle/tingle.min.css" />

    <script src="/artmore_adm/resources/js/dialog.js"></script>
</head>
<body>
<script type="text/javascript">
    $(document).ready(function(){
        //쿠키확인
        let adminId = $.cookie("adminId");
        if (adminId != null && adminId !== "") {
            $("#admin_id").val(adminId);
            $("#idsaveCheck").attr("checked", "checked");
        }

        $("#pwd").on("keyup", function(event) {
            if (event.keyCode === 13) {
                goSubmit();
            }
        });
    });

    function goSubmit() {
        let frm = document.frm;

        if (!fnIsValidRequired(frm.admin_id, "아이디")) {
            return;
        }
        if (!fnIsValidRequired(frm.pwd, "비밀번호")) {
            return;
        }

        let checkStatus = $("#idsaveCheck").is(":checked");	// id값 저장 여부
        if(checkStatus){ //  체크되어있으면
            $.cookie("adminId", $("#admin_id").val(), {
                expires : 365,
                path : '/artmore_adm/login'
            });
        }else{	// 아니면 쿠키 값을 없에고
            $.cookie("adminId", '', {
                path : '/artmore_adm/login'
            });
        }

        frm.admin_id.value = frm.admin_id.value.trim();
        frm.pwd.value = frm.pwd.value.trim();

        frm.submit();
    }
</script>
<section class="loginWrap">
    <div class="loginArea">
        <div class="topUnit">
            <img src="/artmore_adm/resources/img/logo_color.png">
            <span>통합 관리자 로그인</span>
        </div>
        <div class="formUnit">
            <h2>로그인</h2>
            <form name="frm" id="frm" method="post" action="/artmore_adm/login/login.do">
            <div class="info">
                <div class="input">
                    <input type="text" name="admin_id" id="admin_id" placeholder="아이디를 입력해주세요" title="아이디를 입력해주세요">
                    <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요" title="비밀번호를 입력해주세요">
                </div>
                <div class="check">
                    <input type="checkbox" id="idsaveCheck" name="idsaveCheck"><label for="idsaveCheck">ID저장</label>
                </div>
                <!-- <div class="btnSch">
                    <a href="#none">
                        <span class="material-icons">person_search</span> 아이디/비밀번호 찾기
                    </a>
                </div> -->
            </div>
            </form>
            <!-- <div class="noti">
                <ul class="list dot">
                    <li>아이디 또는 비밀번호 문의는 최고관리자에게 문의하시기 바랍니다.<br>(02-000-0000)</li>
                    <li>관리자 권한이 없는 사용자는 관리자 페이지에 접근하실 수 없습니다.</li>
                    <li>임의 접근시도 확인 시 법적 제재를 받을 수 있습니다.</li>
                </ul>
            </div> -->
            <div class="btnLogin">
                <a href="javascript:goSubmit();" class="btn red">로그인</a>
                <!-- <a href="#none" class="btn">회원가입</a> -->
            </div>
        </div>
        <div class="loginFoot">
            (03082) 서울시 종로구 대학로 57 (연건동) 홍익대학교 대학로 캠퍼스 교육동 3층,<br> 12층 TEL : 02-708-2244
            E-mail: webmaster@gokams.or.kr<br>
            <span>COPYRIGHT <b>©</b> BY www.gokams.or.kr All Reserved.</span>
        </div>
    </div>
</section>
</body>
</html>

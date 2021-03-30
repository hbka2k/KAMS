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
        $("#btn_update").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.pwd_cur, "현재비밀번호")){return false;}
            if(!fnIsValidRequired(frm.pwd, "새 비밀번호")){return false;}
            if(!fnIsValidRequired(frm.pwd_c, "새 비밀번호 확인")){return false;}

            if(frm.pwd.value !== frm.pwd_c.value) {
                alert("새비밀번호와 새 비밀번호 확인이 일치하지 않습니다.");
                return false;
            }

            $("#frm").submit();
        });
    });
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>
    <article class="contUnit tbl_area leftType">
        <div class="btnArea mgt0 mgb10">
            <div class="left">
                <h3></h3>
            </div>
            <div class="right">
                <div class="tblMsg ta_r">
                    <span class="co_red">*</span> 필수입력
                </div>
            </div>
        </div>
        <form name="frm" id="frm" action="/artmore_adm/cont/home/pwd_view.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="admin_id" id="admin_id" value="${adminLoginVo.admin_id}" />
        <table>
            <colgroup>
                <col style="width:15rem">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th class="required">현재비밀번호</th>
                <td>
                    <input type="password" class="wid350" id="pwd_cur" name="pwd_cur">
                </td>
            </tr>
            <tr>
                <th class="required">새 비밀번호</th>
                <td>
                    <input type="password" class="wid350" id="pwd" name="pwd">
                </td>
            </tr>
            <tr>
                <th class="required">새 비밀번호 확인</th>
                <td>
                    <input type="password" class="wid350" id="pwd_c" name="pwd_c">
                </td>
            </tr>
            </tbody>
        </table>
        </form>
        <div class="btnArea">
            <div class="left">
            </div>
            <div class="right">
                <a href="#none" class="btn red" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

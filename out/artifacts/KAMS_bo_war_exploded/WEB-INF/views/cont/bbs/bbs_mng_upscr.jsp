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
        $("#btn_update").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.new_day, "New 아이콘 출력일수")){return false;}
            if(!fnIsValidRequired(frm.list_size, "리스트 수")){return false;}

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
        <form name="frm" id="frm" action="/artmore_adm/cont/bbs/bbs_mng_upscr.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="bbs_idx" id="bbs_idx" value="${bbsMstVo.bbs_idx}" />
            <table>
                <colgroup>
                    <col style="width:15%">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th class="required">게시판명</th>
                    <td>
                        <%--<input type="text" class="wid100per" name="name" id="name" value="${bbsMstVo.name}">--%>
                        ${bbsMstVo.name}
                    </td>
                </tr>
                <tr>
                    <th class="required">사용여부</th>
                    <td>
                        <input type="radio" name="use_yn" id="use_y" value="Y" <c:if test="${bbsMstVo.use_yn eq 'Y'}">checked="checked"</c:if>>
                        <label for="use_y">사용</label>
                        <input type="radio" name="use_yn" id="use_n" value="N" <c:if test="${bbsMstVo.use_yn eq 'N'}">checked="checked"</c:if>>
                        <label for="use_n">비사용</label>
                    </td>
                </tr>
                <tr>
                    <th class="required">게시판타입</th>
                    <td>
                        <select name="gbn_cd" id="gbn_cd">
                            <option value="B" <c:if test="${bbsMstVo.gbn_cd eq 'B'}">selected="selected"</c:if>>일반</option>
                            <option value="G" <c:if test="${bbsMstVo.gbn_cd eq 'G'}">selected="selected"</c:if>>갤러리</option>
                            <option value="F" <c:if test="${bbsMstVo.gbn_cd eq 'F'}">selected="selected"</c:if>>FAQ</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="required">카테고리</th>
                    <td>
                        <input type="radio" name="cate_yn" id="cate_y" value="Y" <c:if test="${bbsMstVo.cate_yn eq 'Y'}">checked="checked"</c:if>>
                        <label for="use_y">사용</label>
                        <input type="radio" name="cate_yn" id="cate_n" value="N" <c:if test="${bbsMstVo.cate_yn eq 'N'}">checked="checked"</c:if>>
                        <label for="use_n">미사용</label>
                    </td>
                </tr>
                <tr>
                    <th class="required">New 아이콘 출력일수</th>
                    <td>
                        <input type="text" class="wid150" name="new_day" id="new_day" value="${bbsMstVo.new_day}" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
                    </td>
                </tr>
                <tr>
                    <th class="required">리스트 수</th>
                    <td>
                        <input type="text" class="wid150" name="list_size" id="list_size" value="${bbsMstVo.list_size}" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/bbs/bbs_mng_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <%--<a href="#none" class="btn grey" id="btn_delete">삭제</a>--%>
                <a href="#none" class="btn red" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

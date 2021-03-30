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

        // 검색 조건중 소속 정보가 있는 경우
        let kind_cd = '${adminVo.kind_cd}';
        let admin_rule_idx = '${adminVo.admin_rule_idx}';
        if(kind_cd !== '' && admin_rule_idx !== '') {
            let select_val = kind_cd;
            let html = '';
            if(select_val !== '') {
                $.ajax({
                    url: "/artmore_adm/ajax/admin_rule_list.do?kind_cd=" + select_val,
                    type: 'POST',
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        $('#admin_rule_idx').children().remove();
                        html += '<option value="">전체</option>';
                        $.each(data,function(key,v) {
                            let idx = v['admin_rule_idx'];
                            if (idx === Number(admin_rule_idx)) {
                                html += '<option value="' + v['admin_rule_idx'] + '" selected>' + v['grp_nm'] + '</option>';
                            } else {
                                html += '<option value="' + v['admin_rule_idx'] + '">' + v['grp_nm'] + '</option>';
                            }
                        });
                        $('#admin_rule_idx').append(html);
                    }
                });
            }
        }

        $('#kind_cd').change(function() {
            let select_val = $(this).val();
            let html = '';
            if(select_val !== '') {
                $.ajax({
                    url: "/artmore_adm/ajax/admin_rule_list.do?kind_cd=" + select_val,
                    type: 'POST',
                    dataType: 'json',
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        $('#admin_rule_idx').children().remove();
                        html += '<option value="">그룹 선택</option>';
                        $.each(data,function(key,v) {
                            let idx = v['admin_rule_idx'];
                            html += '<option value="' + v['admin_rule_idx'] + '">' + v['grp_nm'] + '</option>';
                        });
                        $('#admin_rule_idx').append(html);
                    }
                });
            } else {
                $('#admin_rule_idx').children().remove();
                html += '<option value="">그룹 선택</option>';
                $('#admin_rule_idx').append(html);
            }
        });

        $("#btn_update").click(function(){
            var frm = document.frm;

            if(!fnIsValidRequired(frm.kind_cd, "관리자 유형")){return false;}
            if(!fnIsValidRequired(frm.admin_rule_idx, "관리자 그룹")){return false;}
            if(!fnIsValidRequired(frm.name, "성명")){return false;}
            if(!fnIsValidRequired(frm.admin_id, "아이디")){return false;}
            if(!fnIsValidRequired(frm.code_idx, "부서")){return false;}

            $("#frm").submit();
        });
    });
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${subMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
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
        <form name="frm" id="frm" action="/artmore_adm/cont/basic/admin_upscr.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="admin_id" id="admin_id" value="${adminVo.admin_id}" />
            <table>
                <colgroup>
                    <col style="width:15%">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th class="required">사용여부</th>
                    <td>
                        <input type="radio" name="use_yn" id="use_y" value="Y" <c:if test="${adminVo.use_yn eq 'Y'}">checked="checked"</c:if>>
                        <label for="use_y">사용</label>
                        <input type="radio" name="use_yn" id="use_n" value="N" <c:if test="${adminVo.use_yn eq 'N'}">checked="checked"</c:if>>
                        <label for="use_n">미사용</label>
                    </td>
                </tr>
                <tr>
                    <th class="required">관리자유형</th>
                    <td>
                        <select class="wid200" id="kind_cd" name="kind_cd">
                            <option value="S" <c:if test="${adminVo.kind_cd eq 'S'}">selected="selected"</c:if>>통합관리자</option>
                            <option value="N" <c:if test="${adminVo.kind_cd eq 'N'}">selected="selected"</c:if>>일반관리자</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="required">관리자그룹</th>
                    <td>
                        <select id="admin_rule_idx" name="admin_rule_idx">
                            <option value="">그룹 선택</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="required">성명</th>
                    <td>
                        <input type="text" class="wid250" name="name" id="name" value="${adminVo.name}">
                    </td>
                </tr>
                <tr>
                    <th class="required">아이디</th>
                    <td>
                        ${adminVo.admin_id} <br/><br/>
                        <div class="co_red">※ 초기 비밀번호는 아이디와 동일합니다. 로그인 후 반드시 비밀번호변경을 권유해주세요.</div>
                    </td>
                </tr>
                <tr>
                    <th class="required">부서명</th>
                    <td>
                        <select name="code_idx" id="code_idx">
                            <option value="">부서 선택</option>
                            <c:forEach items="${codeList}" var="item" varStatus="status">
                                <option value="${item.code_idx}" <c:if test="${adminVo.code_idx eq item.code_idx}">selected="selected"</c:if>>${item.cd_nm}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/basic/admin_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <%--<a href="#none" class="btn grey">취소</a>--%>
                <a href="#none" class="btn red" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

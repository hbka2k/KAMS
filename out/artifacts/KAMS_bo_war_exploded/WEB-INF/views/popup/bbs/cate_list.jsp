<%--
  Created by IntelliJ IDEA.
  User: shlee
  Date: 2020-10-19
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="/WEB-INF/tlds/common.tld" prefix="common" %>
<script type="text/javascript">
    $(document).ready(function(){
        $('#div_update').hide();

        $("#btn_close").click(function(){
            window.close();
        });

        $("#btn_show_update").click(function(){
            $('#div_insert').hide();
            $('#div_update').show();
        });

        $("#btn_insert").click(function(){
            var frm = document.frm_insert;

            if(!fnIsValidRequired(frm.name, "카테고리명")){return false;}

            $("#frm_insert").submit();
        });

        $("#btn_update").click(function(){
            var frm = document.frm_update;

            if(!fnIsValidRequired(frm.name_u, "카테고리명")){return false;}

            $("#frm_update").submit();
        });
    });

    function show_update(idx, name) {
        $('#div_insert').hide();
        $('#div_update').show();

        $('#cate_idx').val(idx);
        $('#name_u').val(name);
    }

    function delete_cate(idx, cnt) {
        if(confirm("삭제하시겠습니까?")) {
            if (cnt !== 0) {
                alert("게시글이 없는 경우만 삭제가능합니다.");
                return;
            }
            $('#cate_idx_del').val(idx);
            $("#frm_delete").submit();
        }
    }
</script>
<section class="wrap pop">
    <div class="container">
        <form name="frm" id="frm" method="post" action="/artmore_adm/popup/bbs/cate_list.do">
            <input type="hidden" name="page" id="page" value="${page}"/>
            <article class="contUnit">
                <div class="btnArea mgt0 mgb10 of_h">
                    <div class="left">
                        <h4>카테고리 관리</h4>
                    </div>
                </div>
                <div class="line">
                    <div class="formCont">
                        <h2>${bbs_name}</h2>
                    </div>
                </div>
            </article>
        </form>

        <form name="frm_delete" id="frm_delete" method="post" action="/artmore_adm/popup/bbs/cate_delete.do" enctype="multipart/form-data">
            <input type="hidden" name="cate_idx" id="cate_idx_del" />
            <input type="hidden" name="bbs_idx" value="${searchVal}"/>
        </form>

        <form name="frm_insert" id="frm_insert" method="post" action="/artmore_adm/popup/bbs/cate_insert.do" enctype="multipart/form-data">
            <input type="hidden" name="bbs_idx" value="${searchVal}"/>
        <article class="contUnit sch_area" id="div_insert">
            <table>
                <colgroup>
                    <col style="width:15rem">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>카테고리 등록</th>
                    <td>
                        <input type="text" class="wid350" id="name" name="name"> <a href="#none" class="btn red" id="btn_insert">등록</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </article>
        </form>

        <form name="frm_update" id="frm_update" method="post" action="/artmore_adm/popup/bbs/cate_update.do" enctype="multipart/form-data">
            <input type="hidden" name="cate_idx" id="cate_idx" />
            <input type="hidden" name="bbs_idx" value="${searchVal}"/>
            <article class="contUnit sch_area" id="div_update">
                <table>
                    <colgroup>
                        <col style="width:15rem">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th>카테고리 수정</th>
                        <td>
                            <input type="text" class="wid350" id="name_u" name="name_u"> <a href="#none" class="btn red" id="btn_update">수정</a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </article>
        </form>

        <article class="contUnit tbl_area">
            <div class="btnArea mgt0 mgb10">
                <div class="left">
                </div>
                <div class="right">
                </div>
            </div>
            <table>
                <colgroup>
                </colgroup>
                <thead>
                <tr>
                    <th>NO</th>
                    <th>카테고리명</th>
                    <th>게시글 수</th>
                    <th>관리</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${fn:length(itemList) == 0}">
                    <tr>
                        <td colspan="4">데이터가 없습니다.</td>
                    </tr>
                </c:if>
                <c:set var="lno" value="0"/>
                <c:forEach items="${itemList}" var="item" varStatus="status">
                    <c:set var="lno">${lno + 1}</c:set>
                    <tr>
                        <td><fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/></td>
                        <td>${item.name}</td>
                        <td>${item.bbs_cnt}</td>
                        <td class="ta_c">
                            <a href="#none" class="btn sml blue" onclick="show_update('${item.cate_idx}', '${item.name}')">수정</a>
                            <a href="#none" class="btn sml blue" onclick="delete_cate('${item.cate_idx}', ${item.bbs_cnt})">삭제</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <common:pageLinkAdmin name="pageholder"/>
            <div class="btnArea">
                <div class="left">
                </div>
                <div class="right">
                    <a href="#none" class="btn" id="btn_close">닫기</a>
                </div>
            </div>
        </article>
    </div>
</section>

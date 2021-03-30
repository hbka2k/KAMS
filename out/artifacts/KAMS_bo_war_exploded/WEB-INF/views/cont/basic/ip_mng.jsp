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
        // 선택 삭제 - 공통 /////////////////////////////////////////////////////////////////////////////////////////////////
        $('#allCheck_Y').click(function(){
            if ($("#allCheck_Y").is(":checked")) {
                $('input:checkbox[name=del_id]').prop("checked", true);
            } else {
                $('input:checkbox[name=del_id]').prop("checked", false);
            }
        });

        $('input:checkbox[name=del_id]').on("click", function(){
            let chk = true;
            $('input:checkbox[name=del_id]').each(function(){
                if (!$(this).is(":checked")) {
                    chk = false;
                }
            });
            $('#allCheck_Y').prop("checked", chk);
        });

        $("#btn_select_del").click(function(){
            let checkCnt = $("input[name=del_id]:checked").size();
            if(checkCnt === 0){
                alert("삭제 대상을 선택해 주세요.");
                return false;
            }

            if(confirm("선택한 데이터를 삭제 하시겠습니까?.")) {
                let data = $("#ordfrm").serialize();
                $.ajax({
                    url: '/artmore_adm/ajax/ip_con_delete.do',
                    type: 'POST',
                    dataType: 'json',
                    data: data,
                    xhrFields: {
                        withCredentials: true
                    },
                    async   : false,
                    success: function(data){
                        if (data !== true) {
                            alert("삭제에 실패하였습니다.");
                        } else {
                            alert("삭제 되었습니다.");
                            location.reload();
                        }
                    }
                });
            }
        });
        /////////////////////////////////////////////////////////////////

        // 공통 - 검색 /////////////////////////////////////////////////
        $("select[id=listSize_select]").change(function() {
            let listSize = $(this).val();

            $("#page").val("1");
            $("#listSize").val(listSize);

            $("#frm").submit();
        });
        /////////////////////////////////////////////////////////////////

        $("#btn_insert").click(function(){
            var frm = document.frm_insert;

            if(!fnIsValidRequired(frm.ip, "허용 IP")){return false;}

            // 아이피 문자열 체크
            if(!fnIsIPaddress(frm.ip.value)){return false;}

            $("#frm_insert").submit();
        });
    });
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="frm_insert" id="frm_insert" action="/artmore_adm/cont/basic/ip_inscr.do" method="post" enctype="multipart/form-data">
    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">computer</span> Internet Protocol <small>IP입력</small>
        </h3>
        <div class="line">
            <div class="formCont full">
                <label for="ip">허용 IP 입력</label>
                <input type="text" class="wid350" id="ip" name="ip">
                <a href="#none" class="btn red" id="btn_insert">등록</a>
            </div>
        </div>
    </article>
    </form>

    <form name="frm" id="frm" method="post" action="/artmore_adm/cont/basic/ip_mng.do">
        <input type="hidden" name="page" id="page" value="${page}"/>
        <input type="hidden" name="listSize" id="listSize" value="${listSize}"/>
    </form>
    <article class="contUnit tbl_area">
        <div class="btnArea mgt0 mgb10 of_h">
            <div class="left">
                <div class="totalNum">
                    총 <b><fmt:formatNumber value="${totalCount}" pattern="##,###"/></b>건
                </div>
            </div>
            <div class="right">
                <select id="listSize_select" title="목록수">
                    <option value="10" <c:if test="${listSize == '10'}">selected="selected"</c:if>>10개</option>
                    <option value="30" <c:if test="${listSize == '30'}">selected="selected"</c:if>>30개</option>
                    <option value="50" <c:if test="${listSize == '50'}">selected="selected"</c:if>>50개</option>
                    <option value="100" <c:if test="${listSize == '100'}">selected="selected"</c:if>>100개</option>
                </select>
            </div>
        </div>
        <form name="ordfrm" id="ordfrm">
        <table>
            <colgroup>
                <col style="width:2%">
                <col style="width:10%">
                <col>
                <col>
                <col>
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" name="allCheck_Y" id="allCheck_Y"></th>
                <th>번호</th>
                <th>허용 IP</th>
                <th>등록자</th>
                <th>등록일</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${fn:length(itemList) == 0}">
                <tr class="noData">
                    <td colspan="5">등록된 데이터가 없습니다.</td>
                </tr>
            </c:if>
            <c:set var="lno" value="0"/>
            <c:forEach items="${itemList}" var="item" varStatus="status">
                <c:set var="lno">${lno + 1}</c:set>
                <tr>
                    <td><input type="checkbox" name="del_id" id="del_id_${item.ip_con_idx}" value="${item.ip_con_idx}"></td>
                    <td><fmt:formatNumber value="${totalCount - ((page - 1) * listSize + (lno - 1))}" pattern="##,###"/></td>
                    <td>${item.ip}</td>
                    <td>${item.reg_id}</td>
                    <td>${fn:substring(item.reg_dt, 0, 10)}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <common:pageLinkAdmin name="pageholder"/>
        <div class="btnArea">
            <div class="left">
                <a href="#none" class="btn grey" id="btn_select_del">선택삭제</a>
            </div>
        </div>
    </article>
</div>

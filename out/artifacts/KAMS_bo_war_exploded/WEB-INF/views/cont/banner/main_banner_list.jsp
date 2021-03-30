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
                    url: '/artmore_adm/ajax/banner_delete.do',
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
        $("#btn_search").click(function(){
            // 소속 검색 조건 정리
            goSearch();
        });

        $("#searchVal").on("keyup", function(event) {
            if (event.keyCode === 13) {
                goSearch();
            }
        });

        $("select[id=listSize_select]").change(function() {
            let listSize = $(this).val();

            $("#page").val("1");
            $("#listSize").val(listSize);

            $("#frm").submit();
        });
        /////////////////////////////////////////////////////////////////

        $("#btn_ord").click(function(){
            $("#ordfrm").submit();
        });
    });

    function goSearch() {
        $("#page").val("1");
        $("#frm").submit();
    }
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="frm" id="frm" method="post" action="/artmore_adm/cont/banner/main_banner_list.do">
        <input type="hidden" name="page" id="page" value="${page}"/>
        <input type="hidden" name="listSize" id="listSize" value="${listSize}"/>
    <article class="contUnit sch_area">
        <h3>
            <span class="material-icons">search</span> Search <small>검색</small>
        </h3>
        <div class="line">
            <div class="formCont full">
                <label for="searchKind3">키워드</label>
                <select id="searchKind3" name="searchKind3" class="wid150">
                    <option value="ALL">전체</option>
                    <option value="1" <c:if test="${searchKind3 eq '1'}">selected="selected"</c:if>>배너 명</option>
                    <option value="2" <c:if test="${searchKind3 eq '2'}">selected="selected"</c:if>>문안</option>
                </select>
                <input type="text" id="searchVal" name="searchVal" class="wid200" value="${searchVal}">
                <a href="#none" class="btn orange" id="btn_search">
                    <span class="material-icons">search</span>
                    검색
                </a>
            </div>
        </div>
    </article>
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
        <form name="ordfrm" id="ordfrm" method="post" action="/artmore_adm/cont/banner/main_banner_ord.do" enctype="multipart/form-data">
        <table>
            <colgroup>
                <col style="width:2%">
                <col style="width:6%">
                <col>
                <col style="width:15%">
                <col style="width:15%">
                <col style="width:10%">
                <col style="width:10%">
                <col style="width:10%">
                <col style="width:10%">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" name="allCheck_Y" id="allCheck_Y"></th>
                <th>순서</th>
                <th>배너명</th>
                <th>문안</th>
                <th>노출기간</th>
                <th>노출상태</th>
                <th>등록자ID</th>
                <th>등록일</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${fn:length(itemList) == 0}">
                <tr class="noData">
                    <td colspan="8">등록된 데이터가 없습니다.</td>
                </tr>
            </c:if>
            <c:forEach items="${itemList}" var="item" varStatus="status">
                <tr>
                    <td><input type="checkbox" name="del_id" id="del_id_${item.banner_idx}" value="${item.banner_idx}"></td>
                    <td>
                        <input type="hidden" name="ordList[${status.index}].idx" id="ordList[${status.index}].idx" value="${item.banner_idx}">
                        <input type="text" class="wid100per ta_c" name="ordList[${status.index}].val" id="ordList[${status.index}].val" value="${item.ord}" oninput="this.value = this.value.replace(/[^0-9]/g, '');" title="순서">
                    </td>
                    <td class="ta_l"><a href="/artmore_adm/cont/banner/main_banner_view.do?banner_idx=${item.banner_idx}" class="line">${item.name}</a></td>
                    <td class="ta_l">${item.title}</td>
                    <td>${item.start_dt} ~ ${item.end_dt}</td>
                    <td>
                        <c:choose>
                            <c:when test="${item.use_yn eq 'Y'}">공개</c:when>
                            <c:when test="${item.use_yn eq 'N'}">비공개</c:when>
                            <c:otherwise>-</c:otherwise>
                        </c:choose>
                    </td>
                    <td>${item.reg_id}</td>
                    <td>${fn:substring(item.reg_dt, 0, 10)}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        </form>
        <common:pageLinkAdmin name="pageholder"/>
        <div class="btnArea">
            <div class="left">
                <a href="#none" class="btn grey" id="btn_select_del">선택삭제</a>
            </div>
            <div class="right">
                <a href="#none" class="btn blue" id="btn_ord">노출순서저장</a>
                <a href="/artmore_adm/cont/banner/main_banner_inscr.do" class="btn red">등록</a>
            </div>
        </div>
    </article>
</div>

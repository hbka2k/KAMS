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
        $("#btn_delete").click(function(){
            modalMsg("삭제 하시겠습니까?", 'yesorno', delete_frm);
        });
    });

    function delete_frm() {
        document.delfrm.submit();
    }
</script>

<div class="container">
    <article class="tit">
        <h2>${currentMenu.name}</h2>
        <p class="depth">HOME<span class="arrow">></span>${topMenu.name}<span class="arrow">></span>${currentMenu.name}</p>
    </article>

    <form name="delfrm" id="delfrm" action="/artmore_adm/cont/bbs/matching_delete.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="bbs_detail_idx" value="${bbsDetailVo.bbs_detail_idx}" />
    </form>

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
        <table>
            <colgroup>
                <col style="width:15%">
                <col>
            </colgroup>
            <tbody>
            <tr>
                <th>공지여부</th>
                <td>
                    <c:choose>
                        <c:when test="${bbsDetailVo.top_yn eq 'Y'}">공지</c:when>
                        <c:otherwise>-</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>카테고리</th>
                <td>${bbsDetailVo.cate_nm}</td>
            </tr>
            <tr>
                <th>노출여부</th>
                <td>
                    <c:choose>
                        <c:when test="${bbsDetailVo.use_yn eq 'Y'}">공개</c:when>
                        <c:otherwise>비공개</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>제목</th>
                <td>${bbsDetailVo.title}</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>
                    ${bbsDetailVo.cont}
                </td>
            </tr>
            <tr>
                <th>첨부파일</th>
                <td>
                    <c:forEach items="${bbsDetailVo.fileList}" var="item" varStatus="status">
                        <c:if test="${item != null}">
                            <div class="imgArea">
                                <span class="material-icons">attach_file</span>
                                <a style="text-decoration: underline;" href="/artmore_adm/file/fileDown.do?atchFileId=${item.atch_file_id}&amp;fileNum=${item.file_num}">${item.file_ori_nm}</a>
                            </div>
                        </c:if>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th>등록자/최종수정자</th>
                <td>
                    ${bbsDetailVo.reg_nm} /
                    <c:choose>
                        <c:when test="${bbsDetailVo.up_nm eq '' || bbsDetailVo.up_nm eq null}">-</c:when>
                        <c:otherwise>${bbsDetailVo.up_nm}</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>등록일/최종수정일</th>
                <td>
                    ${fn:substring(bbsDetailVo.reg_dt, 0, 10)} /
                    <c:choose>
                        <c:when test="${bbsDetailVo.up_dt eq '' || bbsDetailVo.up_dt eq null}">-</c:when>
                        <c:otherwise>${fn:substring(bbsDetailVo.up_dt, 0, 10)}</c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <th>조회수</th>
                <td><fmt:formatNumber value="${bbsDetailVo.cnt}" pattern="##,###"/></td>
            </tr>
            </tbody>
        </table>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/bbs/matching_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <a href="#none" class="btn grey" id="btn_delete">삭제</a>
                <a href="/artmore_adm/cont/bbs/matching_upscr.do?bbs_detail_idx=${bbsDetailVo.bbs_detail_idx}" class="btn red">수정</a>
            </div>
        </div>
    </article>
</div>

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

            if(!fnIsValidRequired(frm.cate_idx, "카테고리")){return false;}
            if(!fnIsValidRequired(frm.title, "제목")){return false;}

            // 에디터 처리 공통 ///////////////////////////////
            if (CrossEditor.IsPrivacyInfo(true,true,true)) {
                alert('개인정보 발견');
                return false;
            }

            frm.cont.value = CrossEditor.GetBodyValue();

            if(!fnIsValidRequired(frm.cont, "내용")){return false;}
            ////////////////////////////////////////////////

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
        <form name="frm" id="frm" action="/artmore_adm/cont/bbs/faq_upscr.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="bbs_detail_idx" value="${bbsDetailVo.bbs_detail_idx}" />
            <input type="hidden" name="atch_file_id" id="atch_file_id" value="${bbsDetailVo.atch_file_id}" />
            <table>
                <colgroup>
                    <col style="width:15%">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th class="required">카테고리</th>
                    <td>
                        <select name="cate_idx" id="cate_idx">
                            <c:forEach items="${cateList}" var="cate" varStatus="status">
                                <option value="${cate.cate_idx}" <c:if test="${bbsDetailVo.cate_idx eq cate.cate_idx}">selected="selected"</c:if>>${cate.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th class="required">노출여부</th>
                    <td>
                        <input type="radio" name="use_yn" id="use_y" value="Y" <c:if test="${bbsDetailVo.use_yn eq 'Y'}">checked="checked"</c:if>>
                        <label for="use_y">공개</label>
                        <input type="radio" name="use_yn" id="use_n" value="N" <c:if test="${bbsDetailVo.use_yn eq 'N'}">checked="checked"</c:if>>
                        <label for="use_n">비공개</label>
                    </td>
                </tr>
                <tr>
                    <th class="required">제목</th>
                    <td>
                        <input type="text" class="wid100per" name="title" id="title" value="${bbsDetailVo.title}">
                    </td>
                </tr>
                <tr>
                    <th class="required">내용</th>
                    <td>
                        <textarea id="cont" name="cont" title="initText">${bbsDetailVo.cont}</textarea>
                        <script type="text/javascript">
                            var CrossEditor = new NamoSE('cont');
                            CrossEditor.params.Width = "100%";
                            CrossEditor.params.ImageSavePath = "/upfile/editor";
                            CrossEditor.params.UploadFileExecutePath = "/artmore_adm/resources/namo/websource/jsp/ImageUpload.jsp";
                            CrossEditor.params.UserLang = "auto";
                            CrossEditor.params.FullScreen = false;

                            CrossEditor.EditorStart();
                            function OnInitCompleted(e){
                                e.editorTarget.SetBodyValue(document.getElementById("cont").value);
                            }
                        </script>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
        <div class="btnArea">
            <div class="left">
                <a href="/artmore_adm/cont/bbs/faq_list.do" class="btn">목록</a>
            </div>
            <div class="right">
                <%--<a href="#none" class="btn grey" id="btn_delete">삭제</a>--%>
                <a href="#none" class="btn red" id="btn_update">수정</a>
            </div>
        </div>
    </article>
</div>

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
        $("#btn_save").click(function(){
            var frm = document.frm;

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
        <form name="frm" id="frm" action="/artmore_adm/cont/content/content_upscr.do" method="post" enctype="multipart/form-data">
            <input type="hidden" name="cont_idx" id="cont_idx" value="${contMstVo.cont_idx}" />
            <input type="hidden" name="return_url" id="return_url" value="/artmore_adm/cont/content/member_policy.do" />
            <table>
                <colgroup>
                    <col style="width:15%">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th class="required">콘텐츠 명</th>
                    <td>${contMstVo.name}</td>
                </tr>
                <tr>
                    <th class="required">내용</th>
                    <td>
                        <textarea id="cont" name="cont" title="initText">${contMstVo.cont}</textarea>
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
            <div class="btnArea">
                <div class="left">
                </div>
                <div class="right">
                    <a href="#none" class="btn red" id="btn_save">저장</a>
                </div>
            </div>
    </article>
</div>

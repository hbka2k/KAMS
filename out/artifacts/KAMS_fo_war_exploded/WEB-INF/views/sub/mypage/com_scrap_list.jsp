<%--
  Created by IntelliJ IDEA.
  User: gtlif
  Date: 2021-03-29
  Time: 오후 4:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">
    $(document).ready(function () {
    });
</script>

<div id="mypage_scrap_applicant_list" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <a class="sub_title">마이페이지</a>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_comp">
                    <div class="pf_photo_wrap pf_photo_comp">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>예술경영지원</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">채용공고 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
                                <li><a href="/sub/mypage/com_recruit_add.do">채용공고 등록</a></li>
                                <li><a href="/sub/mypage/com_applicant_list.do">지원자 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_contact_list.do">연락한 인재</a>
                        </li>
                        <li class="on">
                            <a href="/sub/mypage/com_scrap_list.do">스크랩 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_today_list.do">오늘 본 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_one_to_one_list.do">1:1톡</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">기업정보</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/com_info_info_pass_check.do">기업정보 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check2.do">회사소개 관리</a></li>
                                <li><a href="/sub/mypage/com_info_info_pass_check3.do">채용담당자 정보관리</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">스크랩 인재</p>
                    </div>

                    <form action="">
                        <div class="board_tb_wrap mp_scrap_applicant_list_tb_wrap">
                            <div class="bo_top_inf">
                                <div class="bo_view_type">
                                    <ul class="bo_view_type_ul">
                                        <li class="bo_vsort">
                                            <select name="" id="" class="i-select bo_vsort_sel">
                                                <option value="">최근스크랩순</option>
                                                <option value="">예전스크랩순</option>
                                                <option value="">이름순 ↓</option>
                                                <option value="">이름순 ↑</option>
                                            </select>
                                        </li>
                                        <li class="bo_vtotal">
                                            <select name="" id="" class="i-select bo_vtotal_sel">
                                                <option value="">10개씩 보기</option>
                                                <option value="">20개씩 보기</option>
                                                <option value="">30개씩 보기</option>
                                                <option value="">50개씩 보기</option>
                                                <option value="">100개씩 보기</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div><!--bo_top_inf-->

                            <table class="board_tb mp_join_list_tb">
                                <caption>스크랩 인재 목록</caption>
                                <thead>
                                    <tr>
                                        <th class="mp_join_th_chk">
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_scrap_applicant_list_chkAll" onclick="checkAll(this,'mp_scrap_applicant_list_chk')">
                                                <label for="mp_scrap_applicant_list_chkAll"><span class="sound_only">전체선택</span></label>
                                            </div>
                                        </th>
                                        <th class="">이름/나이</th>
                                        <th class="">학력</th>
                                        <th class="">경력</th>
                                        <th class="">스크랩일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_scrap_applicant_list_chk01">
                                                <label for="mp_scrap_applicant_list_chk01"><span class="sound_only">스크랩 인재 항목</span></label>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="/sub/human/search_view.do" class="mp_applicant_inf">
                                                <span class="mp_applicant_name">홍길동</span>
                                                <span class="mp_applicant_age">30</span>
                                            </a>
                                        </td>
                                        <td>경영대학교 컴퓨터공학과 졸업 (대졸4년)</td>
                                        <td>1년 6개월</td>
                                        <td>2021-01-01</td>
                                    </tr>
                                    <!--} loop-->
                                </tbody>
                            </table>

                            <div class="board_list_bot">
                                <div class="mp_join_list_manage_btn">
                                    <ul class="mp_join_list_manage_btn_ul">
                                        <li><button type="button" class="btn03 mp_join_list_manage_delete">삭제</button></li>
                                    </ul>
                                </div>

                                <div class="paging">
                                    <ul class="paging_ul">
                                        <li class="paging_prev"><a href=""><i class="arrow left"></i></a></li>
                                        <li class="paging_active"><a href="">1</a></li>
                                        <li><a href="">2</a></li>
                                        <li><a href="">3</a></li>
                                        <li><a href="">4</a></li>
                                        <li><a href="">5</a></li>
                                        <li class="paging_next"><a href=""><i class="arrow right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div><!--sub_content-->
</div>
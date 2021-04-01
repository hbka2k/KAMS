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

<div id="mypage_comp_talk_list" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">마이페이지</p>

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
                        <li>
                            <a href="/sub/mypage/com_scrap_list.do">스크랩 인재</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/com_today_list.do">오늘 본 인재</a>
                        </li>
                        <li class="on">
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
                        <p class="mp_title">1:1 톡</p>
                    </div>

                    <form action="">
                        <div class="board_tb_wrap mp_talk_list_tb_wrap">
                            <div class="bo_list_top cf">
                                <span class="bo_list_cnt">총 <b>21</b>건</span>
                                <div class="bo_sch_box">

                                    <select name="" id="" class="i-select bo_sch_sel">
                                        <option value="">제목+내용</option>
                                        <option value="">제목</option>
                                        <option value="">내용</option>
                                    </select>
                                    <input type="text" class="bo_sch_inpt">
                                    <button class="bo_sch_btn"><img src="/resources/images/hd_sch_icon.png" alt="검색 버튼"></button>

                                </div>
                            </div>

                            <table class="board_tb mp_talk_tb">
                                <caption>입사지원 목록</caption>
                                <thead>
                                    <tr>
                                        <th class="mp_bo_th_num">번호</th>
                                        <th class="mp_bo_th_subj">제목</th>
                                        <th class="mp_bo_th_job">채용공고</th>
                                        <th class="mp_bo_th_rdate">등록일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>21</td>
                                        <td class="mp_bo_td_subj">
                                            <a href="/sub/mypage/com_one_to_one_view.do" class="mp_join_list_txt01">
                                                <span class="mp_talk_state state01">답변완료</span>
                                                <span class="mp_talk_tit">문의 제목의 보여집니다.</span>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="" class="mp_join_list_txt01">채용공고 제목이 표시됩니다.</a>
                                        </td>
                                        <td>
                                            <p class="mp_join_list_txt01">2020.01.01</p>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>20</td>
                                        <td class="mp_bo_td_subj">
                                            <a href="/sub/mypage/com_one_to_one_view.do" class="mp_join_list_txt01">
                                                <span class="mp_talk_state state02">미답변</span>
                                                <span class="mp_talk_tit">문의 제목의 보여집니다.</span>
                                            </a>
                                        </td>
                                        <td>
                                            <a href="" class="mp_join_list_txt01">채용공고 제목이 표시됩니다.</a>
                                        </td>
                                        <td>
                                            <p class="mp_join_list_txt01">2020.01.01</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

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
                        </div></form>
                </div>

            </div>

        </div>
    </div>
</div>
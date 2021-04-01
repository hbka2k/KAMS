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

<div id="mypage_recent_list" class="sub mypage">
    <div class="sub_content">
        <div class="wrapper">
            <p class="sub_title">마이페이지</p>

            <div class="mp_cont_wrap cf">
                <nav class="mp_lnb mp_lnb_indv">
                    <div class="pf_photo_wrap pf_photo_indv">
                        <div class="pf_photo">
                            <div class="filebox preview-image">
                                <label for="input_file"><span class="sound_only">업로드</span></label> <!-- .pf_photo_upload 와 trigger / PC용 파일 첨부 -->
                                <input type="file" name="" id="input_file" class="upload-hidden">
                            </div>
                        </div>
                        <div class="pf_info">
                            <p class="pf_name"><span>홍길동</span> 님</p>
                            <div class="pf_photo_btn">
                                <button type="button" class="pf_photo_upload">사진업로드</button> <!-- .filebox label 과 trigger / 모바일용 파일 첨부 -->
                                <button type="button" class="pf_photo_save">사진저장</button>
                            </div>
                        </div>
                    </div>

                    <ul class="mp_navi">
                        <li>
                            <a href="javascript:void(0);">이력서 관리</a>
                            <ul class="mp_navi_dp2">
                                <li><a href="/sub/mypage/resume_form.do">이력서등록</a></li>
                                <li><a href="/sub/mypage/resume_profile.do">자기소개서등록</a></li>
                                <li><a href="/sub/mypage/resume_setting.do">이력서·자기소개서 관리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="/sub/mypage/application_list.do">입사지원현황</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/scrap_list.do">스크랩 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/favorite_list.do">관심기업</a>
                        </li>
                        <li class="on">
                            <a href="/sub/mypage/view_list.do">최근 본 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/calendar.do">나의 캘린더</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/one_to_one_list.do">1:1톡</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/info_pass_check.do">회원정보수정</a>
                        </li>
                    </ul>
                </nav>

                <div class="mp_cont">
                    <div class="mp_title_box">
                        <p class="mp_title">최근 본 공고</p>
                    </div>

                    <form action="">
                        <div class="board_tb_wrap mp_recent_list_tb_wrap">
                            <div class="bo_top_inf">
                                <div class="bo_list_cnt">
                                    <ul class="bo_list_cnt_ul">
                                        <li>전체 <b>10</b>건</li>
                                    </ul>
                                </div>

                                <div class="bo_view_type">
                                    <ul class="bo_view_type_ul">
                                        <li class="bo_vsort">
                                            <select name="" id="" class="i-select bo_vsort_sel">
                                                <option value="">최근열람일순</option>
                                                <option value="">예전열람일순</option>
                                                <option value="">최근마감일순</option>
                                                <option value="">마감일늦은순</option>
                                                <option value="">회사명 ↓</option>
                                                <option value="">회사명 ↑</option>
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
                                <caption>입사지원 목록</caption>
                                <thead>
                                    <tr>
                                        <th class="mp_join_th_chk">
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_recent_list_chkAll" onclick="checkAll(this,'mp_recent_list_chk')">
                                                <label for="mp_recent_list_chkAll"><span class="sound_only">전체선택</span></label>
                                            </div>
                                        </th>
                                        <th class="mp_join_th_cname">회사명</th>
                                        <th class="mp_join_th_subj">공고 제목</th>
                                        <th class="mp_join_th_adate">마감일</th>
                                        <th class="mp_join_th_rdate">열람일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_recent_list_chk01">
                                                <label for="mp_recent_list_chk01"><span class="sound_only">입사지원 항목</span></label>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="/sub/comJob/com_info_view.do" class="mp_join_list_txt01">예술경영지원센터</a>
                                        </td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="/sub/recruit/search_view.do" class="mp_join_list_txt01">예술경영지원센터 직원 모집합니다.</a>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st01"><span>진행중</span></li>
                                                <li class="mp_join_list_stat_st02"><span>마감</span></li>
                                                <li class="mp_join_list_stat_st03"><span>종료</span></li>
                                            </ul>
                                        </td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="mp_join_list_txt01 rp_td_txt" data-th="마감일">2020.01.01</p>
                                        </td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="mp_join_list_txt01 rp_td_txt" data-th="열람일">2020.01.01</p>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_recent_list_chk02">
                                                <label for="mp_recent_list_chk02"><span class="sound_only">입사지원 항목</span></label>
                                            </div>
                                        </td>
                                        <td>
                                            <a href="/sub/comJob/com_info_view.do" class="mp_join_list_txt01">예술경영지원센터</a>
                                        </td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="/sub/recruit/search_view.do" class="mp_join_list_txt01">예술경영지원센터 직원 모집합니다.</a>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st01"><span>진행중</span></li>
                                            </ul>
                                        </td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="mp_join_list_txt01 rp_td_txt" data-th="마감일">2020.01.01</p>
                                        </td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="mp_join_list_txt01 rp_td_txt" data-th="열람일">2020.01.01</p>
                                        </td>
                                    </tr>
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
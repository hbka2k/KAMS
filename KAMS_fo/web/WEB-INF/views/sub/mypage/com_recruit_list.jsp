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

<div id="mypage_announce_list" class="sub mypage">
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
                        <li class="on">
                            <a href="javascript:void(0);">채용공고 관리</a>
                            <ul class="mp_navi_dp2">
                                <li class="on"><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
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
                        <p class="mp_title">전체 채용공고</p>
                    </div>

                    <form action="">
                        <div class="mp_join_list_sch mp_announce_sch">
                            <div class="mp_join_list_sch_box cf">
                                <span class="mp_join_list_sch_subj">진행상태</span>
                                <div class="mp_join_list_sch_cont">
                                    <ul class="mp_join_list_sch_radio">
                                        <li class="i-radio">
                                            <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state01" value="" checked="">
                                            <label for="mp_announce_sch_state01">전체</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state02" value="">
                                            <label for="mp_announce_sch_state02">진행중</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state03" value="">
                                            <label for="mp_announce_sch_state03">마감</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_announce_sch_state" id="mp_announce_sch_state04" value="">
                                            <label for="mp_announce_sch_state04">종료</label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="mp_join_list_sch_box mp_join_list_schbar cf">
                                <span class="mp_join_list_sch_subj">검색어</span>
                                <div class="mp_join_list_sch_cont">
                                    <input type="text" name="" class="i-inpt mp_join_list_sch_inpt">
                                    <button class="mp_join_list_sch_btn">검색하기</button>
                                </div>
                            </div>
                        </div>
                    </form>

                    <form action="">
                        <div class="board_tb_wrap mp_join_list_tb_wrap">
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
                                                <option value="">최근등록일순</option>
                                                <option value="">예전등록일순</option>
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
                                <caption>채용공고 목록</caption>
                                <thead>
                                    <tr>
                                        <th class="mp_join_th_chk">
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_announce_list_chkAll" onclick="checkAll(this,'mp_announce_list_chk')">
                                                <label for="mp_announce_list_chkAll"><span class="sound_only">전체선택</span></label>
                                            </div>
                                        </th>
                                        <th class="mp_join_th_cname">공고번호</th>
                                        <th class="mp_join_th_subj">채용공고명</th>
                                        <th class="mp_join_th_adate">지원자현황</th>
                                        <th class="mp_join_th_rdate">모집인원</th>
                                        <th class="mp_join_th_link">등록일/마감일</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_announce_list_chk01">
                                                <label for="mp_announce_list_chk01"><span class="sound_only">채용공고 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td class="rp_td rp_td_1023"><p class="rp_td_txt" data-th="공고번호">1123456885</p></td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="/sub/recruit/search_view.do" class="mp_join_list_txt01">예술경영지원센터 직원 모집합니다.</a>
                                            <ul class="mp_announce_list_stat">
                                                <li class="mp_announce_list_stat_st01"><span>진행중</span></li>
                                                <li class="mp_announce_list_stat_st02"><span>마감</span></li>
                                                <li class="mp_announce_list_stat_st03"><span>종료</span></li>
                                            </ul>
                                        </td>
                                        <td class="rp_td rp_td_1023"><a href="/sub/mypage/com_applicant_list.do" class="rp_td_txt" data-th="지원자현황">4명</a></td>
                                        <td class="rp_td rp_td_1023"><p class="rp_td_txt" data-th="모집인원">1명</p></td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="rp_td_txt" data-th="등록일">2020.01.01</p>
                                            <p class="rp_td_txt" data-th="마감일">2020.01.01</p>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>
                                            <div class="i-checks">
                                                <input type="checkbox" id="mp_announce_list_chk02">
                                                <label for="mp_announce_list_chk02"><span class="sound_only">채용공고 항목 선택</span></label>
                                            </div>
                                        </td>
                                        <td class="rp_td rp_td_1023"><p class="rp_td_txt" data-th="공고번호">1123456885</p></td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="/sub/recruit/search_view.do" class="mp_join_list_txt01">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                            <ul class="mp_announce_list_stat">
                                                <li class="mp_announce_list_stat_st01"><span>진행중</span></li>
                                            </ul>
                                        </td>
                                        <td class="rp_td rp_td_1023"><a href="/sub/mypage/com_applicant_list.do" class="rp_td_txt" data-th="지원자현황">4명</a></td>
                                        <td class="rp_td rp_td_1023"><p class="rp_td_txt" data-th="모집인원">1명</p></td>
                                        <td class="rp_td rp_td_1023">
                                            <p class="rp_td_txt" data-th="등록일">2020.01.01</p>
                                            <p class="rp_td_txt" data-th="마감일">2020.01.01</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="board_list_bot">
                                <div class="mp_announce_list_state_btn">
                                    <ul class="mp_announce_list_state_btn_ul">
                                        <!--
                                        *상태변경시 현재 상태에 따른 조건 확인
                                        *채용종료시 confirm 조건 확인
                                        *채용확정자 있을경우 -> popUp('mp_annc_recruit_end')
                                        *채용확정자 없을경우 -> popUp('mp_annc_not_recruit_end')
                                        -->
                                        <li>
                                            <button type="button" class="btn03 mp_announce_list_state_end" onclick="popUp('mp_annc_recruit_end');">채용종료</button>
                                        </li>
                                        <li><button type="button" class="btn03 mp_announce_list_state_finish">접수마감</button></li>
                                        <li><button type="button" class="btn03 mp_announce_list_state_copy">공고복사</button></li>
                                        <li><button type="button" class="btn03 mp_announce_list_state_edit" onclick="location.href='/sub/mypage/com_recruit_edit.do'">공고수정</button></li>
                                        <li><button type="button" class="btn03 mp_announce_list_state_del">공고삭제</button></li>
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

                                <button type="button" class="btn01 mp_announce_list_state_register" onclick="location.href='/sub/mypage/com_recruit_add.do'">채용공고 등록</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>

    <!--채용종료 팝업(채용확정자가 있는 경우) {-->
    <div id="mp_annc_recruit_end" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">채용 종료</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <p class="mp_annc_end_txt">채용공고를 종료하시겠습니까?</p>
                    <div class="mp_annc_end_btn_box">
                        <ul class="mp_annc_end_btn_ul">
                            <li><button type="button" class="btn01">확인</button></li>
                            <li><button type="button" class="btn02" onclick="popClose()">취소</button></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--} 채용종료 팝업(채용확정자가 있는 경우)-->

    <!--채용종료 팝업(채용확정자가 없는 경우) {-->
    <div id="mp_annc_not_recruit_end" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">채용 종료</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <p class="mp_annc_end_txt">채용확정없이 공고를 종료합니다.</p>
                    <div class="mp_annc_end_reason">
                        <ul class="mp_annc_end_reason_ul">
                            <li class="i-checks">
                                <input type="checkbox" name="" id="mp_annc_end_reason_chk01">
                                <label for="mp_annc_end_reason_chk01">적합한 인재 없음</label>
                            </li>
                            <li class="i-checks">
                                <input type="checkbox" name="" id="mp_annc_end_reason_chk02">
                                <label for="mp_annc_end_reason_chk02">채용 계획 취소</label>
                            </li>
                            <li class="i-checks">
                                <input type="checkbox" name="" id="mp_annc_end_reason_chk03">
                                <label for="mp_annc_end_reason_chk03">다른 사이트에서 채용 확정</label>
                            </li>
                            <li class="i-checks">
                                <input type="checkbox" name="" id="mp_annc_end_reason_chk04">
                                <label for="mp_annc_end_reason_chk04">기타 사유</label>
                            </li>
                            <li class="mp_annc_reject_reason"><textarea name="" id="" class="i-textar i-textar_full" cols="30" rows="10"></textarea></li>
                        </ul>
                    </div>
                    <div class="mp_annc_end_btn_box">
                        <ul class="mp_annc_end_btn_ul">
                            <li><button type="button" class="btn01">확인</button></li>
                            <li><a href="/sub/mypage/com_applicant_list.do" class="btn04">채용확정 검토</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--} 채용종료 팝업(채용확정자가 없는 경우)-->
</div>
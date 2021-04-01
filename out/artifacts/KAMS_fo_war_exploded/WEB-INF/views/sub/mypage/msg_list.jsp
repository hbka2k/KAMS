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

<div id="mypage_msg_list" class="sub mypage">
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
                        <li class="on">
                            <a href="/sub/mypage/application_list.do">입사지원현황</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/scrap_list.do">스크랩 공고</a>
                        </li>
                        <li>
                            <a href="/sub/mypage/favorite_list.do">관심기업</a>
                        </li>
                        <li>
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
                        <p class="mp_title">메시지수신현황</p>
                    </div>

                    <div class="tab_wrap sub_tab">
                        <ul class="tab_wrap_ul child2">
                            <li><a href="/sub/mypage/application_list.do">입사지원현황</a></li>
                            <li class="active"><a href="/sub/mypage/msg_list.do">메시지수신현황</a></li>
                        </ul>
                    </div>

                    <form action="">
                        <div class="mp_join_list_sch">
                            <div class="mp_join_list_sch_box cf">
                                <span class="mp_join_list_sch_subj">제의상태</span>
                                <div class="mp_join_list_sch_cont">
                                    <ul class="mp_join_list_sch_radio">
                                        <li class="i-radio">
                                            <input type="radio" name="mp_msg_sch_stat" id="mp_msg_sch_stat01" value="" checked="">
                                            <label for="mp_msg_sch_stat01">전체</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_msg_sch_stat" id="mp_msg_sch_stat02" value="">
                                            <label for="mp_msg_sch_stat02">제의</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_msg_sch_stat" id="mp_msg_sch_stat03" value="">
                                            <label for="mp_msg_sch_stat03">수락</label>
                                        </li>
                                        <li class="i-radio">
                                            <input type="radio" name="mp_msg_sch_stat" id="mp_msg_sch_stat04" value="">
                                            <label for="mp_msg_sch_stat04">거절</label>
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
                                        <li>열람 <b>9</b>건</li>
                                        <li>미열람 <b>1</b>건</li>
                                    </ul>
                                </div>

                                <div class="bo_view_type">
                                    <ul class="bo_view_type_ul">
                                        <li class="bo_vsort">
                                            <select name="" id="" class="i-select bo_vsort_sel">
                                                <option value="">최근제의일순</option>
                                                <option value="">예전제의일순</option>
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

                            <table class="board_tb mp_msg_list_tb">
                                <caption>입사제의 목록</caption>
                                <thead>
                                    <tr>
                                        <th class="mp_join_th_cname">회사명</th>
                                        <th class="mp_join_th_subj">공고 제목</th>
                                        <th class="mp_join_th_adate">수신일/상태</th>
                                        <th class="mp_join_th_mng">관리</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop {-->
                                    <tr>
                                        <td>
                                            <a href="/sub/comJob/com_info_view.do" class="mp_join_list_txt01">예술경영지원센터</a>
                                        </td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="/sub/recruit/search_list.do" class="mp_join_list_txt01">예술경영지원센터 직원 모집합니다.</a>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st01"><span>진행중</span></li>
                                                <li class="mp_join_list_stat_st02"><span>마감</span></li>
                                                <li class="mp_join_list_stat_st03"><span>종료</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <p class="mp_join_list_txt01">2020.01.01</p>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st02"><span>제의</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul class="mp_msg_mng_btn">
                                                <li><button type="button" class="btn03 mp_msg_check" onclick="popUp('mp_offer_msg_popup');">내용 확인</button></li>
                                                <li><button type="button" class="btn03 mp_msg_del">삭제</button></li>
                                            </ul>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td>
                                            <a href="../../employ/company_info_view.html" class="mp_join_list_txt01">예술경영지원센터</a>
                                        </td>
                                        <td class="ta_l mp_join_td_subj">
                                            <a href="../../jobs/jobs_view.html" class="mp_join_list_txt01">Lehmann Maupin 서울 갤러리에서 직원을 모집합니다.</a>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st01"><span>진행중</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <p class="mp_join_list_txt01">2020.01.01</p>
                                            <ul class="mp_join_list_stat">
                                                <li class="mp_join_list_stat_st01"><span>수락</span></li>
                                            </ul>
                                        </td>
                                        <td>
                                            <ul class="mp_msg_mng_btn">
                                                <li><button type="button" class="btn03 mp_msg_check" onclick="popUp('mp_offer_msg_popup');">내용 확인</button></li>
                                                <li><button type="button" class="btn03 mp_msg_del">삭제</button></li>
                                            </ul>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="board_list_bot">
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

    <!--면접제의 > 내용(메시지)확인 팝업 {-->
    <div id="mp_offer_msg_popup" class="popup_dim offer_msg_popup">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">메시지 확인</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <div class="offer_msg_content">회사에서 선택 또는 입력한 내용이 보여집니다. 회사에서 선택 또는 입력한 내용이 보여집니다. 회사에서 선택 또는 입력한 내용이 보여집니다.</div>
                    <div class="offer_msg_job_wrap">
                        <p class="offer_msg_job_tit">채용공고</p>
                        <div class="offer_msg_job_post">
                            <a href="../../jobs/jobs_view.html" class="offer_msg_job_subj">예술경영지원센터 직원 모집합니다.</a>
                            <ul class="mp_join_list_stat">
                                <li class="mp_join_list_stat_st01"><span>진행중</span></li>
                                <li class="mp_join_list_stat_st02"><span>마감</span></li>
                                <li class="mp_join_list_stat_st03"><span>종료</span></li>
                            </ul>
                        </div>
                        <div class="offer_msg_info">
                            <ul class="offer_msg_info_ul">
                                <li>
                                    <span class="offer_msg_info_tit">기업명</span>
                                    <span class="offer_msg_info_txt">예술경영지원센터</span>
                                </li>
                                <li>
                                    <span class="offer_msg_info_tit">전송일</span>
                                    <span class="offer_msg_info_txt">2021년 03월 03일 09시 33분 01초</span>
                                </li>
                                <li>
                                    <span class="offer_msg_info_tit">수신</span>
                                    <div class="offer_msg_info_txt">
                                        <ul class="offer_msg_info_chk_ul">
                                            <li class="i-radio">
                                                <input type="radio" name="offer_msg_info_chk" id="offer_msg_info_chk_y">
                                                <label for="offer_msg_info_chk_y">수락</label>
                                            </li>
                                            <li class="i-radio">
                                                <input type="radio" name="offer_msg_info_chk" id="offer_msg_info_chk_n">
                                                <label for="offer_msg_info_chk_n">거절</label>
                                            </li>
                                        </ul>
                                        <p class="offer_msg_info_chk_txt">※ 수락 시 기본 이력서와 자기 소개서로 입사 지원합니다.</p>
                                    </div>
                                </li>
                                <li class="offer_msg_reason_li">
                                    <span class="offer_msg_info_tit">거절 시 사유</span>
                                    <div class="offer_msg_info_txt">
                                        <textarea name="" id="offer_msg_reason" class="i-textar i-textar_full" cols="30" rows="10"></textarea>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <button type="button" class="btn01 offer_msg_popup_check" onclick="popClose()">확인</button>
                </div>
            </div>
        </div>
    </div>
    <!--} 면접제의 > 내용(메시지)확인 팝업-->
</div>
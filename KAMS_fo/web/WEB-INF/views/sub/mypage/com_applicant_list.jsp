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
        $(".mp_applicant_posting_subj").on('click', function(){
            if($(this).siblings('.mp_applicant_posting_cont').css('display') == 'block'){
                $(this).siblings('.mp_applicant_posting_cont').hide();
                $(this).find(".mp_applicant_posting_arrow").removeClass('act').children('i.arrow').removeClass('up').addClass('down');
            }else{
                $(this).siblings('.mp_applicant_posting_cont').show();
                $(this).find(".mp_applicant_posting_arrow").addClass('act').children('i.arrow').removeClass('down').addClass('up');
            }
        })
    });
</script>


<div id="mypage_applicant_list" class="sub mypage">
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
                                <li><a href="/sub/mypage/com_recruit_list.do">전체 채용공고</a></li>
                                <li><a href="/sub/mypage/com_recruit_add.do">채용공고 등록</a></li>
                                <li class="on"><a href="/sub/mypage/com_applicant_list.do">지원자 관리</a></li>
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
                        <p class="mp_title">지원자 관리</p>
                    </div>

                    <div class="mp_applicant_posting_wrap">
                        <!--
              *진행중 class = mp_applicant_posting_ing(내용 표시 / 드롭다운)
              loop{
              -->
                        <div class="mp_applicant_posting mp_applicant_posting_ing">
                            <div class="mp_applicant_posting_subj">
                                <span class="mp_applicant_posting_state state01">진행중</span>
                                <span class="mp_applicant_posting_state state02">마감</span>
                                <span class="mp_applicant_posting_state state03">종료</span>
                                <span class="mp_applicant_posting_subj_txt">예술분야 모집 공고합니다.</span>
                                <span class="mp_applicant_posting_arrow act"><i class="arrow up"></i></span>
                            </div>
                            <div class="mp_applicant_posting_cont">
                                <form action="">
                                    <div class="mp_join_list_sch mp_applicant_sch">
                                        <div class="mp_join_list_sch_box cf">
                                            <span class="mp_join_list_sch_subj">열람상태</span>
                                            <div class="mp_join_list_sch_cont">
                                                <ul class="mp_join_list_sch_radio">
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_view" id="mp_applicant_sch_view01_01" checked>
                                                        <label for="mp_applicant_sch_view01_01">전체</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_view" id="mp_applicant_sch_view01_02">
                                                        <label for="mp_applicant_sch_view01_02">열람</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_view" id="mp_applicant_sch_view01_03">
                                                        <label for="mp_applicant_sch_view01_03">미열람</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mp_join_list_sch_box cf">
                                            <span class="mp_join_list_sch_subj">지원상태</span>
                                            <div class="mp_join_list_sch_cont">
                                                <ul class="mp_join_list_sch_radio">
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_apply" id="mp_applicant_sch_apply01_01" checked>
                                                        <label for="mp_applicant_sch_apply01_01">전체</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_apply" id="mp_applicant_sch_apply01_02">
                                                        <label for="mp_applicant_sch_apply01_02">지원</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_apply" id="mp_applicant_sch_apply01_03">
                                                        <label for="mp_applicant_sch_apply01_03">면접제의</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_apply" id="mp_applicant_sch_apply01_04">
                                                        <label for="mp_applicant_sch_apply01_04">채용확정</label>
                                                    </li>
                                                    <li class="i-radio">
                                                        <input type="radio" name="mp_applicant_sch_apply" id="mp_applicant_sch_apply01_05">
                                                        <label for="mp_applicant_sch_apply01_05">불합격</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="mp_join_list_sch_box mp_join_list_schbar cf">
                                            <span class="mp_join_list_sch_subj">성명</span>
                                            <div class="mp_join_list_sch_cont">
                                                <input type="text" name="" class="i-inpt mp_join_list_sch_inpt">
                                                <button class="mp_join_list_sch_btn">검색하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                                <div class="board_tb_wrap mp_applicant_list_tb_wrap">
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
                                                        <option value="">최근지원일순</option>
                                                        <option value="">예전지원일순</option>
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
                                        <caption>지원자 목록</caption>
                                        <thead>
                                            <tr>
                                                <th class="mp_join_th_chk">
                                                    <div class="i-checks">
                                                        <input type="checkbox" id="mp_applicant_list_chkAll01" onclick="checkAll(this,'mp_applicant_list_chk01')">
                                                        <label for="mp_applicant_list_chkAll01"><span class="sound_only">전체선택</span></label>
                                                    </div>
                                                </th>
                                                <th class="">성명/나이</th>
                                                <th class="">경력/학력</th>
                                                <th class="">현재상테</th>
                                                <th class="">상태</th>
                                                <th class="">지원일</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <!--loop {-->
                                            <tr>
                                                <td>
                                                    <div class="i-checks">
                                                        <input type="checkbox" id="mp_applicant_list_chk01_01">
                                                        <label for="mp_applicant_list_chk01_01"><span class="sound_only">지원자 항목</span></label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="/sub/human/search_view.do" class="mp_applicant_inf">
                                                        <span class="mp_applicant_name">홍길동</span>
                                                        <span class="mp_applicant_age">30</span>
                                                    </a>
                                                </td>
                                                <td>
                                                    <span class="mp_applicant_career">1년</span>
                                                    <span class="mp_applicant_edu">고졸</span>
                                                </td>
                                                <td>면접제의</td>
                                                <td>열람</td>
                                                <td>2021-01-01</td>
                                            </tr>
                                            <!--} loop-->
                                        </tbody>
                                    </table>

                                    <div class="board_mng_btn_box">
                                        <ul class="board_mng_btn_ul">
                                            <li><button type="button" class="btn03 mp_applicant_mng_btn mp_applicant_delete_btn">삭제</button></li>
                                            <li><button type="button" class="btn03 mp_applicant_mng_btn mp_applicant_reject_btn">불합격</button></li>
                                            <li><button type="button" class="btn03 mp_applicant_mng_btn mp_applicant_interview_btn" onclick="popUp('mp_person_mag_pop');">면접제의</button></li>
                                            <li><button type="button" class="btn03 mp_applicant_mng_btn mp_applicant_employ_btn">채용확정</button></li>
                                        </ul>
                                    </div>

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
                            </div>
                        </div><!--mp_applicant_posting-->
                        <!--}loop-->
                    </div><!--mp_applicant_posting_wrap-->

                </div>
            </div>
        </div>
    </div>

    <!--면접제의하기 팝업 {-->
    <div id="mp_person_mag_pop" class="popup_dim">
        <div class="popup_wrap">
            <div class="popup_top">
                <span class="popup_title">면접제의하기</span>
                <button type="button" class="popup_close_btn" onclick="popClose()">닫기</button>
            </div>

            <div class="popup_cont">
                <div class="popup_cont_inner">
                    <form action="">
                        <ul class="person_mag_radio_ul">
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request01">
                                <label for="person_mag_request01">[기업명, 담당자명] OOO님께 면접을 제의합니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request02">
                                <label for="person_mag_request02">[기업명, 담당자명] OOO님을 채용하고 싶습니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request03">
                                <label for="person_mag_request03">[기업명, 담당자명] OOO님의 이력서를 받아보고 싶습니다.</label>
                            </li>
                            <li class="i-radio">
                                <input type="radio" name="person_mag_request" id="person_mag_request04">
                                <label for="person_mag_request04">직접입력</label>
                            </li>
                            <li class="person_mag_request_write_li">
                                <label for="person_mag_request_write" class="sound_only">인재에게 보낼 내용 직접입력</label>
                                <textarea name="" id="person_mag_request_write" class="i-textar i-textar_full" cols="30" rows="4"></textarea>
                            </li>
                        </ul>
                        <div class="person_mag_sel">
                            <ul class="person_mag_sel_ul">
                                <li>
                                    <span class="person_mag_sel_tit person_mag_sel_tit_mt"><label for="person_mag_jobs_select">공고 선택</label></span>
                                    <div class="person_mag_sel_txt">
                                        <select name="" id="person_mag_jobs_select" class="i-select">
                                            <option value="">진행 중인 채용 공고를 선택합니다.</option>
                                        </select>
                                    </div>
                                </li>
                                <li>
                                    <span class="person_mag_sel_tit"><label for="person_mag_sel_chk_y">알림 방법</label></span>
                                    <div class="person_mag_sel_txt">
                                        <ul class="person_mag_sel_chk_ul">
                                            <li class="i-checks">
                                                <input type="checkbox" name="" id="person_mag_method_kakao">
                                                <label for="person_mag_method_kakao">카카오톡 알림톡</label>
                                            </li>
                                            <li class="i-checks">
                                                <input type="checkbox" name="" id="person_mag_method_email">
                                                <label for="person_mag_method_email">이메일</label>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <button type="button" class="btn01 person_mag_pop_submit">전송하기</button>
                    </form>
                </div>
            </div>
        </div>
        <!--} 면접제의하기 팝업-->
    </div>
</div>
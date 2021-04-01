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

<div id="mypage_comp_home" class="sub mypage">
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

                    <div class="mp_comp_quick">
                        <ul class="mp_comp_quick_ul">
                            <li>
                                <div class="mp_comp_quick_inner cf">
                                    <p class="mp_comp_quick_txtbox">
                                        <span class="mp_comp_quick_icon mp_comp_quick_icon01"></span>
                                        <span class="mp_comp_quick_txt">채용공고등록</span>
                                    </p>
                                    <a href="/sub/mypage/com_recruit_add.do" class="mp_comp_quick_btn"><img src="/resources/images/plus_icon01.png" alt="plus_icon"><p>바로가기</p></a>
                                </div>
                            </li>
                            <li>
                                <div class="mp_comp_quick_inner cf">
                                    <p class="mp_comp_quick_txtbox">
                                        <span class="mp_comp_quick_icon mp_comp_quick_icon02"></span>
                                        <span class="mp_comp_quick_txt">인재정보</span>
                                    </p>
                                    <a href="/sub/human/search_list.do" class="mp_comp_quick_btn"><img src="/resources/images/plus_icon01.png" alt="plus_icon"><p>바로가기</p></a>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="mp_sec mp_comp_summary">
                        <div class="mp_sec_title_inf cf">
                            <a href="" class="mp_sec_tit mp_sec_tit_link">공고, 지원자 관리 <i class="arrow right"></i></a>
                            <ul class="mp_sec_list_cnt">
                                <li><a href="/sub/mypage/com_recruit_list.do">진행중 : 2건</a></li>
                            </ul>
                        </div>
                        <div class="mp_comp_summary_cont">
                            <ul class="mp_comp_summary_ul">
                                <!--loop(max:5){-->
                                <li>
                                    <p class="mp_comp_summary_txt01">
                                        <span class="mp_comp_summary_state mp_comp_summary_state01">진행중</span>
                                        <!-- 다른 상태값
                                        <span class="mp_comp_summary_state mp_comp_summary_state02">마감</span>
                                        <span class="mp_comp_summary_state mp_comp_summary_state03">종료</span>
                                        -->
                                        <a href="/sub/recruit/search_view.do" class="mp_comp_summary_title">예술경영지원센터 구인 모집합니다.</a>
                                    </p>
                                    <ul class="mp_comp_summary_txt02">
                                        <li>전체 지원자 : 5명</li>
                                        <li>미열람 : 5명</li>
                                        <li>열람 5명</li>
                                    </ul>
                                    <ul class="mp_comp_summary_btnbox">
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">접수마감</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">공고복사</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn" onclick="location.href='/sub/mypage/com_recruit_edit.do'">공고수정</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">공고삭제</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">채용종료</button></li>
                                    </ul>
                                </li>
                                <!--}loop-->
                                <li>
                                    <p class="mp_comp_summary_txt01">
                                        <span class="mp_comp_summary_state mp_comp_summary_state02">마감</span>
                                        <a href="/sub/recruit/search_view.do" class="mp_comp_summary_title">예술경영지원센터 구인 모집합니다.</a>
                                    </p>
                                    <ul class="mp_comp_summary_txt02">
                                        <li>전체 지원자 : <a href="/sub/mypage/com_applicant_list.do">5명</a></li>
                                        <li>미열람 : <a href="/sub/mypage/com_applicant_list.do">5명</a></li>
                                        <li>열람 <a href="/sub/mypage/com_applicant_list.do">5</a>명</li>
                                    </ul>
                                    <ul class="mp_comp_summary_btnbox">
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">접수마감</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">공고복사</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn" onclick="location.href='/sub/mypage/com_recruit_edit.do'">공고수정</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">공고삭제</button></li>
                                        <li><button type="button" class="btn03 mp_comp_summary_btn">채용종료</button></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="mp_sec mp_home_ai_sec">
                        <a href="" class="mp_sec_tit mp_sec_tit_link">AI 추천 맞춤 인재 <i class="arrow right"></i></a>
                        <div class="board_tb_wrap mp_ai_tb_wrap">
                            <table class="board_tb person_sch_tb">
                                <caption>AI 추천 맞춤 인재 목록</caption>
                                <colgroup>
                                    <col style="width:20%;">
                                    <col style="width:*">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>이름</th>
                                        <th>이력서 제목/희망근무지역</th>
                                        <th>학력/전공</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <!--loop(max:5){-->
                                    <tr>
                                        <td class="ta_l">
                                            <a href="/sub/human/search_view.do" class="jobs_cname">홍○○</a>
                                            <div class="jobs_dtl_box person_tb_inf">
                                                <span>남</span>
                                                <span>45세</span>
                                            </div>
                                            <span class="person_tb_career experienced">경력 1년 6개월</span>
                                        </td>
                                        <td class="ta_l">
                                            <a href="/sub/human/search_view.do" class="mp_comp_resume_title">저만의 이정표를 만들어 갑니다.</a>
                                            <p class="person_tb_wkplace">서울 송파구</p>
                                        </td>
                                        <td>
                                            <p class="person_tb_education">고등학교 졸업</p>
                                            <p class="person_tb_major">전공영역</p>
                                        </td>
                                    </tr>
                                    <!--} loop-->
                                    <tr>
                                        <td class="ta_l">
                                            <a href="" class="jobs_cname">홍○○</a>
                                            <div class="jobs_dtl_box person_tb_inf">
                                                <span>남</span>
                                                <span>45세</span>
                                            </div>
                                            <span class="person_tb_career newcomer">신입</span>
                                        </td>
                                        <td class="ta_l">
                                            <a href="/sub/human/search_view.do" class="mp_comp_resume_title">해당 인재의 이력서 제목이 출력됩니다.</a>
                                            <p class="person_tb_wkplace">서울 송파구</p>
                                        </td>
                                        <td>
                                            <p class="person_tb_education">고등학교 졸업</p>
                                            <p class="person_tb_major">전공영역</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
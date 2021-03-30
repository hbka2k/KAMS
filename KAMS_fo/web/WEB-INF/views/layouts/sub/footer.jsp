<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<aside class="subRightQuick">
	<ul>
		<li>
			<a href="/kor_sub/oper/information_notice_list.do">
				<img src="/artmore_adm/resources/img/quick_01.png" alt="">
				<p>사전정보<br>공개</p>
			</a>
		</li>
		<li>
			<a href="/kor_sub/biz/device_test_apy_list.do">
				<img src="/artmore_adm/resources/img/quick_02.png" alt="">
				<p>측기<br>검정 신청</p>
			</a>
		</li>
		<li>
			<a href="/kor_sub/mypage/device_test_apy_list.do">
				<img src="/artmore_adm/resources/img/quick_03.png" alt="">
				<p>검정증명서<br>발급</p>
			</a>
		</li>
		<li>
			<a href="#none">
				<img src="/artmore_adm/resources/img/quick_04.png" alt="">
				<p>반부패<br>청렴자료</p>
			</a>
		</li>
		<li>
			<a href="/kor_sub/oper/clean_center.do">
				<img src="/artmore_adm/resources/img/quick_05.png" alt="">
				<p>클린<br>신고센터</p>
			</a>
		</li>
		<li>
			<a href="/kor_sub/intro/goto.do">
				<img src="/artmore_adm/resources/img/quick_06.png" alt="">
				<p>오시는 길</p>
			</a>
		</li>
	</ul>
	<a href="#none" class="goTop">
		<img src="/artmore_adm/resources/img/quick_arrow.png" alt=""> TOP
	</a>
</aside>

<!-- 푸터 -->
<footer id="footer">
	<!--우측 상단이동-->
	<%--<div class="btn_goTop">
		<a href="#none">
			<img src="/artmore_adm/resources/img/icon_toTop.png" alt="페이지 상단 이동">
		</a>
	</div>--%>

	<form name="frm_page_score" id="frm_page_score" action="/kor_sub/etc/page_score_inscr.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="path_nm" id="path_nm" />
		<input type="hidden" name="name" id="menu_name" />
		<input type="hidden" name="return_url" id="return_url" />
	<!--설문-->
	<div class="bottomSurvey">
		<div class="voteUnit">
			<p class="tit">이 페이지에서 제공하는 정보에 만족하시나요?</p>
			<div class="voteArea">
				<div class="formCont">
					<span class="radio_unit">
						<input type="radio" name="score" id="radio_vote_01" value="5" checked>
						<label for="radio_vote_01">
							매우만족
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
						</label>
					</span>
					<span class="radio_unit">
						<input type="radio" name="score" id="radio_vote_02" value="4">
						<label for="radio_vote_02">
							만족
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
						</label>
					</span>
					<span class="radio_unit">
						<input type="radio" name="score" id="radio_vote_03" value="3">
						<label for="radio_vote_03">
							보통
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
						</label>
					</span>
					<span class="radio_unit">
						<input type="radio" name="score" id="radio_vote_04" value="2">
						<label for="radio_vote_04">
							불만족
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
						</label>
					</span>
					<span class="radio_unit">
						<input type="radio" name="score" id="radio_vote_05" value="1">
						<label for="radio_vote_05">
							불만족
							<img src="/artmore_adm/resources/img/icon_01_on.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
							<img src="/artmore_adm/resources/img/icon_01_off.png" alt="">
						</label>
					</span>
				</div>
			</div>
		</div>
		<div class="msgUnit">
			<div class="formCont">
				<textarea placeholder="작성해주시는 소중한 의견들은 더욱 좋은 서비스를 제공하는 원동력이 됩니다." title="의견 남기기" name="cont" id="cont"></textarea>
				<a href="#none" class="btnUnit" id="btn_page_score_insert">등록하기</a>
			</div>
			<p class="telInfo">
				<img src="/artmore_adm/resources/img/icon_tel_gray.png" alt=""> 담당자: 정책팀장 한학영 <span class="num">(031-9290-816)</span>
			</p>
		</div>
	</div>
	</form>

	<div class="footLink">
		<a href="/kor_sub/etc/copyright.do">저작권정책</a>
		<a href="/kor_sub/etc/terms.do">이용약관</a>
		<a href="/kor_sub/etc/privacy.do"><b>개인정보처리방침</b></a>
		<a href="/kor_sub/etc/sitemap.do">사이트맵</a>
	</div>
	<div class="footInfo">
		<div class="footLang">
			<a href="#none" class="text">KOR</a>
			<div class="selLangUnit">
				<a href="/kor_main/main/main.do" class="on">KOR</a>
				<a href="#none">ENG</a>
			</div>
		</div>
		<div class="left">
			<div class="bottomLogo">
				<a href="/kor_main/main/main.do" title="메인화면 이동">
					<img src="/artmore_adm/resources/img/gnb_logo.png" alt="KIHS 한국 수자원조사기술원 Korea Institute of Hydrological Survey" class="for_W">
					<img src="/artmore_adm/resources/img/gnb_logo_white.png" alt="KIHS 한국 수자원조사기술원 Korea Institute of Hydrological Survey" class="for_M">
				</a>
			</div>
		</div>
		<div class="right">
			<p class="info">
				[10390] 경기도 고양시 일산서구 킨텍스로 217-59 킨텍스 제2전시장 오피스동 11층(1103-1105호) 12층 (전층), 13층(1301-1302호)<br>
				Tel : 031-9290-800   Fax : 031-9290-890
			</p>
			<p class="copyright">
				COPYRIGHT © 2021 KOREA INSTITUTE OF HYDROLOGICAL SURVEY INC. ALL RIGHTS RESERVED
			</p>
		</div>

		<div class="addSite">
			<ul class="site">
				<li><a href="http://www.me.go.kr/" target="_blank" title="새창열림">환경부</a></li>
				<li><a href="http://www.hrfco.go.kr/" target="_blank" title="새창열림">한강홍수통제소</a></li>
				<li><a href="http://www.nakdongriver.go.kr/main.do/" target="_blank" title="새창열림">낙동강홍수통제소</a></li>
				<li><a href="http://www.geumriver.go.kr/" target="_blank" title="새창열림">금강홍수통제소</a></li>
				<li><a href="http://www.yeongsanriver.go.kr/" target="_blank" title="새창열림">영산강홍수통제소</a></li>
				<li><a href="https://www.weather.go.kr/w/index.do/" target="_blank" title="새창열림">기상청</a></li>
				<li><a href="https://www.nier.go.kr/NIER/kor/index.do/" target="_blank" title="새창열림">국립환경과학원</a></li>
				<li><a href="https://www.kwater.or.kr/main.do?s_mid=1" target="_blank" title="새창열림">한국수자원공사</a></li>
				<li><a href="http://www.khnp.co.kr" target="_blank" title="새창열림">한국수력원자력</a></li>
				<li><a href="https://www.kict.re.kr/" target="_blank" title="새창열림">한국건설기술연구원</a></li>
				<li><a href="http://www.kwra.or.kr/" target="_blank" title="새창열림">한국수자원학회</a></li>
				<li><a href="http://www.riverlove.or.kr/" target="_blank" title="새창열림">한국하천협회</a></li>
				<li><a href="http://www.wamis.go.kr/" target="_blank" title="새창열림">국가수자원관리종합시스템</a></li>
				<li><a href="https://www.water.or.kr/index.do/" target="_blank" title="새창열림">물포탈 사이트</a></li>
				<li><a href="https://www.usgs.gov/" target="_blank" title="새창열림">미국지질조사국</a></li>
			</ul>
			<a href="#none" class="tit">관련사이트바로가기</a>
		</div>
	</div>
</footer>

<!-- 팝업 -->
<section class="popCont popup_allMenu popup_allMenuMainVisual">
	<div class="popBody">
		<div class="tit">
			<img src="/artmore_adm/resources/img/gnb_logo.png" alt="KIHS 한국 수자원조사기술원 Korea Institute of Hydrological Survey">
			<a href="#none" class="btnClose">
				<img src="/artmore_adm/resources/img/btn_allMenu_close.png" alt="전체메뉴 팝업 닫기">
			</a>
		</div>
		<div class="cont">
			<div class="menuList">
				<ul class="allMenu_depth01">
					<li class="allMenu_01 on">
						<p class="tit" id="allMenu_01">기관소개</p>
						<ul class="allMenu_depth02">
							<li>
								<a href="/kor_sub/intro/hello.do" class="titSub">원장님 인사말</a>
							</li>
							<li>
								<a href="/kor_sub/intro/vision.do" class="titSub">비전 및 미션</a>
							</li>
							<li>
								<a href="/kor_sub/intro/overview.do" class="titSub">기관 개요</a>
							</li>
							<li>
								<a href="#none" class="titSub">조직안내</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="/kor_sub/intro/organ.do">조직체계</a>
									</li>
									<li>
										<a href="/kor_sub/intro/organ_search_list.do">업무담당자</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="/kor_sub/intro/ci.do" class="titSub">CI소개</a>
							</li>
							<li>
								<a href="/kor_sub/intro/goto.do" class="titSub">찾아오시는 길</a>
							</li>
						</ul>
					</li>
					<li class="allMenu_03">
						<p class="tit" id="allMenu_03">주요업무</p>
						<ul class="allMenu_depth02">
							<li>
								<a href="/kor_sub/biz/gate_survey.do" class="titSub">수문조사</a>
								<%--<ul class="allMenu_depth03">
									<li>
										<a href="#none">유량조사</a>
									</li>
									<li>
										<a href="#none">유사량조사</a>
									</li>
									<li>
										<a href="#none">토양수분량·증발산량조사</a>
									</li>
									<li>
										<a href="#none">자동유량</a>
									</li>
								</ul>--%>
							</li>
							<li>
								<a href="/kor_sub/biz/work_edu.do" class="titSub">수문조사 종사자 교육</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="/kor_sub/biz/work_edu.do">교육 안내</a>
									</li>
									<li>
										<a href="/kor_sub/biz/work_edu_list.do">교육 신청</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="/kor_sub/biz/device_test.do" class="titSub">수문조사기기 검정</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="/kor_sub/biz/device_test.do">검정 안내</a>
									</li>
									<li>
										<a href="/kor_sub/biz/device_test_apy_list.do">검정 신청</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="/kor_sub/biz/water_survey.do" class="titSub">전국유역조사</a>
							</li>
							<li>
								<a href="/kor_sub/biz/flood_servey.do" class="titSub">홍수피해 상황조사</a>
							</li>
							<li>
								<a href="/kor_sub/biz/global_cor.do" class="titSub">국제협력</a>
							</li>
							<li>
								<a href="/kor_sub/biz/research_list.do" class="titSub">연구사업</a>
							</li>
							<li>
								<a href="/kor_sub/biz/gate_consult.do" class="titSub">수문조사 컨설팅</a>
							</li>
						</ul>
					</li>
					<li class="allMenu_02">
						<p class="tit" id="allMenu_02">알림마당</p>
						<ul class="allMenu_depth02">
							<li>
								<a href="/kor_sub/bbs/notice_list.do" class="titSub">공지사항</a>
							</li>
							<li>
								<a href="/kor_sub/bbs/recruit_list.do" class="titSub">채용공고</a>
							</li>
							<li>
								<a href="/kor_sub/bbs/bid_list.do" class="titSub">입찰공고</a>
							</li>
							<li>
								<a href="/kor_sub/bbs/faq_list.do" class="titSub">FAQ</a>
							</li>
						</ul>
					</li>
					<li class="allMenu_04">
						<p class="tit" id="allMenu_04">열린경영</p>
						<ul class="allMenu_depth02">
							<li>
								<a href="/kor_sub/oper/disclosure.do" class="titSub">경영공시</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="/kor_sub/oper/disclosure.do">경영공시</a>
									</li>
									<li>
										<a href="/kor_sub/oper/disclosure_tab.do">자율공시</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="/kor_sub/oper/open_data.do" class="titSub">공공데이터 개방</a>
							</li>
							<li>
								<a href="/kor_sub/oper/realname_list.do" class="titSub">사업실명제</a>
							</li>
							<li>
								<a href="/kor_sub/oper/information_notice_list.do" class="titSub">사전정보공표</a>
							</li>
							<li>
								<a href="/kor_sub/oper/admin_work.do" class="titSub">적극행정</a>
							</li>
							<li>
								<a href="/kor_sub/oper/info_open_list.do" class="titSub">정보공개</a>
							</li>
							<li>
								<a href="/kor_sub/oper/major_active.do" class="titSub">윤리·인권·안전경영</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="/kor_sub/oper/major_active.do">헌장</a>
									</li>
									<li>
										<a href="/kor_sub/oper/major_active_tab.do">추진 실적</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="/kor_sub/oper/comm_center_apply.do" class="titSub">소통센터</a>
							</li>
							<li>
								<a href="/kor_sub/oper/clean_center.do" class="titSub">클린신고센터</a>
								<ul class="allMenu_depth03">
									<li>
										<a href="https://www.clean.go.kr/cmm/secCtfc.do?menuId=M0408&uprMenuId=M0392&rqsTyCd=001&menuCode=acs" title="새창열림" target="_blank">부패 및 공인신고센터</a>
									</li>
									<li>
										<a href="/kor_sub/oper/clean_center.do">갑질신고센터</a>
									</li>
									<li>
										<a href="https://www.clean.go.kr/cmm/secCtfc.do?menuId=M0406&uprMenuId=M0392&rqsTyCd=005&menuCode=acs" title="새창열림" target="_blank">청탁금지위반 신고센터</a>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="allMenu_05">
						<p class="tit" id="allMenu_05">홍보마당</p>
						<ul class="allMenu_depth02">
							<li>
								<a href="/kor_sub/comm/pr_list.do" class="titSub">홍보자료</a>
							</li>
							<li>
								<a href="/kor_sub/comm/newsletter_list.do" class="titSub">뉴스레터</a>
							</li>
							<li>
								<a href="/kor_sub/comm/comm_contb_list.do" class="titSub">지역사회공헌</a>
							</li>
							<li>
								<a href="/kor_sub/comm/comm_sns.do" class="titSub">SNS 소통</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
</section>
<section class="popCont popup_gnbSchMobile popup_gnbSchMobileMainVisual">
	<div class="popBody">
		<div class="tit">
			<p>Search</p>
			<a href="#none" class="btnClose">
				<img src="/artmore_adm/resources/img/btn_allMenu_close.png" alt="검색 팝업 닫기">
			</a>
		</div>
		<div class="cont">
			<div>
				<form name="frm_search_mob" id="frm_search_mob" method="post" action="/kor_sub/search/search_list.do">
					<input type="search" placeholder="검색어를 입력하세요." title="검색" id="totalSearchMob">
				</form>
				<a href="#none" title="검색">
					<img src="/artmore_adm/resources/img/gnb_icon_zoom.png" alt="검색">
				</a>
			</div>
		</div>
	</div>
</section>
</body>
</html>

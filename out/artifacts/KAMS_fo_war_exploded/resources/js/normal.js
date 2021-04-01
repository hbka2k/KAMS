//숫자 3자리마다 콤마
function numberWithCommas(x) {
  return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

//현재 년도 구하기
function getToday(){
  var now = new Date();
  var year = now.getFullYear();
  return year;
}

//달력(yy-mm) 선택 플러그인
$(function(){
  var today_year = getToday(); //현재년도
  var start_year = today_year - 100; //시작년도(현재년도 - 100)

  $(".mp_resume_month-inpt").monthpicker({
    pattern: 'yyyy-mm',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    startYear: start_year
  });
});

//달력(yy-mm-dd) 선택 플러그인
$(function(){
  $(".date-inpt").datepicker({
    dateFormat: 'yy-mm-dd',
    changeYear: true, //콤보박스에서 년 선택 가능
    changeMonth: true, //콤보박스에서 월 선택 가능
    nextText: '>', // next 아이콘 툴팁
    prevText: '<', // prev 아이콘 툴팁
    yearRange: 'c-100:c+0',
    autoHide: true,
    zIndex: 2048
  });
});

//팝업 열기
function popUp(id){
  var $popId = $("#"+id);

  $popId.fadeIn();
}

//팝업 닫기
function popClose(){
  var $popId = $(".popup_dim");

  $popId.fadeOut(100);
}

//팝업, 개인정보 처리방침 내용 스크롤바 스타일
$(window).on("load",function(){
  $(".popup_cont, .priv_content").mCustomScrollbar({
    theme:"dark-thick",
    scrollButtons:{
      enable:true
    }
  });
});

//textarea 자동 높이
function adjustHeight(obj2){
  obj2.style.height = '42px';
  var textar_h = parseInt(obj2.scrollHeight);
  obj2.style.height = textar_h+'px';
};

//textarea 글자수 제한
function fnChkLength(obj, maxlength){
  var str = obj.value; // 이벤트가 일어난 컨트롤의 value 값
  var str_length = str.length; // 전체길이
  var str_sibl = obj.nextElementSibling;
  // 변수초기화
  var max_length = maxlength; // 제한할 글자수 크기
  var i = 0; // for문에 사용
  var ko_byte = 0; //한글일경우는 2 그밗에는 1을 더함
  var li_len = 0; // substring하기 위해서 사용
  var one_char = ""; // 한글자씩 검사한다
  var str2 = ""; // 글자수를 초과하면 제한할수 글자전까지만 보여준다.
  
  for(i = 0; i < str_length; i++){
    // 한글자추출
    one_char = str.charAt(i);
    ko_byte++;
  }
  // 전체 크기가 max_length를 넘지않으면
  if(ko_byte <= max_length){
    li_len = i + 1;
  }
  // 전체길이를 초과하면
  if(ko_byte > max_length){
    alert(numberWithCommas(max_length) + " 글자 이상 입력할 수 없습니다.\n초과된 내용은 자동으로 삭제 됩니다. ");
    str2 = str.substr(0, max_length);
    obj.value = str2;
    str_sibl.innerText = "("+numberWithCommas(max_length)+"/"+numberWithCommas(max_length)+"자)";
    str_sibl.style.display = 'block';
  }else if(ko_byte <= 0){
    str_sibl.style.display = 'none';
  }else{
    str_sibl.innerText = "("+numberWithCommas(ko_byte)+"/"+numberWithCommas(max_length)+"자)";
    str_sibl.style.display = 'block';
  }
  obj.focus();
}

//textarea byte 제한
function fnChkByte(obj, maxByte){
  var str = obj.value;
  var str_len = str.length;
  var str_sibl = obj.nextElementSibling;

  var rbyte = 0;
  var rlen = 0;
  var one_char = "";
  var str2 = "";

  for(var i=0; i<str_len; i++){
    one_char = str.charAt(i);
    if(escape(one_char).length > 4){
      rbyte += 2;//한글2Byte
    }else{
      rbyte++;//영문 등 나머지 1Byte
    }

    if(rbyte <= maxByte){
      rlen = i+1;//return할 문자열 갯수
    }
  }

  if(rbyte > maxByte){
    alert("메세지는 최대 " + maxByte + "byte를 초과할 수 없습니다.")
    str2 = str.substr(0,rlen);//문자열 자르기
    obj.value = str2;
    fnChkByte(obj, maxByte);
  }else if(rbyte <= 0){
    str_sibl.style.display = 'none';
  }else{
    str_sibl.innerText = "("+rbyte+"/"+maxByte+"Byte)";
    str_sibl.style.display = 'block';
  }
  obj.focus();
}

/*
(개인)마이페이지 이력서, 자기소개서 항목 추가, 삭제
<항목별 구분값>
resume_education -> (개인)이력서등록 > 학력사항
resume_career -> (개인)이력서등록 > 경력사항
resume_license -> (개인)이력서등록 > 보유 자격면허
resume_award -> (개인)이력서등록 > 주요활동 및 수상경력
resume_lang -> (개인)이력서등록 > 외국어 능력
self_introd_wrap -> (개인)자기소개서등록
*/
//(개인)마이페이지 이력서, 자기소개서 항목 추가
function mpctl_add(dom){
  var mpDom_id = dom, //부모 객체 id
      $mpDom_id = $("#"+dom), //부모 객체 선택자
      mpDom_ct = dom+"_cont", //해당사항의 id(text)
      mpDom_ct_clone, //마지막 항목 복사 변수 생성
      mpDom_ct_count = $mpDom_id.find('.mp_sec_cont').length, //항목 현재 개수
      max_limit; //항목 최대 개수 제한

  if(mpDom_id == 'self_introd_wrap'){
    max_limit = 20;
  }else{
    max_limit = 10;
  }

  //(공통) 최대 개수 제한
  if(mpDom_ct_count >= max_limit){
    alert('항목추가는 최대 '+max_limit+'개까지 가능합니다.');
    return false;
  }

  if(mpDom_id == 'resume_career'){ //(개인)이력서등록 > 경력사항일 경우
    for (var i = 0; i < 3; i++){
      mpDom_ct_clone = $mpDom_id.find('.mp_sec_cont:last-child').clone(); //마지막 항목 복사
      $mpDom_id.append(mpDom_ct_clone); //항목 추가

      var $mpDom_ct_new = $mpDom_id.find('.mp_sec_cont:last-child'), //추가된 항목 선택자
          mpDom_idx = $mpDom_id.find('.mp_sec_cont').length; //해당사항의 id(index)

      /*입력, 선택값 초기화*/
      $mpDom_ct_new.find('input[type="radio"]').attr({'checked':false});
      $mpDom_ct_new.find('input[type="checkbox"]').attr({'checked':false});
      $mpDom_ct_new.find('input[type="text"]').val('');
      $mpDom_ct_new.find('textarea').val('');
      $mpDom_ct_new.find('select option:eq(0)').attr('selected', 'selected');

      /*재설정*/
      $mpDom_ct_new.attr('id',mpDom_ct+mpDom_idx); //해당사항의 id 재설정
      $mpDom_ct_new.find('.mp_control_del_btn').attr('onclick', "mpctl_del('"+mpDom_id+"',"+mpDom_idx+")"); //해당사항의 onclick 속성 재설정
      $mpDom_ct_new.find(".mp_cont_num").text(mpDom_idx); //항목제목 숫자 재설정

      //달력(월, 일) 동적 추가요소에 적용
      $(document).find(".mp_resume_date-inpt").removeClass('hasDatepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        changeYear: true, //콤보박스에서 년 선택 가능
        changeMonth: true, //콤보박스에서 월 선택 가능
        nextText: '>', // next 아이콘 툴팁
        prevText: '<', // prev 아이콘 툴팁
        yearRange: 'c-100:c+0',
        autoHide: true,
        zIndex: 2048
      });

      var today_year = getToday(); //현재년도
      var start_year = today_year - 100; //시작년도(현재년도 - 100)

      $(".mp_resume_month-inpt").monthpicker({
        pattern: 'yyyy-mm',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        startYear: start_year
      });

      //추가된 항목 글자수(byte) 숨김
      $mpDom_ct_new.find(".txtar_byte_num").hide();
    }
  }else{
    if(mpDom_id == 'resume_education'){
    var edu_chked = $mpDom_id.find('.mp_control_txtbox input[type="radio"]:checked').parents('.mp_sec_cont').index(); //선택되어있던 항목 index
        $mpDom_id.find('.mp_control_txtbox input[type="radio"]').attr('checked',false); //해당 항목 라디오 선택 초기화(checked 복사 방지)
    }

    mpDom_ct_clone = $mpDom_id.find('.mp_sec_cont:last-child').clone(); //마지막 항목 복사
    $mpDom_id.append(mpDom_ct_clone); //항목 추가

    var $mpDom_ct_new = $mpDom_id.find('.mp_sec_cont:last-child'), //추가된 항목 선택자
        mpDom_idx = $mpDom_id.find('.mp_sec_cont').length; //해당사항의 id(index)

    /*추가항목 입력, 선택값 초기화*/
    $mpDom_ct_new.find('input[type="radio"]').attr('checked',false);
    $mpDom_ct_new.find('input[type="checkbox"]').attr('checked',false);
    $mpDom_ct_new.find('input[type="text"]').val('');
    $mpDom_ct_new.find('textarea').val('');
    $mpDom_ct_new.find('select option:eq(0)').attr('selected', 'selected');

    /*재설정*/
    $mpDom_ct_new.attr('id',mpDom_ct+mpDom_idx); //해당사항의 id 재설정
    $mpDom_ct_new.find('.mp_control_del_btn').attr('onclick', "mpctl_del('"+mpDom_id+"',"+mpDom_idx+")"); //해당사항의 onclick 속성 재설정

    if(mpDom_id == 'resume_education'){ //(개인)이력서등록 > 학력사항일 경우
      var radio_id = 'mp_resume_education'+mpDom_idx; //라디오버튼 아이디
      var radio_id2 = 'mp_resume_education'+(edu_chked+1); //선택되어 있던 라디오버튼 아이디
      
      $("#"+radio_id2).trigger('click');//선택되어 있던 항목 checked
      $mpDom_ct_new.find('.mp_control_txtbox input[type="radio"]').attr({'id':radio_id, 'value':mpDom_idx}); //radio id, value 재설정
      $mpDom_ct_new.find('.mp_control_txtbox label').attr('for',radio_id).text('학력사항 '+mpDom_idx); //label for, text 재설정
    }

    //달력(월, 일) 동적 추가요소에 적용
    $(document).find(".mp_resume_date-inpt").removeClass('hasDatepicker').datepicker({
      dateFormat: 'yy-mm-dd',
      changeYear: true, //콤보박스에서 년 선택 가능
      changeMonth: true, //콤보박스에서 월 선택 가능
      nextText: '>', // next 아이콘 툴팁
      prevText: '<', // prev 아이콘 툴팁
      yearRange: 'c-100:c+0',
      autoHide: true,
      zIndex: 2048
    });

    var today_year = getToday(); //현재년도
    var start_year = today_year - 100; //시작년도(현재년도 - 100)

    $(".mp_resume_month-inpt").monthpicker({
      pattern: 'yyyy-mm',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      startYear: start_year
    });

    //추가된 항목 글자수(byte) 숨김
    $mpDom_ct_new.find(".txtar_byte_num").hide();
  }
}

//(개인)마이페이지 이력서, 자기소개서 항목 삭제
function mpctl_del(dom, index){
  var mpDom_id = dom, //부모 객체 id
      mpDom_ct = dom+"_cont", //해당사항의 id(text)
      mpDom_idx = index, //해당사항의 id(index)
      $mpDom_ct = $("#"+mpDom_ct+mpDom_idx), //해당사항 선택자
      mpDom_ct_count = $mpDom_ct.siblings('.mp_sec_cont').length, //항목 현재 개수
      min_limit = 1, //항목 최소 개수 제한
      delete_conf;

  //공통
  //최소 개수 제한
  if(mpDom_ct_count < min_limit){
    alert('최소 1개의 항목은 작성해야 합니다.');
    return false;
  }

  delete_conf = confirm("삭제하시겠습니까?");
  if(delete_conf == true){
    var i=1; //해당사항 새로운 index 초기화
    $mpDom_ct.siblings('.mp_sec_cont').each(function(){
      var $this = $(this); //각각의 해당사항 선택자

      $this.attr("id",mpDom_ct+i); //해당사항의 id 재설정
      $this.find(".mp_control_del_btn").attr('onclick', "mpctl_del('"+mpDom_id+"',"+i+")"); //해당사항의 onclick 속성 재설정

      if(mpDom_id == 'resume_education'){ //(개인)이력서등록 > 학력사항일 경우
        var radio_id = 'mp_resume_education'+i; //라디오버튼 아이디

        $this.find('.mp_control_txtbox input[type="radio"]').attr('id',radio_id);//radio id 재설정
        $this.find('.mp_control_txtbox label').attr('for',radio_id).text('학력사항 '+i);//label for, text 재설정
      }

      if(mpDom_id == 'resume_career'){ //(개인)이력서등록 > 경력사항일 경우
        $this.find(".mp_cont_num").text(i);//항목제목 숫자 재설정
      }

      i = i + 1; //해당사항 새로운 index(증가)
    });

    $mpDom_ct.remove(); //id 찾아서 해당사항 삭제
  }
}

//체크박스 전체 선택
function checkAll(all, child){
  var $allChk = $("#"+all.getAttribute('id'));
      child_id = child,
      $childChk = $("input[id^='"+child_id+"']");

  

  if($allChk.prop("checked")){
    $childChk.prop('checked',true);
  }else{
    $childChk.prop('checked',false);
  }
}

//개인정보처리방침 내용 보기
function privacyView(){
  var privacyObj = document.getElementById('priv_view_content');
  if(privacyObj.style.display == 'block'){
    privacyObj.style.display = 'none';
  }else{
    privacyObj.style.display = 'block';
  }
  
}


$(document).ready(function(){
  //AOS
	$(function(){
		AOS.init({
		   duration: 1200
		});
		onElementHeightChange(document.body, function(){
		  AOS.refresh();
		});
	});
	function onElementHeightChange(elm, callback) {
		var lastHeight = elm.clientHeight
		var newHeight;

		(function run() {
			newHeight = elm.clientHeight;      
			if (lastHeight !== newHeight) callback();
			lastHeight = newHeight;

			if (elm.onElementHeightChangeTimer) {
			  clearTimeout(elm.onElementHeightChangeTimer); 
			}

			elm.onElementHeightChangeTimer = setTimeout(run, 200);
		})();
  }

  //input file style
  var fileTarget = $('.filebox02 .upload-hidden');

  fileTarget.on('change', function(){
    if(window.FileReader){
      var filename = $(this)[0].files[0].name;
      console.log(filename);
    } else {
      var filename = $(this).val().split('/').pop().split('\\').pop();
      console.log(filename);
    }
    $(this).siblings('.upload-name').val(filename);
  });
  

	//동일 박스 높이
  $(".i-match > *").matchHeight();

  //통합검색 검색키워드 삭제 기능
  $(".total_search_keyword_ul").on('click','.total_search_remove_btn',function(){
    $(this).parent().parent().remove();
  });

  //헤더 메뉴 열기,닫기
  $(".gnb_btn").click(function(){
    $(this).toggleClass("active")
    $(".gnb_dim").toggleClass("on");
    $("#header").toggleClass("black_fix");
    $("#fp-nav").toggleClass("black_fix");

    if($(".gnb_dim").hasClass("on")){
      $(".gnb_ul > li").each(function(index){
        $(this).delay(index*100).animate({ marginTop: '0px', opacity: 1 }, 500);
      });
      $(".main_hd_logo").find(".hd_logo_black_img").show().siblings(".hd_logo_white_img").hide();
    }else{
      $(".gnb_ul > li").css({"margin-top":"30px", "opacity":"0"});
      $(".main_hd_logo").find(".hd_logo_white_img").show().siblings(".hd_logo_black_img").hide();
    }
  });

  //헤더 gnb3 메뉴 열기,닫기
  $(".gnb_more").hover(function(){
    $(this).siblings(".gnb3_wr").stop().fadeToggle(150);
  });
  $(".gnb3_wr").hover(function(){
    $(this).stop().fadeToggle(150);
  });

  //메인 헤더 마우스 오버 효과
  if($(window).width() > 1279){
    $(".main_header").mouseenter(function(){
      $(this).addClass("hd_black");
      $("#fp-nav").addClass("black");
    });
    $(".main_header").mouseleave(function(){
      $(this).removeClass("hd_black");
      $("#fp-nav").removeClass("black");
    });
  }

  //헤더 모바일 메뉴
  if($(window).width() < 1024){
    $(".gnb_ul").children('li').on("click", function(){
      //$(this).addClass("active").siblings().removeClass("active");
      $(this).children(".gnb2_ul").toggleClass("on").parents("li").siblings().children(".gnb2_ul").removeClass("on");
    });
  }

  $(window).resize(function() {
    //메인 헤더 마우스 오버 효과
    if($(window).width() > 1279){
      $(".main_header").mouseenter(function(){
        $(this).addClass("hd_black");
        $("#fp-nav").addClass("black");
      });
      $(".main_header").mouseleave(function(){
        $(this).removeClass("hd_black");
        $("#fp-nav").removeClass("black");
      });
    }
  
    //헤더 모바일 메뉴
    if($(window).width() < 1024){
      $(".gnb_ul").children('li').on("click", function(){
        //$(this).addClass("active").siblings().removeClass("active");
        $(this).children(".gnb2_ul").toggleClass("on").parents("li").siblings().children(".gnb2_ul").removeClass("on");
      });
    }
  });//resize

  //메인 fullpage
  $('#main').fullpage({
    anchors: ['page1', 'page2', 'page3', 'page4'],
    autoScrolling:true,
    navigation: true,
    navigationPosition: 'left',
    //responsiveWidth: 1024,
    onLeave: function(anchorLink, index){
      if(anchorLink == 3 && index == 4){//푸터스크롤시
        var ft_h = $('#footer').height() + 35;
        $(".scroll_guide").hide();
        $("#fp-nav").hide();
        $(".main_hd_logo").css("top","-100%");
        $(".hd_quick_menu").css("bottom",ft_h+"px");
      }else{
        $(".scroll_guide").show();
        $("#fp-nav").show();
        $(".main_hd_logo").css("top","17px");
        $(".hd_quick_menu").css("bottom","35px");
      }
    }
  });

  //메인 비주얼 슬라이더
  var $mainVs_slider = $(".main_visual_sl"),
      mainVs_txt01,
      mainVs_txt02,
      $mainVs_tgtxt01 = $(".main_visual_tgtxt01"),
      $mainVs_tgtxt02 = $(".main_visual_tgtxt02"),
      $mainVs_tglink = $(".main_visual_tglink"),
      $mainVs_totnum = $(".main_visual_num_tot"),
      mainVs_totnum_val;

  function mainVs_timebar_start(){	$('.main_visual_timebar .countdown_inner').animate({'width':'100%'}, 4500, 'linear'); } //카운트다운 시작
  function mainVs_timebar_stop(){	$('.main_visual_timebar .countdown_inner').stop().css({'width':'0'});	} //카운트다운 정지
  mainVs_timebar_start(); // 초기 카운트다운

  $mainVs_slider.slick({
    autoplay: true,
    autoplaySpeed: 4500,
    speed: 1200,
    arrows: true,
    dots: true,
    pauseOnHover: false,
    pauseOnFocus: false
  }).on('init', function(event, slick){
		var slideIndex = slick.currentSlide + 1;
		$(".main_visual_num_act").text('0'+slideIndex);
	}).on('beforeChange', function(event, slick, currentSlide, nextSlide, prevSlide){
		var slideIndex = nextSlide + 1;
    $(".main_visual_num_act").text('0'+slideIndex);

    $mainVs_tgtxt01.removeClass("active");
    $mainVs_tgtxt02.removeClass("active");
    $mainVs_tglink.removeClass("active");
    mainVs_timebar_stop();
	}).on('afterChange', function(event, slick, currentSlide, nextSlide, prevSlide){
    mainVs_txt01 = $(".main_visual_cont.slick-current .main_visual_txt01").html();
    mainVs_txt02 = $(".main_visual_cont.slick-current .main_visual_txt02").html();
    mainVs_link = $(".main_visual_cont.slick-current .main_visual_link").html();

    $mainVs_tgtxt01.addClass("active").html(mainVs_txt01);
    $mainVs_tgtxt02.addClass("active").html(mainVs_txt02);
    $mainVs_tglink.addClass("active").html(mainVs_link);
    mainVs_timebar_start();
	});

  mainVs_txt01 = $(".main_visual_cont.slick-current .main_visual_txt01").html();
  mainVs_txt02 = $(".main_visual_cont.slick-current .main_visual_txt02").html();
  mainVs_link = $(".main_visual_cont.slick-current .main_visual_link").html();
  mainVs_totnum_val = $(".main_visual_sl .slick-dots li").length;

  if(mainVs_totnum_val >= 10){
    $mainVs_totnum.text(mainVs_totnum_val);
  }else{
    $mainVs_totnum.text("0"+mainVs_totnum_val);
  }
  $mainVs_tgtxt01.html(mainVs_txt01);
  $mainVs_tgtxt02.html(mainVs_txt02);
  $mainVs_tglink.addClass("active").html(mainVs_link);

  //> 이전, 다음 기능(trigger)
  var $mainVs_prev = $(".main_visual_prev"), //연결 이전 버튼
      $mainVs_next = $(".main_visual_next"), //연결 다음 버튼
      $mainVs_Slprev = $(".main_visual_sl .slick-prev"), //원본 이전 버튼
      $mainVs_Slnext = $(".main_visual_sl .slick-next"), //원본 다음 버튼
      $mainVs_pause = $(".main_visual_pause");

  $mainVs_prev.click(function(){
    $mainVs_Slprev.trigger('click');
    mainVs_timebar_stop();
  });
  $mainVs_next.click(function(){
    $mainVs_Slnext.trigger('click');
    mainVs_timebar_stop();
  });

  //> 정지, 재생 기능
  $mainVs_pause.click(function(){
		if ( $(this).hasClass('on') ){
			$(this).removeClass('on');
			$mainVs_slider.slick('slickPlay');
			mainVs_timebar_stop();
			mainVs_timebar_start();
		}else{
			$(this).addClass('on');
			$mainVs_slider.slick('slickPause');
			mainVs_timebar_stop();
		}
	});

  //메인 채용공고 슬라이더
  var $mainRc_slider = $(".main_recruit_list_box");

  function mainRc_timebar_start(){	$('.main_recruit_timebar .countdown_inner').animate({'width':'100%'}, 10500, 'linear'); } //카운트다운 시작
  function mainRc_timebar_stop(){	$('.main_recruit_timebar .countdown_inner').stop().css({'width':'0'});	} //카운트다운 정지
  mainRc_timebar_start(); // 초기 카운트다운

  var viewportWidth = $(window).width();
  if( viewportWidth > 1023 ){
    var Rows = 2;
    var Scroll = 2;
  } else {
    var Rows = 1;
    var Slides = 1;
  }

  $mainRc_slider.slick({
    autoplay: true,
    autoplaySpeed: 10500,
    infinite: true,
    rows: Rows,
    slidesToShow: 3,
    slidesToScroll: Slides,
    variableWidth: true,
    pauseOnHover: false,
    pauseOnFocus: false,
    /*responsive: [
      {
        breakpoint: 1024,
        settings: {
          rows: 1,
          slidesToShow: 1,
          slidesToScroll: 2
        }
      }
    ]*/
  }).on('beforeChange', function(event, slick, currentSlide, nextSlide, prevSlide){
    mainRc_timebar_stop();
	}).on('afterChange', function(event, slick, currentSlide, nextSlide, prevSlide){
    mainRc_timebar_start();
  });
  
  //> 이전, 다음 기능(trigger)
  var $mainRc_prev = $(".main_recruit_prev"), //연결 이전 버튼
      $mainRc_next = $(".main_recruit_next"), //연결 다음 버튼
      $mainRc_Slprev = $(".main_recruit_list_box .slick-prev"), //원본 이전 버튼
      $mainRc_Slnext = $(".main_recruit_list_box .slick-next"), //원본 다음 버튼
      $mainRc_pause = $(".main_recruit_pause");

  $mainRc_prev.click(function(){
    $mainRc_Slprev.trigger('click');
    mainRc_timebar_stop();
  });
  $mainRc_next.click(function(){
    $mainRc_Slnext.trigger('click');
    mainRc_timebar_stop();
  });

  //> 정지, 재생 기능
  $mainRc_pause.click(function(){
		if ( $(this).hasClass('on') ){
			$(this).removeClass('on');
			$mainRc_slider.slick('slickPlay');
			mainRc_timebar_stop();
			mainRc_timebar_start();
		}else{
			$(this).addClass('on');
			$mainRc_slider.slick('slickPause');
			mainRc_timebar_stop();
		}
	});

  //메인 게시판 탭
  var $mainBo_Tab = $(".main_board_tab_ul > li"), //탭버튼
      $mainBo_Title = $(".main_board_title"), //게시판 타이틀
      mainBo_tabTit,
      mainBo_tabTit_w,
      mainBo_tabTit_w2;

  $mainBo_Tab.click(function(){
    mainBo_tabTit = $(this).find("a").text(); //클릭한 탭의 타이틀

    $(this).addClass("active").siblings().removeClass("active"); //탭버튼 활성화
    $mainBo_Title.text(mainBo_tabTit); //(활성화)타이틀 변경

    //타이틀 길이에 따라 line 길이 변동
    mainBo_tabTit_w = $(".main_board_title").width() + 10;
    mainBo_tabTit_w2 = "calc(100% - "+mainBo_tabTit_w+"px)";
    console.log(mainBo_tabTit_w2);
    $(".main_board_line_bar").css("width",mainBo_tabTit_w2);
  });

  // 메인 게시판 셀렉트박스(모바일)
  var currentWidth = $(window).width();
  if( currentWidth < 768 ){
    $(".main_board_title").click(function(){
      $(this).siblings(".main_board_tab").slideToggle();
    });
  };

  //메인 배너존 슬라이더
  var $mainBn_slider = $(".main_bnzone_sl");

  $mainBn_slider.slick({
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: true,
    dots: false,
    pauseOnHover: false,
    pauseOnFocus: false
  });

  //> 이전, 다음 기능(trigger)
  var $mainBn_prev = $(".main_bnzone_prev"), //연결 이전 버튼
      $mainBn_next = $(".main_bnzone_next"), //연결 다음 버튼
      $mainBn_Slprev = $(".main_bnzone_sl .slick-prev"), //원본 이전 버튼
      $mainBn_Slnext = $(".main_bnzone_sl .slick-next"), //원본 다음 버튼
      $mainBn_pause = $(".main_bnzone_pause");

  $mainBn_prev.click(function(){
    $mainBn_Slprev.trigger('click');
  });
  $mainBn_next.click(function(){
    $mainBn_Slnext.trigger('click');
  });

  $mainBn_pause.click(function(){
    if ( $(this).hasClass('on') ){
			$(this).removeClass('on');
			$mainBn_slider.slick('slickPlay');
		}else{
			$(this).addClass('on');
			$mainBn_slider.slick('slickPause');
		}
  });

  //푸터 연계사이트 슬라이더
  var $ftBi_slider = $(".ft_bi_slider");

  $ftBi_slider.slick({
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: true,
    dots: false,
    slidesToShow: 6,
    slidesToScroll: 1,
    pauseOnHover: false,
    pauseOnFocus: false,
    responsive: [,
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 5
        }
      },
      {
        breakpoint: 768,
        settings: {
          variableWidth: true
        }
      }
    ]
  });

  //> 이전, 다음 기능(trigger)
  var $ftBi_prev = $(".ft_bi_slider_prev > a"), //연결 이전 버튼
      $ftBi_next = $(".ft_bi_slider_next > a"), //연결 다음 버튼
      $ftBi_Slprev = $(".ft_bi_slider .slick-prev"), //원본 이전 버튼
      $ftBi_Slnext = $(".ft_bi_slider .slick-next"), //원본 다음 버튼
      $ftBi_pause = $(".ft_bi_slider_pause");

  $ftBi_prev.click(function(){
    $ftBi_Slprev.trigger('click');
    mainVs_timebar_stop();
  });
  $ftBi_next.click(function(){
    $ftBi_Slnext.trigger('click');
    mainVs_timebar_stop();
  });

  //> 정지, 재생 기능
  $ftBi_pause.click(function(){
		if ( $(this).hasClass('on') ){
			$(this).removeClass('on');
			$ftBi_slider.slick('slickPlay');
		}else{
			$(this).addClass('on');
			$ftBi_slider.slick('slickPause');
		}
  });
  
  //서브 비주얼 타이틀 첫로딩시 효과
  $(".sub_vs_title").addClass("df");

  /*
  $(".mp_navi > li").click(function(){
    if($(this).find(".mp_navi_dp2").length > 0){
      $(this).find(".mp_navi_dp2").slideToggle(200);
    }
  });
  */

  //이미지 업로드 미리보기 기능
  var fileTarget = $('.filebox .upload-hidden');

  fileTarget.on('change', function(){
    if(window.FileReader){
      var filename = $(this)[0].files[0].name;
    }else{
      var filename = $(this).val().split('/').pop().split('\\').pop();
    };
    $(this).siblings('.upload-name').val(filename);
  });

  var imgTarget = $('.preview-image .upload-hidden');

  imgTarget.on('change', function(){
    var parent = $(this).parent();
    parent.children('.upload-display').remove();

    if(window.FileReader){
      if (!$(this)[0].files[0].type.match(/image\//)) return;
      
      var reader = new FileReader();
      reader.onload = function(e){
        var src = e.target.result;
        parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>');
      }
      reader.readAsDataURL($(this)[0].files[0]);
    }else{
      $(this)[0].select();
      $(this)[0].blur();
      var imgSrc = document.selection.createRange().text;
      parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');

      var img = $(this).siblings('.upload-display').find('img');
      img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")";        
    }
  });

  //근무시간 24시간(30분단위) 셀렉트 박스
  var $wktimeSel = $(".time-sel");
  for(var hr=0; hr < 24; hr++){
    var hrStr = hr.toString().padStart(2,"0")+":";
    var val = hrStr+"00";
    var timePart;
    if(hr == 0){
      timePart = '(자정) ';
    }else if(hr >= 12){
      timePart = '(오후) ';
    }else{
      timePart = '(오전) ';
    }
    $wktimeSel.append('<option val="'+val+'">'+timePart+val+'</option>');

    val = hrStr+"30";
    if(hr == 0){
      timePart = '(오전) ';
    }
    $wktimeSel.append('<option val="'+val+'">'+timePart+val+'</option>');
  }

  //(개인)마이페이지 이력서 > 학력사항 > 고등학교 선택시 학점 미입력
  var $mpEdu_sel = $('.mp_resume_edu_sel');
  $mpEdu_sel.change(function(){
    var selectedText = $(this).children("option:selected").text(); //option text
    
    if(selectedText == '고등학교'){
      $(this).parents(".mp_sec_cont").find(".mp_resume_major-inpt2, .mp_resume_major-inpt3").addClass("disabled").attr("disabled",true);
    }else{
      $(this).parents(".mp_sec_cont").find(".mp_resume_major-inpt2, .mp_resume_major-inpt3").removeClass("disabled").removeAttr("disabled");
    }
  });

  //(개인)마이페이지 이력서 > 학력사항 > 최종학력 적용
  var $lastEdu_Btn = $('#mp_resume_lastedu_btn'), //최종학력 적용 버튼
      $lastEdu_chk,
      lastEdu_school,
      lastEdu_stat;
  $lastEdu_Btn.click(function(){
    $lastEdu_chk = $('input[id^="mp_resume_education"]:checked'); //최종학력 선택 사항
    lastEdu_school = $lastEdu_chk.parents(".mp_sec_cont").find(".mp_resume_edu_sel option:selected").text(); //최종학력 학교명
    lastEdu_stat = $lastEdu_chk.parents(".mp_sec_cont").find(".mp_resume_edu_stat_sel option:selected").text(); //최종학력 상태

    if($lastEdu_chk.length == 0){
      alert('최종학력으로 적용할 학력사항을 선택해주세요.');
      return false;
    }

    if(lastEdu_school == '학력선택' || lastEdu_stat == '상태선택'){
      alert('학력을 먼저 입력한 후 최종학력으로 적용해주세요.');
      return false;
    }

    $("#lastEdu_txt02").text(lastEdu_school+" "+lastEdu_stat);
  });

  //(개인)마이페이지 이력서 > 경력사항 > 근무기간 자동계산
  $("#mp_resume_totCareer_btn").click(function(){
    var sumYear = 0;
    var sumMonth = 0;
    var totalMonth = 0;
    var rstYear = 0;
    var rstMonth = 0;

    $("#resume_career .mp_sec_cont").each(function(){
      var strDate1 = $(this).find(".mp_resume_month-inpt01").val();
      var strDate2 = $(this).find(".mp_resume_month-inpt02").val();
      var arrDate1 = strDate1.split('-');
      var arrDate2 = strDate2.split('-');
      var currYear1 = parseInt(arrDate1[0]);
      var currYear2 = parseInt(arrDate2[0]);
      var currMonth1 = parseInt(arrDate1[1]);
      var currMonth2 = parseInt(arrDate2[1]);
      var subYear = currYear2 - currYear1;
      var subMonth = currMonth2 - currMonth1 + 1;

      if(isNaN(subYear)){//항목 기간(년) 값이 없다면
        subYear = 0;
      }
      if(isNaN(subMonth)){//항목 기간(월) 값이 없다면
        subMonth = 0;
      }

      sumYear += subYear * 12;//(년도의 합계를 개월수로 변환)년도 합계
      sumMonth += subMonth;//개월수 총합
      totalMonth = sumYear + sumMonth;//년도(개월수) + 개월수 = 총개월수

      rstYear = Math.floor(totalMonth / 12);
      rstMonth = totalMonth % 12;

      $("#totCareer_txt02").text(rstYear+"년 "+rstMonth+"개월");
    });
  });

  //이메일 직접입력
  $(".i-mail_sel").change(function(){
    $(this).children("option:selected").each(function(){
      if($(this).val() == 'etc_w'){
        $(".i-mail_inpt").attr('disabled', false).removeClass('disabled').val('').focus();
      }else{
        $(".i-mail_inpt").attr('disabled', true).addClass('disabled').val($(this).text());
      }
    });
  });
});//document
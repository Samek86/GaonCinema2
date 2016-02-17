function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}



function step2popup(USER_ID, MOVIE_ID, CNAME, LNAME, TNAME, TSTYLE, MSTARTHOUR) {
	
	//
	//ajax로 뒤져서 행열 가져오기
	$.ajax({
		url: "movieDetail.do",
		data: "MOVIE_ID=" +MOVIE_ID,
		dataType: "json",
		type: "GET",
		success: function(data) { 
				
				//리셋 ↓
			$(".step2_right .s2_poster").attr("src", "./resources/img/movie/"+decode(data.POSTER));
			$(".step2_right .d_AGE").html('<img src="./resources/img/movie/movie'+decode(data.AGE)+'.png">');
			
				/*$('#detailstar').rating("clear");
				$("#detailstar").rating("refresh", {disabled: false});
				$(".detailpopup .likebt").text("찜하기");
				$(".detailpopup .likebt").css({"color": "#E08F23", "background-color": "transparent", "cursor":"pointer"});
				$(".detailpopup .likebt").hover(function(){
					$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"pointer"})}, function(){
					$(".detailpopup .likebt").css({"color": "#E08F23", "background-color": "transparent", "cursor":"pointer"})
				});
				$(".detailpopup .d_rate .label").html("평점을 입력해주세요");*/
				
				//개봉전 영화일 경우 ↓
			
				/*if(nownext=='next'){
					$("#detailstar").rating("refresh", {disabled: true});
					$('#detailstar').rating("clear");
					$(".detailpopup .d_rate .label").html("아직 개봉 전 입니다.");
					$(".detailpopup .popupstar").html("<div style='height:10px;'></div>");
				}
				//
				$(".detailpopup .d_hidden").html('<div class="d_movieNum_'+data.MOVIE_ID+'">' +
						'<input id="h_MOVIE_ID" type="hidden" value="'+data.MOVIE_ID+'">' +
						'<input id="h_AVG" type="hidden" value="'+data.AVG+'">' +
						'<input id="h_AVG_NUM" type="hidden" value="'+data.AVG_NUM+'">')
						
				$(".detailpopup .d_POSTER").html('<img src="./resources/img/movie/'+decode(data.POSTER)+'">');
				$(".detailpopup .d_AGE").html('<img src="./resources/img/movie/movie'+decode(data.AGE)+'.png">');
				$(".detailpopup .d_NAME_K").html(decode(data.NAME_K));
				$(".detailpopup .d_NAME_E").html(decode(data.NAME_E));
				$(".detailpopup .d_AVG").html(data.AVG);
				$(".detailpopup .d_AVG_NUM").html('('+data.AVG_NUM+'명 참여)');
				$(".detailpopup .star-wrap").css("width", 13.1*data.AVG);
				$(".detailpopup .info_wrap li").eq(0).html('<strong>개봉일</strong> : '+data.STARTDATE);
				$(".detailpopup .info_wrap li").eq(1).html('<strong>감독</strong> : '+decode(data.DIRECTOR));
				$(".detailpopup .info_wrap li").eq(2).html('<strong>출연진</strong> : '+decode(data.ACTOR));
				$(".detailpopup .info_wrap li").eq(3).html('<strong>장르</strong> : '+decode(data.GENRE));
				if(decode(data.PAGE).match(".*naver.*") ){
					$(".detailpopup .info_wrap li").eq(4).html('<strong>홈페이지</strong> : <a href="'+decode(data.PAGE)+'">네이버 페이지</a>');
				}else{
					$(".detailpopup .info_wrap li").eq(4).html('<strong>공식 홈페이지</strong> : <a href="'+decode(data.PAGE)+'">'+decode(data.PAGE)+'</a>');
				}
				$(".detailpopup .d_middle").html("<strong>줄거리</strong> :  "+decode(data.CONTENT));
				
				//$(".detailpopup .like button").attr("onclick", "likeplus("+data.MOVIE_ID+")");
				$(".detailpopup .d_revbt").attr("href", "#");
		
				$(".detailpopup #jssor_1 img").eq(0).attr('src', './resources/img/movie/'+decode(data.STEEL1));
				$(".detailpopup #jssor_1 img").eq(1).attr('src', './resources/img/movie/'+decode(data.STEEL2));
				$(".detailpopup #jssor_1 img").eq(2).attr('src', './resources/img/movie/'+decode(data.STEEL3));
				$(".detailpopup #jssor_1 img").eq(3).attr('src', './resources/img/movie/'+decode(data.STEEL4));
				$(".detailpopup #jssor_1 img").eq(4).attr('src', './resources/img/movie/'+decode(data.STEEL5));
				$(".detailpopup #jssor_1 img").eq(5).attr('src', './resources/img/movie/'+decode(data.STEEL6));
				$(".detailpopup #jssor_1 img").eq(6).attr('src', './resources/img/movie/'+decode(data.STEEL7));
				$(".detailpopup #jssor_1 img").eq(7).attr('src', './resources/img/movie/'+decode(data.STEEL1));
				$(".detailpopup #jssor_1 img").eq(8).attr('src', './resources/img/movie/'+decode(data.STEEL2));
				$(".detailpopup #jssor_1 img").eq(9).attr('src', './resources/img/movie/'+decode(data.STEEL3));
				$(".detailpopup #jssor_1 img").eq(10).attr('src', './resources/img/movie/'+decode(data.STEEL4));
				$(".detailpopup #jssor_1 img").eq(11).attr('src', './resources/img/movie/'+decode(data.STEEL5));
				$(".detailpopup #jssor_1 img").eq(12).attr('src', './resources/img/movie/'+decode(data.STEEL6));
				$(".detailpopup #jssor_1 img").eq(13).attr('src', './resources/img/movie/'+decode(data.STEEL7));
					
				//$(".detailpopup .youtube_wrap").html('<iframe width="920" height="518" src="'+decode(data.MOVIE)+'?rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>')
				$(".detailpopup .youtube_wrap iframe").attr("src", decode(data.MOVIE)+"?rel=0&amp;controls=0&amp;showinfo=0");*/
				
		},
		error: function(data) {
			//console.log(data);
		}
	});
	
	
	$.magnificPopup.open({
		  items: {
		      src: '.step2',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
} 



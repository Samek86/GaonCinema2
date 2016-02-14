var NowUser ="";
var starNum;
var AVG;
var AVG_NUM;


function userIDsave(id){
	NowUser = id;
}

function starID(id, Num){
	NowUser = id;
	starNum = Num;
}

$(document).ready(function(){ 
    $('.nowmovie').click(function(){
            $('.nextmoviepage').hide();     
            $('.nowmoviepage').show();
            $('.nextmovie').removeClass('selected');
            $('.nowmovie').addClass('selected');
    });
    
    $('.nextmovie').click(function(){
            $('.nowmoviepage').hide();     
            $('.nextmoviepage').show();
            $('.nowmovie').removeClass('selected');
            $('.nextmovie').addClass('selected');
    });
});

function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}

function moviedetail(MOVIE_ID, id, nownext) {
	var Ca = /\+/g;
	NowUser = id;
	$.ajax({
		url: "movieDetail.do",
		data: "MOVIE_ID=" +MOVIE_ID,
		dataType: "json",
		type: "GET",
		success: function(data) { 
				//console.log(decode(data.NAME_K) +decode(data.NAME_E));
				//리셋 ↓
				$('#detailstar').rating("clear");
				$("#detailstar").rating("refresh", {disabled: false});
				$(".detailpopup .likebt").text("찜하기");
				$(".detailpopup .likebt").css({"color": "#E08F23", "background-color": "transparent", "cursor":"pointer"});
				$(".detailpopup .likebt").hover(function(){
					$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"pointer"})}, function(){
					$(".detailpopup .likebt").css({"color": "#E08F23", "background-color": "transparent", "cursor":"pointer"})
				});
				$(".detailpopup .d_rate .label").html("평점을 입력해주세요");
				//개봉전 영화일 경우 ↓
				if(nownext=='next'){
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
				$(".detailpopup .youtube_wrap iframe").attr("src", decode(data.MOVIE)+"?rel=0&amp;controls=0&amp;showinfo=0");
				
				$.ajax({
					url: "RateCheck.do",
					data: 'NowUser='+NowUser+'&MOVIE_ID='+MOVIE_ID,
					dataType: "json",
					type: "GET",
					success: function(data) { 
							//console.log(data);
							if(data.check == 1){
								$("#detailstar").rating("refresh", {disabled: true});
								$('#detailstar').rating("clear");
								$(".detailpopup .d_rate .label").html("이미 참여하셨습니다");
								return;
							}
					},
					error: function(data) {
						//console.log(data);
					}
				});
				
				$.ajax({
					url: "LikeCheck.do",
					data: 'NowUser='+NowUser+'&MOVIE_ID='+MOVIE_ID,
					dataType: "json",
					type: "GET",
					success: function(data) { 
							//console.log(data);
							if(data.check == 1){
								$(".detailpopup .likebt").text("찜했음");
								/*$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
								$(".detailpopup .likebt").hover(function(){
									$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
									$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
								});*/
								return;
							}
					},
					error: function(data) {
						//console.log(data);
					}
				});
		},
		error: function(data) {
			//console.log(data);
		}
	});
	
	
	$.magnificPopup.open({
		  items: {
		      src: '.detailpopup',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
	
}


$(document).ready(function(){ 
	$("#detailstar").on("rating.change", function(event, value, caption) {
		if(NowUser=='null'||NowUser==''){
			$('#detailstar').rating("clear");
		   alert("로그인 후에 참여해주세요");
		   return;
	   }else{
	   
	    $.ajax({
			url: "RateCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' +$("#h_MOVIE_ID").val(),
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						alert("이미 참여하셨습니다");
						$("#detailstar").rating("refresh", {disabled: true});
						$('#detailstar').rating("clear");
						return;
					}
					else{
						 $.ajax({
								url: "movieDetailrate.do",
								data: 'NowUser='+NowUser+'&MOVIE_ID=' +$("#h_MOVIE_ID").val() +'&value='+value +'&AVG=' + $("#h_AVG").val() + '&AVG_NUM='+ $("#h_AVG_NUM").val(),
								dataType: "json",
								type: "GET",
								success: function(data) { 
										$(".detailpopup .d_AVG").html(data.AVG);
										$(".detailpopup .d_AVG_NUM").html('('+data.AVG_NUM+'명 참여)');
										$(".detailpopup .star-wrap").css("width", 13.1*data.AVG);
										$(".nowmoviepage .movieNum_"+$('#h_MOVIE_ID').val()+" .AVG").text('평점 '+data.AVG);
										$(".likemoviepage .movieNum_"+$('#h_MOVIE_ID').val()+" .AVG").text('평점 '+data.AVG);
										$(".movieNum_"+$('#h_MOVIE_ID').val()+" .star-wrap").css("width", 13.1*data.AVG);
										$("#detailstar").rating("refresh", {disabled: true});
								},
								error: function(data) {
									//console.log(data);
								}
							});
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	   
	   }
	});
	
});

function likeplus(){ 
	   if(NowUser=='null'||NowUser==''){
		   alert("로그인 후에 참여해주세요");
		   return;
	   }else{
	    $.ajax({
			url: "LikeCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' + $("#h_MOVIE_ID").val(),
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						
						$.ajax({
							url: "LikeRemove.do",
							data: 'NowUser='+NowUser+'&MOVIE_ID=' +$("#h_MOVIE_ID").val(),
							dataType: "json",
							type: "GET",
							success: function(data) {
								if(data.check=="1"){
									$(".detailpopup .likebt").text("찜하기");
									/*$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
									$(".detailpopup .likebt").hover(function(){
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
									});*/
								}
							},
							error: function(data) {
								//console.log(data);
							}
						});
						
						alert("찜에서 제외하였습니다");
						return;
					}
					else{
						 $.ajax({
								url: "LikeAdd.do",
								data: 'NowUser='+NowUser+'&MOVIE_ID=' +$("#h_MOVIE_ID").val(),
								dataType: "json",
								type: "GET",
								success: function(data) {
									if(data.check=="1"){
										$(".detailpopup .likebt").text("찜했음");
										/*$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
										$(".detailpopup .likebt").hover(function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
										});*/
									}
								},
								error: function(data) {
									//console.log(data);
								}
							});
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	  };
};

function poster_likeplus(MOVIE_ID, NowUser){ 
	   if(NowUser=='null'||NowUser==''){
		   g_alert("로그인 후에 참여해주세요");
		   return;
	   }else{
	    $.ajax({
			url: "LikeCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' + MOVIE_ID,
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						
						$.ajax({
							url: "LikeRemove.do",
							data: 'NowUser='+NowUser+'&MOVIE_ID='+MOVIE_ID,
							dataType: "json",
							type: "GET",
							success: function(data) {
								if(data.check=="1"){
									$(".detailpopup .likebt").text("찜하기");
									/*$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
									$(".detailpopup .likebt").hover(function(){
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
									});*/
								}
							},
							error: function(data) {
								//console.log(data);
							}
						});
						g_alert("찜에서 제외하였습니다");
						return;
					}
					else{
						 $.ajax({
								url: "LikeAdd.do",
								data: 'NowUser='+NowUser+'&MOVIE_ID=' +MOVIE_ID,
								dataType: "json",
								type: "GET",
								success: function(data) {
									if(data.check=="1"){
										g_alert("찜하셨습니다");
										$(".detailpopup .likebt").text("찜했음");
										/*$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
										$(".detailpopup .likebt").hover(function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
										});*/
									}
								},
								error: function(data) {
									//console.log(data);
								}
							});
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	  };
};


function posterhover(MOVIE_ID, userid, poster_avg, poster_avgNum, nownext) {
	starNum = MOVIE_ID;
	NowUser = userid;
	AVG = poster_avg;
	AVG_NUM = poster_avgNum;
	//console.log(NowUser+" , "+starNum);
	
	
	 if(nownext=='now'){
		$('.movieNum_'+MOVIE_ID+' .poster-wrap .rating-container').css("display", "block");
	 }
	 $('.movieNum_'+MOVIE_ID+' .poster_like').css({"display": "block"});
	 $('.movieNum_'+MOVIE_ID+' .poster_star').rating("clear");
	 if(NowUser==null||NowUser==""){return;};
	 $.ajax({
			url: "RateCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' +starNum,
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						//$('.movieNum_'+MOVIE_ID+' .poster-wrap div').eq(0).css("margin-top", "-15px");
						//$('.movieNum_'+MOVIE_ID+' .poster-wrap div').eq(0).html('<button type="button" class="btn btn-warning" disabled="disabled">이미 참여하셨습니다</button>');
						//$('.movieNum_'+MOVIE_ID+' .poster-wrap .btn').show();
						//$('.movieNum_'+MOVIE_ID+' .poster_like').css("margin-top", "-45px");
						$('.movieNum_'+MOVIE_ID+' .poster_star').rating("refresh", {disabled: true});
						$('.movieNum_'+MOVIE_ID+' .poster_star').rating("clear");
						return;
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	 $.ajax({
			url: "LikeCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' + starNum,
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						//$('.movieNum_'+starNum+' .poster_like .likebt').css("cursor", "no-drop");
						//$('.movieNum_'+starNum+' .poster_like .likebt:hover').css({"background-color": "#D6BA8A", "border-color": "#D6BA8A"});
						return;
					}
					else{
						//$('.movieNum_'+starNum+' .poster_like .likebt').css("cursor", "no-drop");
						//$('.movieNum_'+starNum+' .poster_like .likebt:hover').css({"background-color": "#E08F23", "border-color": "#E08F23"});
						return;
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	 
	 
}

function posterleave(MOVIE_ID) {
	
	//console.log('.movieNum_'+MOVIE_ID+' .poster-wrap .rating-container');
	$('.poster-wrap div').eq(0).css("margin-top", "0px");
	//$('.movieNum_'+MOVIE_ID+' .poster_like').css("margin-top", "-45px");
		//$('.movieNum_'+MOVIE_ID+' .poster-wrap div').eq(0).css("margin-top", "0px");
		//$('.movieNum_'+MOVIE_ID+' .poster_like').css({"display": "none"});
		//$('.movieNum_'+MOVIE_ID+' .poster-wrap .btn').hide();
		//$('.movieNum_'+MOVIE_ID+' .poster-wrap .rating-container').css("display", "none");
	//$('.poster-wrap .btn').hide();
	$('.poster_like').css({"display": "none"});
	$('.poster-wrap .rating-container').css("display", "none");
}

$(document).ready(function(){ 
	$(".poster_star").on("rating.change", function(event, value, caption) {
		//console.log(NowUser+" , "+starNum);
		if(NowUser=='null'||NowUser==''){
			$('.movieNum_'+starNum+' .poster_star').rating("clear");
		   g_alert("로그인 후에 참여해주세요");
		   return;
	   }else{
	   
	    $.ajax({
			url: "RateCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' +starNum,
			dataType: "json",
			type: "GET",
			success: function(data) { 
					//console.log(data);
					if(data.check=="1"){
						g_alert("이미 참여하셨습니다");
						return;
					}
					else{
						 $.ajax({
								url: "movieDetailrate.do",
								data: 'NowUser='+NowUser+'&MOVIE_ID='+starNum+'&value='+value +'&AVG=' + AVG + '&AVG_NUM='+ AVG_NUM,
								dataType: "json",
								type: "GET",
								success: function(data) { 
										//$(".detailpopup .d_AVG").html(data.AVG);
										//$(".detailpopup .d_AVG_NUM").html('('+data.AVG_NUM+'명 참여)');
										//$(".detailpopup .star-wrap").css("width", 13.1*data.AVG);
										$(".nowmoviepage .movieNum_"+starNum+" .AVG").text('평점 '+data.AVG);
										$(".movieNum_"+starNum+" .star-wrap").css("width", 13.1*data.AVG);
										$('.movieNum_'+MOVIE_ID+' .poster_star').rating("refresh", {disabled: true});
										$('.movieNum_'+MOVIE_ID+' .poster_star').rating("clear");
										return;
								},
								error: function(data) {
									//console.log(data);
								}
							});
					}
			},
			error: function(data) {
				//console.log(data);
			}
		});
	   
	   }
	});
	
});



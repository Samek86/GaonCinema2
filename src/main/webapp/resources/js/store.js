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
    $('.popcorn').click(function(){
            $('.drinkpage').hide();     
            $('.snackpage').hide();     
            $('.combopage').hide();     
            $('.giftpage').hide();     
            $('.popcornpage').show();
            $('.popcorn').css({"background-color" : "#017467", "color" : "#fff"});
            $('.drink').css({"background-color" : "transparent", "color" : "#017467"});
            $('.snack').css({"background-color" : "transparent", "color" : "#017467"});
            $('.combo').css({"background-color" : "transparent", "color" : "#017467"});
            $('.gift').css({"background-color" : "transparent", "color" : "#017467"});
    });
    
    $('.drink').click(function(){
        $('.snackpage').hide();     
        $('.combopage').hide();     
        $('.giftpage').hide();     
        $('.popcornpage').hide();
        $('.drinkpage').show();     
        $('.drink').css({"background-color" : "#017467", "color" : "#fff"});
        $('.popcorn').css({"background-color" : "transparent", "color" : "#017467"});
        $('.snack').css({"background-color" : "transparent", "color" : "#017467"});
        $('.combo').css({"background-color" : "transparent", "color" : "#017467"});
        $('.gift').css({"background-color" : "transparent", "color" : "#017467"});
    });
    $('.snack').click(function(){
    	$('.drinkpage').hide();     
    	$('.combopage').hide();     
    	$('.giftpage').hide();     
    	$('.popcornpage').hide();
    	$('.snackpage').show();     
    	$('.snack').css({"background-color" : "#017467", "color" : "#fff"});
    	$('.popcorn').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.drink').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.combo').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.gift').css({"background-color" : "transparent", "color" : "#017467"});
    });
    $('.combo').click(function(){
    	$('.drinkpage').hide();     
    	$('.snackpage').hide();     
    	$('.giftpage').hide();     
    	$('.popcornpage').hide();
    	$('.combopage').show();     
    	$('.combo').css({"background-color" : "#017467", "color" : "#fff"});
    	$('.popcorn').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.snack').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.drink').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.gift').css({"background-color" : "transparent", "color" : "#017467"});
    });
    $('.gift').click(function(){
    	$('.drinkpage').hide();     
    	$('.snackpage').hide();     
    	$('.combopage').hide();     
    	$('.popcornpage').hide();
    	$('.giftpage').show();     
    	$('.gift').css({"background-color" : "#017467", "color" : "#fff"});
    	$('.popcorn').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.snack').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.combo').css({"background-color" : "transparent", "color" : "#017467"});
    	$('.drink').css({"background-color" : "transparent", "color" : "#017467"});
    });
});

function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}

function storeDetail(store_id) {
	var Ca = /\+/g;
	$.ajax({
		url: "StoreDetail.do",
		data: "store_id=" +store_id,
		dataType: "json",
		type: "GET",
		success: function(data) { 
				$(".storeDtail .store_POSTER").html('<img src="./resources/img/store/'+decode(data.imgfile)+'">');
				$(".storeDtail .store_title").html(decode(data.title));
				$(".storeDtail .store_subtitle").html(decode(data.subtitle));
				$(".storeDtail .storeinfo_wrap li").eq(0).html('<strong>가격</strong> : '+data.price);
				$(".storeDtail .storeinfo_wrap li").eq(1).html('<strong>상품설명</strong> : '+decode(data.content));
		},
		error: function(data) {
			alert(data);
			console.log(data);
		}
	});
	
	
	$.magnificPopup.open({
		  items: {
		      src: '.storeDtail',
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
					console.log(data);
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
										$(".movieNum_"+$('#h_MOVIE_ID').val()+" .star-wrap").css("width", 13.1*data.AVG);
										$("#detailstar").rating("refresh", {disabled: true});
								},
								error: function(data) {
									console.log(data);
								}
							});
					}
			},
			error: function(data) {
				console.log(data);
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
					console.log(data);
					if(data.check=="1"){
						alert("이미 찜하셨습니다");
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
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
										$(".detailpopup .likebt").hover(function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
										});
									}
								},
								error: function(data) {
									console.log(data);
								}
							});
					}
			},
			error: function(data) {
				console.log(data);
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
					console.log(data);
					if(data.check=="1"){
						g_alert("이미 찜하셨습니다");
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
										$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"});
										$(".detailpopup .likebt").hover(function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})}, function(){
											$(".detailpopup .likebt").css({"color": "#fff", "background-color": "#E08F23", "cursor":"no-drop"})
										});
									}
								},
								error: function(data) {
									console.log(data);
								}
							});
					}
			},
			error: function(data) {
				console.log(data);
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
				console.log(data);
			}
		});
	 $.ajax({
			url: "LikeCheck.do",
			data: 'NowUser='+NowUser+'&MOVIE_ID=' + starNum,
			dataType: "json",
			type: "GET",
			success: function(data) { 
					console.log(data);
					if(data.check=="1"){
						$('.movieNum_'+starNum+' .poster_like .likebt').css("cursor", "no-drop");
						$('.movieNum_'+starNum+' .poster_like .likebt:hover').css({"background-color": "#D6BA8A", "border-color": "#D6BA8A"});
						return;
					}
			},
			error: function(data) {
				console.log(data);
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
		console.log(NowUser+" , "+starNum);
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
					console.log(data);
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
									console.log(data);
								}
							});
					}
			},
			error: function(data) {
				console.log(data);
			}
		});
	   
	   }
	});
	
});
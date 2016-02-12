function eventdetail(event_id){
	alert("1");
	$.ajax({
		url:"eventDetail.do",
		data: "event_id="+event_id,
		dataType: "json",
		type: "GET",
		success: function(data){
			console.log(data);
			alert("성공"+data);
			$(".eventpopup .e_title").html(data.title);
			$(".eventpopup .event_id").html(data.event_id);
			//$(".eventpopup .start&end")html("기간: "+data.e_start+"~"+data.e_end);
			//$(".eventpopup .e_img img")attr('src', './resources/img/event/'+data.img);
			
		},//sucess end
		error: function(data){
			alert("실패"+data);
			console.log(data);
		}
	
	});//eventdetail end
	
	$.magnificPopup.open({
		  items: {
		      src: '.eventpopup',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
}


/*
function detail(event_id) {
	var Ca = /\+/g;
	NowUser = id;
	$.ajax({
		url: "eventDetail.do",
		data: "event_id=" +event_id,
		dataType: "json",
		type: "GET",
		success: function(data) { 
				//console.log(decode(data.NAME_K) +decode(data.NAME_E));
				//리셋 ↓
				//
				$(".detailpopup .d_hidden").html('<div class="d_movieNum_'+data.event_id+'">')
						
				$(".detailpopup .d_POSTER").html('<img src="./resources/img/event/'+data.poster+'">');
				$(".detailpopup .d_NAME_K").html(data.title);
				$(".detailpopup .info_wrap li").eq(0).html('<strong>개봉일</strong> : '+data.e_start);
				$(".detailpopup .e_middle img").attr('src', './resources/img/event/'+data.img+'">');
				
		},
		error: function(data) {
			console.log(data);
		}
	});
	
	
	$.magnificPopup.open({
		  items: {
		      src: '.detailpopup',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
	
}*/
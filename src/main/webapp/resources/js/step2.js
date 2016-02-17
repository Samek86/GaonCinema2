function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}



function step2popup(USER_ID, MOVIE_ID, THEATER_ID, CNAME, LNAME, TNAME, SEATSTYLE, REVDATE,MSTARTHOUR) {
	//                hb,       1,       1,         서울, 신촌,  1관,    1,       2017-02-17    9:00
	
	
	$(".step2_right .s2_loc").html(CNAME+"&nbsp;"+LNAME+"&nbsp;"+TNAME);
	$(".step2_right .s2_date").html(REVDATE+"&nbsp;"+MSTARTHOUR);
	
	$.ajax({
		url: "movieDetail.do",
		data: "MOVIE_ID=" +MOVIE_ID,
		dataType: "json",
		type: "GET",
		success: function(data) { 
			$(".step2_right .s2_poster").attr("src", "./resources/img/movie/"+decode(data.POSTER));
			$(".step2_right .s2_AGE").html('<img src="./resources/img/movie/movie'+decode(data.AGE)+'.png">');
			$(".step2_right .s2_NAME_K").html(decode(data.NAME_K));
			$(".step2_right .s2_NAME_E").html(decode(data.NAME_E));
		},
		error: function(data) {
			//console.log(data);
		}
	});
	
	
	//ajax로 뒤져서 행열 가져오기
	
	//var rev1 = revstring.charCodeAt(1);
	//var a = String.fromCharCode(65);
	
	var col = 10;
	var row = 9;
	var revstring = "/A01/A02/A03/";
	var seat_html = "";
	var ABC = 64; 
	for(var i=1; i<=col; i++){
		seat_html = seat_html+'<span class="seatline">'+String.fromCharCode(ABC+i)+'</span>';
			for(var j=1; j<=row; j++){
			seat_html = seat_html+'<span class="seat seat'+String.fromCharCode(ABC+i)+j+'">'+j+'</span>';
			}
		seat_html = seat_html + '<br>';
	};
		
	$(".step2 .seat-all").html(seat_html);
	
	$.magnificPopup.open({
		  items: {
		      src: '.step2',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
} 



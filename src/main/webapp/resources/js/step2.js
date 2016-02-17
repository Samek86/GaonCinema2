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
	
	var row = 9; 	//DB에서 받아서
	var col = 11; 	//DB에서 받아서
	var revstring = "/A1/A2/A3/"; //DB에서 받아서
	
	var seat_html = "";
	var ABC = 64; 
	for(var i=1; i<=row; i++){
		seat_html = seat_html+'<span class="seatline">'+String.fromCharCode(ABC+i)+'</span>';
			for(var j=1; j<=col; j++){
			seat_html = seat_html+'<span class="seat seat'+String.fromCharCode(ABC+i)+j+'">'+j+'</span>';
			}
		seat_html = seat_html + '<br>';
	};
		
	$(".step2 .seat-all").html(seat_html);
	//$(".step2 .seatA1").css({"background-color": "#bbb", "cursor" : "default"});
	$(".step2 .seatA1").css({'background-color': '#ddd'});
	
	$.magnificPopup.open({
		  items: {
		      src: '.step2',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
}; //step2popup end 


$(document).ready(function(){
		$(".seat-setting .radio2").click(function(){
			//var a = $(':radio[name="radio"]:checked').val();
			$(".seat-all span[class*='seat']").mouseover(function(){
				$(this).css({'background-color': '#017467'});
				$(this).next().css({'background-color': '#017467'});
			});
			$(".seat-all span[class*='seat']").mouseout(function(){
				$(this).css({'background-color': '#555'});
				$(this).next().css({'background-color': '#555'});
			});
		});
		
		
		$(".seat-setting .radio3").click(function(){
			//var a = $(':radio[name="radio"]:checked').val();
			$(".seat").mouseover(function(){
				$(this).css({'background-color': '#017467'});
				$(this).next().css({'background-color': '#017467'});
				$(this).next().next().css({'background-color': '#017467'});
			});
			$(".seat").mouseout(function(){
				$(this).css({'background-color': '#555'});
				$(this).next().css({'background-color': '#555'});
				$(this).next().next().css({'background-color': '#555'});
			});
		});
		$(".seat-setting .radio4").click(function(){
			//var a = $(':radio[name="radio"]:checked').val();
			$(".seat").mouseover(function(){
				$(this).css({'background-color': '#017467'});
				$(this).next().css({'background-color': '#017467'});
				$(this).next().next().css({'background-color': '#017467'});
				$(this).next().next().next().css({'background-color': '#017467'});
			});
			$(".seat").mouseout(function(){
				$(this).css({'background-color': '#555'});
				$(this).next().css({'background-color': '#555'});
				$(this).next().next().css({'background-color': '#555'});
				$(this).next().next().next().css({'background-color': '#555'});
			});
		});
	});


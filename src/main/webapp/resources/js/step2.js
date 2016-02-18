
var inwon=0; //선택된 총인원
var seatnum = 0; //라디오체크의 숫자
var checknum = 0; // 선택된 자리의 숫자
var remain = 0; // 남은 선택권

function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}

$(document).ready(function(){ 
	$(".step2 select[name=adult]").change(function() {
		removeall();
		inwon = parseInt($(".step2 select[name=adult]").val())+parseInt($(".step2 select[name=children]").val());
		if(inwon>8){
			$(".step2 select[name=adult]").val(0);
			inwon = parseInt($(".step2 select[name=adult]").val())+parseInt($(".step2 select[name=children]").val());
			alert("최대인원은 8명까지 입니다.");
			return;
		}
		costresult();
		inwonresult();
		remaincheck();
	});
	
	$(".step2 select[name=children]").change(function() {
		removeall();
		inwon = parseInt($(".step2 select[name=adult]").val())+parseInt($(".step2 select[name=children]").val());
		if(inwon>8){
			$(".step2 select[name=children]").val(0);
			inwon = parseInt($(".step2 select[name=adult]").val())+parseInt($(".step2 select[name=children]").val());
			alert("최대인원은 8명까지 입니다.");
			return;
		}
		costresult();
		inwonresult();
		remaincheck();
	});
});

function removeall(){
	$("[class^='seat'][ckeck='ok']").removeClass("select");
	for (var int = 0; int < 8; int++) {
		$("[class^='seat'][ckeck='ok']").attr("rev", "");
		$("[class^='seat'][ckeck='ok']").attr("ckeck", "");
	}
	checknum = 0;
	checkremoveall();
}

function remaincheck() {
	remain = inwon-checknum;
	seatnum = parseInt($('.seat-setting input[name="radio"]:checked').val());
	if(remain>0){
		for (var d = 1; d <= 4; d++) {
			$('.seat-setting input[class="radio'+d+'"]').prop("disabled", false);
		};
		if(remain<=4){
			$('.seat-setting input[class="radio'+remain+'"]').prop("checked", true);
			for (var d2 = remain+1; d2 <= 4; d2++) {
				$('.seat-setting input[class="radio'+d2+'"]').prop("disabled", true);
			};
			$('.seat-setting input[class="radio'+remain+'"]').prop("checked", true);
			console.log(remain);
		}else if(remain==5||remain==6){
			$('.seat-setting input[class="radio3"]').prop("checked",true);
			console.log(remain);
		}else if(remain==7||remain==8){
			$('.seat-setting input[class="radio4"]').prop("checked",true);
			console.log(remain);
		}
	}else{
		for (var c = 1; c <= 4; c++) {
			$('.seat-setting input[class="radio'+c+'"]').prop("disabled", true);
		}
	}
}// remaincheck end


function checkadd(seat){
	$(".s2_selected").html($(".s2_selected").html()+'<div class="s2_seat">'+seat+'</div>');
}

function checkremove(seat){
	var remaintext = $(".s2_selected").html();
	remaintext.replace('<div class="s2_seat">'+seat+'</div>', "");
}

function checkremoveall(){
	$(".s2_selected").html("");
}

function costresult(){
	$(".s2_cost").text(parseInt($(".step2 select[name=adult]").val())*9000+parseInt($(".step2 select[name=children]").val())*7000+"원");
}

function inwonresult(){
	if(parseInt($(".step2 select[name=adult]").val())>0&&parseInt($(".step2 select[name=children]").val())==0){ //TODO 나중에 축소시키기
		$(".s2_people").text("일반 " + $(".step2 select[name=adult]").val()+"명");
	}
	if(parseInt($(".step2 select[name=adult]").val())==0&&parseInt($(".step2 select[name=children]").val())>0){
		$(".s2_people").text("청소년 " + $(".step2 select[name=children]").val()+"명");
	}
	if(parseInt($(".step2 select[name=adult]").val())>0&&parseInt($(".step2 select[name=children]").val())>0){
		$(".s2_people").text("일반 " + $(".step2 select[name=adult]").val()+"명 " +"청소년 " + $(".step2 select[name=children]").val()+"명");
	}
}

/*<div class="s2_selected">
<div class="s2_seat">A2</div>*/

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
	
	
	//var rev1 = revstring.charCodeAt(1);
	//var a = String.fromCharCode(65);
	
	var col = 9; 	//DB에서 받아서 세로
	var row = 11; 	//DB에서 받아서 가로
	var revstring = "A1/A2/A3/C7/C11/C12/F4/F5/F6/"; //DB에서 받아서
	var revnum = revstring.split("/").length-2;
	
	var seat_html = "";
	var ABC = 64; 
	for(var i=1; i<=col; i++){
		seat_html += '<span class="line">'+String.fromCharCode(ABC+i)+'</span>';
			for(var j=1; j<=row; j++){
			seat_html +='<span class="seat'+String.fromCharCode(ABC+i)+j+'">'+j+'</span>';
			}
		seat_html += '<br>';
	};
		
	$(".step2 .seat-all").html(seat_html); //좌석출력
	
	seat_html.substring(10);
	var seatName = revstring.split("/");
	for (var si = 0; si < seatName.length; si++) {
		$(".step2 .seat"+seatName[si]).addClass("selected");
		$(".step2 .seat"+seatName[si]).attr("rev", "ok");
	};
	
	$.magnificPopup.open({
		  items: {
		      src: '.step2',
		      type: 'inline',
		  },
		 closeBtnInside: true
	});
	
	
	/* 좌석 마우스오버시 클래스 추가 */
$(document).ready(function(){ 
	/*$(".seat-setting [class^=radio]").click(function(){
		seatnum = parseInt($(':radio[name="radio"]:checked').val());
		console.log(seatnum);*/
		$(".seat-all span[class*='seat']").mouseover(function(){
			seatnum = parseInt($(':radio[name="radio"]:checked').val());
			remain = inwon-checknum;
			if($(this).attr("rev")=="ok"||remain==0){
				return;
			}else{
				var seatcol =  $(this).attr("class").substring(4,5);
				for (var i = 0; i < seatnum; i++) {
					var seatrownum = parseInt($(this).attr("class").substring(5),10);
					if($(".seat"+seatcol+(seatrownum+i)).attr("rev")!="ok"){
						
					}
				
				for (var i = 0; i < seatnum; i++) {//selet클래스 추가
					if($(this).attr("rev")!="ok"){
						var seatrownum = parseInt($(this).attr("class").substring(5),10);
						
						if(seatrownum+seatnum-1>row){
							if($(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("rev")!="ok"){
								$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).addClass("select");
							}else{return;}
						}else {
							if($(".seat"+seatcol+(seatrownum+i)).attr("rev")!="ok"){
								$(".seat"+seatcol+(seatrownum+i)).addClass("select");
							}else{return;}
						} 
					}
				}//selet클래스 추가 end
			}
			}
			
		});
		$(".seat-all span[class*='seat']").mouseout(function(){
			if($(this).attr("class")=="selected"){return;}else{
				var seatcol =  $(this).attr("class").substring(4,5);
				remain = inwon-checknum;
				for (var i = 0; i <= seatnum; i++) {
					if($(this).attr("rev")!="ok"){
						var seatrownum = parseInt($(this).attr("class").substring(5),10);
						if(seatrownum+seatnum-1>row){
							if($(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("rev")!="ok"){
								$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).removeClass("select");
							}else{return;}
						}else {
							if($(".seat"+seatcol+(seatrownum+i)).attr("rev")!="ok"){
								$(".seat"+seatcol+(seatrownum+i)).removeClass("select");
							}else{return;}
						}
					}
				}
			}
			
		});
	});

	
	/* 좌석 마우스클릭시 value 추가 */
	$(".seat-all span[class*='seat']").click(function(){
		
	if(remain>0){
		
		if($(this).attr("ckeck")=="ok"){
			$(this).attr("rev", "");
			--checknum;
			checkremove($(this).attr("class").substring(4));
			remaincheck();
			return;
		}else{
			var seatcol =  $(this).attr("class").substring(4,5);
			for (var i = 0; i < seatnum; i++) {
				if($(this).attr("rev")!="ok"){
					var seatrownum = parseInt($(this).attr("class").substring(5),10);
					if(seatrownum+seatnum-1>row){
						if($(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("rev")!="ok"){
							$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("ckeck", "ok");
						}else{return;}
					}else {
						if($(".seat"+seatcol+(seatrownum+i)).attr("rev")!="ok"){
							$(".seat"+seatcol+(seatrownum+i)).attr("ckeck", "ok");
						}else{return;}
					} 
				}
			}
			
			for (var i = 0; i < seatnum; i++) {
					var seatrownum = parseInt($(this).attr("class").substring(5),10);
					if(seatrownum+seatnum-1>row){
						if($(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("ckeck")=="ok"){
							//console.log(seatrownum+i-(seatrownum+seatnum-1-row));
							$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).addClass("select");
							$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("rev", "ok");
							++checknum;
							checkadd(seatcol+(seatrownum+i-(seatrownum+seatnum-1-row)));
						}else{return;}
					}else {
						if($(".seat"+seatcol+(seatrownum+i)).attr("ckeck")=="ok"){
							//console.log(seatcol+(seatrownum+i));
							$(".seat"+seatcol+(seatrownum+i)).addClass("select");
							$(".seat"+seatcol+(seatrownum+i)).attr("rev", "ok");
							++checknum;
							checkadd(seatcol+(seatrownum+i));
						}else{return;}
					} 
			}
			remaincheck();
		}
	}else if($(this).attr("ckeck")=="ok"){
		$(this).attr("rev", "");
		--checknum;
		remaincheck();
	}else if(inwon!=0){alert("모든인원만큼 체크하셨습니다")
	}else{alert("인원부터 선택해주세요")}
	});
	
	$(".seat-all span[class*='seat']").click(function(){
		if($(this).attr("class")=="selected"){return;}else{
			var seatcol =  $(this).attr("class").substring(4,5);
			for (var i = 0; i <= seatnum; i++) {
				if($(this).attr("rev")!="ok"){
					var seatrownum = parseInt($(this).attr("class").substring(5),10);
					if(seatrownum+seatnum-1>row){
						if($(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).attr("rev")!="ok"){
							//$(".seat"+seatcol+(seatrownum+i-(seatrownum+seatnum-1-row))).removeClass("select");
						}else{return;}
					}else {
						if($(".seat"+seatcol+(seatrownum+i)).attr("rev")!="ok"){
							//$(".seat"+seatcol+(seatrownum+i)).removeClass("select");
						}else{return;}
					}
				}
			}
		}
	/*});*/
	
	
});


 

/*$(document).ready(function(){ 
	$(".seat-setting [class^=radio]").click(function(){
		seatnum = parseInt($(':radio[name="radio"]:checked').val());
		console.log(seatnum);
		
	});
});
	*/
}; //step2popup end 



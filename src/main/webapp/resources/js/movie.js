$(document).ready(function(){ 
    $('.nowmovie').click(function(){
            $('.nextmoviepage').hide();     
            $('.nowmoviepage').show();
            $('.nowmovie').css({"background-color" : "#017467", "color" : "#fff"});
            $('.nextmovie').css({"background-color" : "transparent", "color" : "#017467"});
    });
    
    $('.nextmovie').click(function(){
            $('.nowmoviepage').hide();     
            $('.nextmoviepage').show();
            $('.nextmovie').css({"background-color" : "#017467", "color" : "#fff"});
            $('.nowmovie').css({"background-color" : "transparent", "color" : "#017467"});
    });
});

function decode(data){
	var Ca = /\+/g;
	var result = decodeURIComponent(data).replace(Ca, " ");
	return result;
}

function moviedetail(MOVIE_ID) {
	var Ca = /\+/g;
	
	$.ajax({
		url: "movieDetail.do",
		data: "MOVIE_ID=" +MOVIE_ID,
		dataType: "json",
		type: "GET",
		success: function(data) { 
				console.log(decode(data.NAME_K) +decode(data.NAME_E));
				//$(".detailpopup .d_NAME_K").html(decode(data.NAME_K)+"<br>"+decode(data.NAME_E)+"<br>"+decode(data.NAME_E)+"<br>"+decode(data.NAME_E)+"<br>");
				//$("#loginPW").val("");
				//$("#test2").html("<b>Hello world!</b>");
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
	
}



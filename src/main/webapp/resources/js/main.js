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

$(function(){
	// news();
	// institution();

	$("#one").hover(function(){
		$(".bng1").animate({"margin-left":"-=600px"}, 800);
	},function(){
		$(".bng1").animate({"margin-left":"+=600px"}, 800);
	});
	$("#two").hover(function(){
		$(".bng2").animate({"margin-left":"+=600px"}, 800);
	},function(){
		$(".bng2").animate({"margin-left":"-=600px"}, 800);
	})
    $("#three").hover(function(){
		$(".bng3").animate({"margin-left":"-=300px"}, 800);
	},function(){
		$(".bng3").animate({"margin-left":"+=300px"}, 800);
	})
	$("#four").hover(function(){
		$(".bng4").animate({"margin-left":"+=300px"}, 800);
	},function(){
		$(".bng4").animate({"margin-left":"-=300px"}, 800);
	})
});
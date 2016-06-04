var main=function(){
	$(".modulesToClear").click(function() {
		$(".modulesToClear").removeClass("current");
		$(".mods").hide();

		$(this).addClass("current");
		$(this).children("td").children(".mods").show();
	  });
	$(".modsTableHeader").click(function(){
		$(".modulesToClear").removeClass("current");
		$(".mods").hide();	
	});
}
$(document).ready(main);
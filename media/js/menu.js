$(function() {
	var fx = {
		"initModal" : function(){
		 if($(".modal-window").length == 0){
		  $("<div>").addClass("averLay").appendTo("body");
			return $('<div>').addClass("modal-window").appendTo("body"); 
		 }else{ 
		  return $(".modal-window") 
		 } 
		} 
	   }

	$("#button-form").click(function(){
		var modal = fx.initModal();
		modal.load("/media/pages/form.html");	
	});

	$("#button-form-about").click(function(){
		var modal = fx.initModal();
		modal.load("/media/pages/form_about.html");
	});
});

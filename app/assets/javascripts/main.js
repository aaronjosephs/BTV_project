//Place main Javascript code here

$(function ()  // Written By the Board Page team
{ 	
	if(window.location.pathname === "/board" ) { //Only execute this code on the /board page
		$(".thumbnail").hover( //only catch items class span4
  		function () {
		    var text = $(this).find("a").attr("description");
		    $(this).popover({ content: text, trigger: "manual"});
		    $(this).popover("show");
        },
	    function () {
	    	$(this).popover("hide");
	    }
    );	
	}
});
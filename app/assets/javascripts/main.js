//Place main Javascript code here
$(function ()  // Written By the Board Page team
{ 	
	if(window.location.pathname === "/board" ) { //Only execute this code on the /board page
		var size = $("li.span4").size();  
		var start = 0;
		var end = 3;
		var that = $("li.span4");
		while(end < size+3){  //Wraps every third thumbnail in a ul
			that.slice(start, end).wrapAll('<ul class="thumbnails" />');
			start = end;
			end +=3;
		}

		$(".thumbnail").hover( //only catch items class span4
  		function () {
		    var text = $(this).find("a").attr("description");
		    $(this).popover({ content: text, trigger: "manual", placement: "top"});
		    $(this).popover("show");
        },
	    function () {
	    	$(this).popover("hide");
	    }
    );	
	}
});
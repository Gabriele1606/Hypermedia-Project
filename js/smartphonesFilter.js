/*
This script is used in multiple group pages with filter functionality
*/

function getFilterOptions(){
	var opts = [];
	$checkboxes.each(function(){
		if(this.checked){
			opts.push(this.name);
		}
	});

	return opts;
}

function update(opts){
	$.ajax({
		method: "POST",
		crossDomain: true,
		url: "php/smartphonesFilter.php",
		data: {filterOpts: opts},
		success: function(response){
			var intro=JSON.parse(response);
			var content='';
			for(var i=0;i<intro.length;i++){
				content+=intro[i].intro;
			}

			$(".products").html(content);
		}
	});
}
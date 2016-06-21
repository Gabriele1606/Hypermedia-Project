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

function update(tabella,categoria,opts){
	$.ajax({
		method: "POST",
		crossDomain: true,
		url: "php/filter.php",
		data: {filterOpts: opts, tabella:tabella,categoria: categoria},
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

function loadCategoryName(categoria) {
	$("#information").attr('categoryName',categoria);
	/*document.getElementById('information').setAttribute('categoryName',categoria);*/
}

function loadTableName(tabella) {
	$("#information").attr('tableName',tabella);
	/*document.getElementById('information').setAttribute('tableName',tabella);*/
}
function fillTopicDynamicButtons(previousSection,categoria,id) {
    var idValue = parseInt(id);
    var next=idValue+1;
    var previous=idValue-1;
    $("#backToMultipleGroup").attr("href",'#'+previousSection+'&'+categoria);
    $("#backToMultipleGroup").html("&lt Back to "+categoria);
    $("#next").html("Next");
    $("#previous").html("Previous");
    if(categoria=='plans') {
        $("#next").attr("href",'#smartlifeInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#smartlifeInfo'+'&'+categoria+'&'+previous);
    }
    if(categoria=='smartphones' || categoria=='tablets') {
        $("#next").attr("href",'#deviceInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#deviceInfo'+'&'+categoria+'&'+previous);
    }
    if(categoria=='assistenzaTecnica') {
        $("#next").attr("href",'#assistanceServicesInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#assistanceServicesInfo'+'&'+categoria+'&'+previous);
    }
}

function fillMultipleGroupDynamicButtons(previousSection,categoria) {
	var backToCategoryButton = document.getElementById('backToCategory');
    var beginTourButton = document.getElementById('beginTour');
    backToCategoryButton.setAttribute('href','#'+previousSection);
    $("#backToCategory").html("Back to "+previousSection);
    if (categoria=='plans') {
        beginTourButton.setAttribute('href','#smartlifeInfo&plans&6');
    }
    if (categoria=='entertainment') {
        beginTourButton.setAttribute('href','#smartlifeInfo&plans&6');
    }
    if (categoria=='smartphones') {
        beginTourButton.setAttribute('href','#deviceInfo&smartphones&0');
    }
    if (categoria=='tablets') {
        beginTourButton.setAttribute('href','#deviceInfo&tablets&10');
    }
      if (categoria=='assistenzaTecnica') {
        beginTourButton.setAttribute('href','#assistanceServicesInfo&assistenzaTecnica&0');
    }
}

function loadBreadCrumb(categoria) {
    if(categoria=='plans') {
        $("#breadcrumbName").html('<a href="#smartlifeservices&plans">Plans</a>');
    } else if(categoria=='entertainment') {
        $("#breadcrumbName").html("TV & Entertainment");
    }
    else if(categoria=='smartphones'){
        $("#breadcrumbName").html("Smartphones");
    }
    else if(categoria=='tablets'){
        $("#breadcrumbName").html("Tablets");
    }
    else if(categoria=='promotions') {
        $("#breadcrumbName").html("Smart Life Promotions");   
    }
    else if(categoria=='assistenzaTecnica') {
        $("#breadcrumbName").html('<a href="#assistanceServices&assistenzaTecnica">Assistenza Tecnica</a>');   
    }
    else if(categoria=='lineManagement') {
        $("#breadcrumbName").html('<a href="#assistanceServices&lineManagement">Line Management</a>');   
    }
}

function loadStaticPageBreadCrumb(value){
    $("#staticPageBreadcrumb").html(value);
}
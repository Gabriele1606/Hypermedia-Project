function fillTopicDynamicButtons(previousSection,categoria,id) {
    var idValue = parseInt(id);
    var next;
    var previous;
    if(categoria=='smartphones' || categoria=='tablets'){
        if(idValue==1){
            next=0;
            previous=0;
        }else if(idValue==0){
            next=1;
            previous=1;
        }

    }else{
    next=idValue+1;
    previous=idValue-1;
    }
    $("#backToMultipleGroup").attr("href",'#'+previousSection+'&'+categoria);
    $("#next").html("Next");
    $("#previous").html("Previous");
    if(categoria=='plans') {
        $("#next").attr("href",'#smartlifeInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#smartlifeInfo'+'&'+categoria+'&'+previous);
        $("#combinedDevices").attr("href","#transitionSmartLifeToDevice"+'&'+categoria+'&'+id);
        $("#backToMultipleGroup").html("&lt Back to Plans");
    }
    if(categoria=='smartphones' || categoria=='tablets') {
        $("#next").attr("href",'#deviceInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#deviceInfo'+'&'+categoria+'&'+previous);

        $("#backToMultipleGroup").html("&lt Back to "+categoria);

        $("#combinedSmartLife").attr("href","#transitionDeviceToSmartLife"+'&'+categoria+'&'+id);
        $("#combinedAssistantServices").attr("href","#transitionDeviceToAssistantServices"+'&'+categoria+'&'+id); 

    }
    if(categoria=='assistenzaTecnica' || categoria=='lineManagement') {
        $("#next").attr("href",'#assistanceServicesInfo'+'&'+categoria+'&'+next);
        $("#previous").attr("href",'#assistanceServicesInfo'+'&'+categoria+'&'+previous);
        $("#combinedDevices").attr("href","#transitionAssistancetoDevices"+'&'+categoria+'&'+id);
        $("#backToMultipleGroup").html("&lt Back to Assistance Services");
    }
}

function fillMultipleGroupDynamicButtons(previousSection,categoria) {
	var backToCategoryButton = document.getElementById('backToCategory');
    var beginTourButton = document.getElementById('beginTour');
    backToCategoryButton.setAttribute('href','#'+previousSection);
    if (categoria=='plans') {
        beginTourButton.setAttribute('href','#smartlifeInfo&plans&6');
        $("#backToCategory").html("Back to All Smart Life Services");
    }
    if (categoria=='entertainment') {
        beginTourButton.setAttribute('href','#smartlifeInfo&plans&6');
        $("#backToCategory").html("Back to All Smart Life Services");
    }
    if (categoria=='smartphones') {
        beginTourButton.setAttribute('href','#deviceInfo&smartphones&0');
        $("#backToCategory").html("Back to All Devices");
    }
    if (categoria=='tablets') {
        beginTourButton.setAttribute('href','#deviceInfo&tablets&10');
        $("#backToCategory").html("Back to All Devices");
    }
      if (categoria=='assistenzaTecnica') {
        beginTourButton.setAttribute('href','#assistanceServicesInfo&assistenzaTecnica&0');
        $("#backToCategory").html("Back to All Assistance Services");
    }    
      if (categoria=='lineManagement') {
        beginTourButton.setAttribute('href','#assistanceServicesInfo&lineManagement&6');
        $("#backToCategory").html("Back to All Assistance Services");
    }
}

function loadBreadCrumb(categoria) {
    if(categoria=='plans') {
        $("#breadcrumbName").html('<a href="#smartlifeservices&plans">Plans</a>');
    } else if(categoria=='entertainment') {
        $("#breadcrumbName").html("TV & Entertainment");
    }
    else if(categoria=='smartphones'){
        $("#breadcrumbName").html('<a href="#devices&smartphones">Smartphones</a>');
    }
    else if(categoria=='tablets'){
        $("#breadcrumbName").html('<a href="#devices&tablets">Tablets</a>');
    }
    else if(categoria=='promotions') {
        $("#breadcrumbName").html("Promotions");   
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
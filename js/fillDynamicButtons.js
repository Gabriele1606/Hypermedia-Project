function fillTopicDynamicButtons(previousSection,categoria) {
    var previous = document.getElementById('previous');
    var next = document.getElementById('next');
    var backToMultipleGroupButton = document.getElementById('backToMultipleGroup');
    backToMultipleGroup.setAttribute('href','#'+previousSection+'&'+categoria);
    $("#backToMultipleGroup").html("&lt Back to "+categoria);
}

function fillMultipleGroupDynamicButtons(previousSection,categoria) {
	var backToCategoryButton = document.getElementById('backToCategory');
    var beginTourButton = document.getElementById('beginTour');
    backToCategoryButton.setAttribute('href','#'+previousSection);
    $("#backToCategory").html("Back to "+previousSection);
    if (categoria=='plans') {
        beginTourButton.setAttribute('href','#planPage&0');
    }
    if (categoria=='entertainment') {
        beginTourButton.setAttribute('href','#planPage&0');
    }
    if (categoria=='smartphones') {
        beginTourButton.setAttribute('href','#deviceInfo&smartphones&0');
    }
    if (categoria=='tablets') {
        beginTourButton.setAttribute('href','#deviceInfo&tablets&10');
    }
}

function loadBreadCrumb(categoria) {
    var breadCrumb = document.getElementById('breadcrumbName');
    if(categoria=='plans') {
        $("#breadcrumbName").html("Plans");
    } else if(categoria=='entertainment') {
        $("#breadcrumbName").html("TV & Entertainment");
    }
    else if(categoria=='smartphones'){
        $("#breadcrumbName").html("Smartphones");
    }
    else if(categoria=='tablets'){
        $("#breadcrumbName").html("Devices");
    }
}

function loadDynamicContactBreadCrumb(value){
    var breadCrumb=document.getElementById('dynamicContactBreadcrumb');
    $("#dynamicContactBreadcrumb").html(value);

}

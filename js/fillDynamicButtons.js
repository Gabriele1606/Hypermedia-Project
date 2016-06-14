function fillTopicDynamicButtons(previousSection,categoria) {
    var previous = document.getElementById('previous');
    var next = document.getElementById('next');
    var backToMultipleGroupButton = document.getElementById('backToMultipleGroup');
    backToMultipleGroup.setAttribute('href','#'+previousSection+'&'+categoria);
    $("#backToMultipleGroup").html("&lt Back to "+categoria);
}

function fillMultipleGroupDynamicButtons(previousSection) {
	var backToCategoryButton = document.getElementById('backToCategory');
    var beginTourButton = document.getElementById('beginTour');
    backToCategoryButton.setAttribute('href','#'+previousSection);
    $("#backToCategory").html("Back to "+previousSection);
    beginTourButton.setAttribute('href','#planPage&0'); //planPage deve cambiare in base alla basic page
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

}

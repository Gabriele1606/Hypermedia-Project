function fillTopicDynamicButtons() {
    var previous = document.getElementById('previous');
    var next = document.getElementById('next');
    var backToMultipleGroupButton = document.getElementById('backToMultipleGroup');
}

function fillMultipleGroupDynamicButtons(previousSection) {
	var backToCategoryButton = document.getElementById('backToCategory');
    var beginTourButton = document.getElementById('beginTour');
    backToCategoryButton.setAttribute('href','#'+previousSection);
    $("#backToCategory").html("Back to "+previousSection);
    beginTourButton.setAttribute('href','#planPage&0'); //planPage deve cambiare in base alla basic page
}

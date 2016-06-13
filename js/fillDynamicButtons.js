function fillDynamicButtons(basicPage) {
	var backButton = document.getElementById('back');
    var beginTourButton = document.getElementById('beginTour');
    var previous = document.getElementById('previous');
    var next = document.getElementById('next');
    backButton.setAttribute('href','#'+basicPage);
    beginTourButton.setAttribute('href','#planPage&0'); //planPage deve cambiare in base alla basic page

}

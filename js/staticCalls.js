/*This file contain functions that will load static content inside pages,
withoud ajax/php calls to the DB*/

function getContactMenu() {
	$(".contactMenu").load( "contactMenu.html");
}




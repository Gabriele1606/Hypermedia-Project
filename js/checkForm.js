//check right input form

function validateForm(){

	var name = document.forms["send_problem"]["name"].value;
    if (name == null || name == "") {
        alert("Name must be filled out");
        return false;
    }

    var surname= document.forms["send_problem"]["surname"].value;
    if (surname== null || surname == "") {
        alert("Surname must be filled out");
        return false;
    }

    var mail= document.forms["send_problem"]["mail"].value;
    if (mail== null || mail == "") {
        alert("Mail must be filled out");
        return false;
    }

    var telephone= document.forms["send_problem"]["telephone"].value;
    if (telephone== null || telephone == "") {
        alert("Telephone must be filled out");
        return false;
    }

    var birthday= document.forms["send_problem"]["birthday"].value;
    if (birthday== null || birthday == "") {
        alert("Tirthday must be filled out");
        return false;
    }

    var textArea= document.forms["send_problem"]["textArea"].value;
    if (textArea== null || textArea == "") {
        alert("Text textArea must be filled out");
        return false;
    }
    return true;



}

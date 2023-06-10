function display_option(event){
	var option_id = event.target.id[7];
	var option_id_2;
	if(option_id=="1"){
		option_id_2 = "2";
	}else{
		option_id_2 = "1";
	}
	document.getElementById("option-"+option_id).disabled = true;
	document.getElementById("option-"+option_id_2).disabled = false;
	document.getElementById("option-"+option_id).classList.remove("tutorial-option-active");
	document.getElementById("option-"+option_id_2).classList.add("tutorial-option-active");
	document.getElementById("main-"+option_id).style.display = "block";
	document.getElementById("main-"+option_id_2).style.display = "none";
	document.getElementById("option-"+option_id).style.background = "#ffb703";
	document.getElementById("option-"+option_id_2).style.background = "#023047";
}


var btn  = document.getElementsByClassName('tutorial-option');
Array.from(btn).forEach(function(element){
	element.addEventListener('click',display_option);
});
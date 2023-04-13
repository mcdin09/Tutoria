const letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

/*document.querySelectorAll('.social-link').onmouseover = event =>{
	let iterations = 0;
	const interval = setInterval(()=>{
		event.target.innerText = event.target.innerText.split("").map((letter,index)=>{
			if (index < iterations){
				return event.target.dataset.value[index];
			}

			return letters[Math.floor(Math.random()*26)];
		}).join("");
		if(iterations >= event.target.dataset.value.length){
			clearInterval(interval);
		}

		iterations += 1/3;
	},30);
}*/

function aft_hov_icon(event){
	let iterations = 0;
	var icon_id = "social-icon-"+event.target.id[12];
	var d_icon = document.getElementById(icon_id);
	d_icon.style.color = "white";
	const interval = setInterval(()=>{
		event.target.innerText = event.target.innerText.split("").map((letter,index)=>{
			if (index < iterations){
				return event.target.dataset.value[index];
			}
			return letters[Math.floor(Math.random()*26)];
		}).join("");
		if(iterations >= event.target.dataset.value.length){
			clearInterval(interval);
		}
		iterations += 1/3;		
	},30);	
}

function hov_icon(event){
	var icon_id = "social-icon-"+event.target.id[12];
	var d_icon = document.getElementById(icon_id);
	d_icon.style.color = "grey";
}


var sl = document.getElementsByClassName('social-link');
Array.from(sl).forEach(function(element){
	element.addEventListener('mouseover',aft_hov_icon);
});

Array.from(sl).forEach(function(element){
	element.addEventListener('mouseout',hov_icon);
});


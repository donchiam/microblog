document.querySelector(".login").addEventListener("click", function() {
	document.querySelector("#modal").style.display = "block";
})

document.querySelector(".signup").addEventListener("click", function() {
	document.querySelector("#modal").style.display = "block";
})

document.querySelector("#close").addEventListener("click", function (){
	document.querySelector("#modal").style.display = "none";
})
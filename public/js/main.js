document.querySelector(".login").addEventListener("click", function() {
	document.querySelector("#loginModal").style.display = "block";
})

document.querySelector(".signup").addEventListener("click", function() {
	document.querySelector("#signupModal").style.display = "block";
})

document.querySelector("#close1").addEventListener("click", function (){
	document.querySelector("#loginModal").style.display = "none";
})

document.querySelector("#close2").addEventListener("click", function (){
	document.querySelector("#signupModal").style.display = "none";
})

document.querySelector("#closeFlash").addEventListener("click", function (){
	document.querySelector("#flash").style.display = "none";
})
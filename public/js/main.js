document.addEventListener("DOMContentLoaded", function () {
	document.querySelector(".login").addEventListener("click", function() {
	document.querySelector("#loginModal").style.display = "block";
})
})

document.addEventListener("DOMContentLoaded", function () {
document.querySelector(".signup").addEventListener("click", function() {
	document.querySelector("#signupModal").style.display = "block";
})
})

document.addEventListener("DOMContentLoaded", function () {
document.querySelector("#close1").addEventListener("click", function (){
	document.querySelector("#loginModal").style.display = "none";
})
})

document.addEventListener("DOMContentLoaded", function () {
document.querySelector("#close2").addEventListener("click", function (){
	document.querySelector("#signupModal").style.display = "none";
})
})

document.addEventListener("DOMContentLoaded", function () {
document.querySelector("#closeFlash").addEventListener("click", function (){
	document.querySelector("#flash").style.display = "none";
})
})
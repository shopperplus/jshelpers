$(document).ready(function(){
	var s = document.getElementById('script_data')
	if(s){
		window.script_data = JSON.parse(s.innerHTML)
	} else {
		window.script_data = {}
	}
})
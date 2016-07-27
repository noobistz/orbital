// select courses
function openNav1() {
	document.getElementById("faculties").style.height = "100%";
}
function closeNav1() {
	document.getElementById("faculties").style.height = "0%";
}
function openNav2() {
	document.getElementById("fass").style.height = "100%";
}
function closeNav2() {
	document.getElementById("fass").style.height = "0%";
}
function openNav3() {
	document.getElementById("ba").style.height = "100%";
}
function closeNav3() {
	document.getElementById("ba").style.height = "0%";
}
function openNav4() {
	document.getElementById("soc").style.height = "100%";
}
function closeNav4() {
	document.getElementById("soc").style.height = "0%";
}
function openNav5() {
	document.getElementById("dentistry").style.height = "100%";
}
function closeNav5() {
	document.getElementById("dentistry").style.height = "0%";
}
function openNav6() {
	document.getElementById("sde").style.height = "100%";
}
function closeNav6() {
	document.getElementById("sde").style.height = "0%";
}
function openNav7() {
	document.getElementById("engineering").style.height = "100%";
}
function closeNav7() {
	document.getElementById("engineering").style.height = "0%";
}
function openNav8() {
	document.getElementById("law").style.height = "100%";
}
function closeNav8() {
	document.getElementById("law").style.height = "0%";
}
function openNav9() {
	document.getElementById("med").style.height = "100%";
}
function closeNav9() {
	document.getElementById("med").style.height = "0%";
}
function openNav10() {
	document.getElementById("nursing").style.height = "100%";
}
function closeNav10() {
	document.getElementById("nursing").style.height = "0%";
}
function openNav11() {
	document.getElementById("music").style.height = "100%";
}
function closeNav11() {
	document.getElementById("music").style.height = "0%";
}
function openNav12() {
	document.getElementById("science").style.height = "100%";
}
function closeNav12() {
	document.getElementById("science").style.height = "0%";
}
function openNav13() {
	document.getElementById("pharmacy").style.height = "100%";
}
function closeNav13() {
	document.getElementById("pharmacy").style.height = "0%";
}

// instructions
function instructions(){
	document.getElementById("instruction").style.height = "100%";
}
function closeInstruction(){
	document.getElementById("instruction").style.height = "0%";
}

// drag and drop stuff
function allowDrop(ev) {
	ev.preventDefault();
}

function drag(ev) {
	ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
	ev.preventDefault();
	var data = ev.dataTransfer.getData("text");
	ev.target.appendChild(document.getElementById(data));
	var sendData="data="+data; // pre-processing for sending AJAX data

	$.post("prereq.php",sendData,function(response){  // AJAX for prereq
		// alert(response);              // uncomment for debugging
		// to make the objects draggable (for prereq)
		var responseArr=response.split(" ");
		for (i=0;i<responseArr.length;i++){
			document.getElementById(responseArr[i]).className="DragObject";
			document.getElementById(responseArr[i]).setAttribute("draggable", "true");
			document.getElementById(responseArr[i]).setAttribute("ondragstart","drag(event)");
		}
	});

	$.post("preclusion.php",sendData,function(response){  // AJAX for preclusion
		// alert(response);              // uncomment for debugging
		// to make the objects blue (for preclusion)
		var responseArr2=response.split(" ");
		for (i=0;i<responseArr2.length;i++){
			document.getElementById(responseArr2[i]).className="preclusionObject";
			document.getElementById(responseArr2[i]).setAttribute("draggable", "false");
		}
	});

	$.post("coreq.php",sendData,function(response){  // AJAX for corequisite
	if (response!=""){
		alert("Reminder: You will need to take "+response+" in the same semester as this module("+data+").")
	}
	});

	$.post("counter.php",sendData,function(response){  // AJAX for counter
		var curr=document.getElementById("counter").innerHTML;
		var sum=parseInt(curr)+parseInt(response);
		document.getElementById("counter").innerHTML=sum;
		if (sum>=160){
			document.getElementById("counter").className="satisfiedCounter"; // change the colour to green once the user plans 160MCs (conventional MCs needed to gradute)
		}

	});
}

// cookies
function save() {
	var cookiesCount = document.cookie.split(';');
	if(cookiesCount.length>1){ // if there was a previous saved state (cookies not empty)
		if (confirm("Confirm save? Your previous saved record will be overwritten.")){
			var cookies = document.cookie.split(";");  // clear the initial cookie first
			for (var i = 0; i < cookies.length; i++) {
				var cookie = cookies[i];
				var pos = cookie.indexOf("=");
				var name = pos > -1 ? cookie.substr(0, pos) : cookie;
				document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT"; // code from http://stackoverflow.com/questions/179355/clearing-all-cookies-with-javascript
			}
			
			for (var i=1;i<=4;i++){ // year
				for (var j=1;j<=2;j++){ // semester
					for (var k=1;k<=6;k++){ // slot
						var code="Y"+i.toString()+"S"+j.toString()+k.toString();
						if(document.getElementById(code).innerHTML!=""){
							document.cookie=code+"="+document.getElementById(code).getElementsByTagName('span')[0].innerHTML+";expires=4*365*24*60*60*"; // expires after 4 years
						}
					}
				}
			}
			alert("Saved!");
			location.reload();
		}
		else{
		}
	}
	else {
		var cookies = document.cookie.split(";");  // clear the initial cookie first
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i];
			var pos = cookie.indexOf("=");
			var name = pos > -1 ? cookie.substr(0, pos) : cookie;
			document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT"; // code from http://stackoverflow.com/questions/179355/clearing-all-cookies-with-javascript
		}
			
		for (var i=1;i<=4;i++){ // year
			for (var j=1;j<=2;j++){ // semester
				for (var k=1;k<=6;k++){ // slot
					var code="Y"+i.toString()+"S"+j.toString()+k.toString();
					if(document.getElementById(code).innerHTML!=""){
						document.cookie=code+"="+document.getElementById(code).getElementsByTagName('span')[0].innerHTML+";expires=4*365*24*60*60*"; // expires after 4 years
					}
				}
			}
		}
		alert("Saved!");
		location.reload();
	}
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length,c.length);
        }
    }
    return "";
}

function checkCookie(){
	var cookies = document.cookie
	if (cookies!=""){
		for (var i=1;i<=4;i++){ // year
			for (var j=1;j<=2;j++){ // semester
				for (var k=1;k<=6;k++){ // slot
					var code="Y"+i.toString()+"S"+j.toString()+k.toString();
					if (getCookie(code)!=""){
						// make the saved elements draggable first
						document.getElementById(getCookie(code)).className="DragObject";
						document.getElementById(getCookie(code)).setAttribute("draggable", "true");
						document.getElementById(getCookie(code)).setAttribute("ondragstart","drag(event)");
						
						// mimic drag & drop event
						document.getElementById(code).appendChild(document.getElementById(getCookie(code)));
						var data=getCookie(code);
						var sendData="data="+data; 

						$.post("prereq.php",sendData,function(response){  
							var responseArr=response.split(" ");
							for (i=0;i<responseArr.length;i++){
								document.getElementById(responseArr[i]).className="DragObject";
								document.getElementById(responseArr[i]).setAttribute("draggable", "true");
								document.getElementById(responseArr[i]).setAttribute("ondragstart","drag(event)");
							}
						});

						$.post("preclusion.php",sendData,function(response){ 
							var responseArr2=response.split(" ");
							for (i=0;i<responseArr2.length;i++){
								document.getElementById(responseArr2[i]).className="preclusionObject";
								document.getElementById(responseArr2[i]).setAttribute("draggable", "false");
							}
						});

						$.post("coreq.php",sendData,function(response){  
						if (response!=""){
							alert("Reminder: You will need to take "+response+" in the same semester as this module("+data+").")
						}
						});

						$.post("counter.php",sendData,function(response){  
							var curr=document.getElementById("counter").innerHTML;
							var sum=parseInt(curr)+parseInt(response);
							document.getElementById("counter").innerHTML=sum;
							if (sum>=160){
								document.getElementById("counter").className="satisfiedCounter";
							}

						});

					}
				}
			}
		}
	}
}

	
function reset(){
	if (confirm("Are you sure? Your entire schedule will be erased.")){
		var cookies = document.cookie.split(";");
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i];
			var pos = cookie.indexOf("=");
			var name = pos > -1 ? cookie.substr(0, pos) : cookie;
			document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT"; // code from http://stackoverflow.com/questions/179355/clearing-all-cookies-with-javascript
			location.reload();
		}
	}
	else{
	}
}

// main
var main=function(){
	$(".modulesToClear").click(function() {
		$(".modulesToClear").removeClass("current");
		$(".mods").hide();

		$(this).addClass("current");
		$(this).children("td").children(".mods").show();
	  });
	$(".modsTableHeader").click(function(){
		$(".modulesToClear").removeClass("current");
		$(".mods").hide();
	});
	$(".overlay a").click(function(){
		loadDoc("test.txt")
		closeNav2();
		closeNav3();
		closeNav4();
		closeNav5();
		closeNav6();
		closeNav7();
		closeNav8();
		closeNav9();
		closeNav10();
		closeNav11();
		closeNav12();
		closeNav13();
		closeNav1();
	});
	checkCookie(); // to check for cookies when the page loads
}
$(document).ready(main);

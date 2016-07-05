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
}
$(document).ready(main);
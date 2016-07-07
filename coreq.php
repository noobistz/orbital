<?php
	session_start();
	$CRMods= $_SESSION['CRMods']; // to get $CRMods
	$input=$_POST["data"]; // course which was added to the table
	$output="";
	
	foreach ($CRMods as $code=>$element){ 
		if ($input==$code){ // if the element has a corequisite, output its corequisite
			$output=$element;
			break;
		}
	}
	
	// No need to update the session array, so that the reminder alert will still show if the user decides to reschedule the mod
	echo $output;
?>
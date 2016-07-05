<?php
	session_start();
	$PRMods= $_SESSION['PRMods']; // to get $PRMods
	$PCMods= $_SESSION['PCMods']; // to get $PCMods
	$input=$_POST["data"]; // course which was added to the table
	$outputArr=array();
	$output="";
	
	foreach ($PCMods as $code=>$element){ // for each element in PCMods, $element is the string representing the preclusions
		if ($code==$input){ // delete the mod from the PCMods array if it has been scheduled
			unset($PCMods[$code]);
		}
		else if (substr_count($element,$input)>0){ // if there is a preclusion
			unset($PCMods[$code]);
			array_push($outputArr,$code);
		}
	}
	for ($i=0;$i<count($outputArr);$i++){ // To delete these modules from $PRMods, if present
		foreach ($PRMods as $code=>$element){ 
			if ($code==$outputArr[$i]){ 
				unset($PRMods[$code]);
			}
		}	
	}
	
	for ($i=0;$i<count($outputArr);$i++){
		if ($i==0){ // first element no need space in front
			$output.=$outputArr[$i];
		}
		else{ // other elements put space in front
			$output.=" ".$outputArr[$i];
		}
	}	
	
	$_SESSION['PRMods'] = $PRMods; // to update the session's $PRMods array 
	$_SESSION['PCMods'] = $PCMods; // to update the session's $PCMods array 
	echo $output;
?>
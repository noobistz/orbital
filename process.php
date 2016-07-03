<?php
	session_start();
	$PRMods= $_SESSION['PRMods']; // to get $allMods
	$input=$_POST["data"]; // course which was added to the table
	$outputArr=array();
	$output="";
	foreach ($PRMods as $code=>$element){ // for each element in PRMods, $element is an inner array
		for ($i=0;$i<count($element);$i++){ 
			if (substr_count($element[$i],$input)>0){ 
				unset($element[$i]);
				break;
			}
		}
		if (count($element)==0){
			unset($PRMods[$code]);
			array_push($outputArr,$code);
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
	
	echo $output;
?>
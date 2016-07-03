<?php
	session_start();
	$PRMods= $_SESSION['PRMods']; // to get $allMods
	$input=$_POST["data"]; // course which was added to the table
	$outputArr=array();
	$output="";
	foreach ($PRMods as $code=>$element){ // for each element in PRMods, $element is an inner array
		for ($i=0;$i<count($element);$i++){ 
			if (substr_count($element[$i],$input)>0){ 
				unset($PRMods[$code][$i]);
				$PRMods[$code]=array_values($PRMods[$code]); // condensing the array for faster subsequent searches
				break; // end the loop faster
			}
		}
		if (count($PRMods[$code])==0){
			unset($PRMods[$code]);
			array_push($outputArr,$code);
		}
	}
	
	for ($j=0;$j<count($outputArr);$j++){
		if ($j==0){ // first element no need space in front
			$output.=$outputArr[$j];
		}
		else{ // other elements put space in front
			$output.=" ".$outputArr[$j];
		}
	}
	
	$_SESSION['PRMods'] = $PRMods; // to update the session's $PRMods array 
	//echo count($PRMods["BT3101"])." ";
	echo $output;
?>
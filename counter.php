<?php
	session_start();
	$cred= $_SESSION['cred']; // to get $cred
	$input=$_POST['data']; // course which was added to the table
	$output=0;
	
	foreach($cred as $code=>$MC){
		if($code==$input){
			$output+=$MC;
			unset($cred[$code]); // condensing the array for faster subsequent searches
			break;
		}
	}
	
	$_SESSION['cred'] = $cred; // to update the session's $cred array 
	echo $output;
?>
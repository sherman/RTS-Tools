<?php
		$stdIn = fopen("php://stdin", "r");

		$header = '<DATE>,<TIME>,<CLOSE>,<VOL>';

		echo $header . "\r\n";

		while (($line = fgets($stdIn, 4096)) !== false) {

			$elts = preg_split("/;/", $line);
            
			echo date("Ymd,His", strtotime($elts[4])) . "," . $elts[2] ."," . $elts[3] . "\r\n";

		}

		fclose($stdIn);

?>

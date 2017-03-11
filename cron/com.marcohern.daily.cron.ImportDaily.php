<?php
//CRON ImportDaily

$db = new mysqli('localhost', 'marcoher_daily','K9Q6mk,BFiwq','marcoher_daily');

if ($db->connect_error) {
	die("Error conecting: (" .$db->connect_errno.") ".$db->connect_error);
}

$r = $db->query('CALL ImportDaily');

if ($r) {
	echo "Success! {$r->num_rows}";
} else {
	die("Error calling procedure: ".$db->error);
}
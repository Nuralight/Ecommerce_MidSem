<?php

function myErrorHandler($errno, $errstr, $errfile, $errline) {
    echo "<b>Custom error:</b> [$errno] $errstr<br>";
    $message= " Error on line $errline in $errfile<br>";
    error_log($message,3,"error_logs.txt");
}

// Set user-defined error handler function
set_error_handler("myErrorHandler");

//$test=2;

// Trigger error
//if ($test>1) {
    //trigger_error("A custom error has been triggered");
//}


?>
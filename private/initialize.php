<?php

define("PRIVATE_DIR", dirname(__FILE__));
define("PROJECT_DIR", dirname(PRIVATE_DIR));
define("PUBLIC_DIR", PROJECT_DIR . '/public');
define("SHARED_DIR", PRIVATE_DIR . '/shared');
define("DATA_DIR", PRIVATE_DIR . '/database');
define("VIEW_DIR", PUBLIC_DIR . '/view');

$public_end = strpos($_SERVER['SCRIPT_NAME'], '/public');
$doc_root = substr($_SERVER['SCRIPT_NAME'], 0, $public_end);
define("WWW_ROOT", $doc_root);

require_once('functions_gen.php');

session_start();
?>
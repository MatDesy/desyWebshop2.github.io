<?php
//INITIALISE LA CONENCTION À LA BD
function connect_DB()
{

    $bdd = new PDO('mysql:host=localhost;dbname=electroniksdeals;charset=utf8', 'root', '');
    $bdd -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $bdd;
}

?>
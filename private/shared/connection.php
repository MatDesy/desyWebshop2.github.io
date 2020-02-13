<?php

///controlleur de la connection d'un usager

require_once('../../private/initialize.php');

include_once(DATA_DIR . "/bd_userconnexion.php");

if(isset($_POST['connect']))
{
    if (userValid($_POST['Coemail'], $_POST['Copassword']) || isAdmin($_POST['Coemail'], $_POST['Copassword']))
    {
        $_SESSION['email'] = $_POST['Coemail'];
        $_SESSION['password'] = $_POST['Copassword'];

        $_SESSION['prenom'] = getUserInfo($_SESSION['email'])['prenom'];

        $expires = time() + 60+60*24*14;
        Setcookie('email', $_SESSION['email'], $expires);

        redirect_to("../../public/index.php");
    }
    else
    {
        session_destroy();
        redirect_to("../../public/index.php?co=true");
    }

}
?>
<?php
///CONTROLLEUR DE LA DÉCONNEXION
require_once('../../private/initialize.php');

session_destroy();

redirect_to("../../public/index.php");
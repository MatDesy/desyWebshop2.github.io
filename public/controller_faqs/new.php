<?php
///Ajoute le message saisis au post
if ($_POST['imessage'] == "")
{
    echo "<script> alert('Vous devez inscrire un message') </script>";
}
else
{
    $idOfPost = $_GET['id'];
    PostMessage($idOfPost, $_SESSION['email'], $_POST['imessage']);
    redirect_to(url_for("view_faqs/show.php?id=".$_GET['id'], "public"));
}
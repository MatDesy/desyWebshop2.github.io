<!-- Update les info de l'Article en selection -->
<?php
    if (isset($_POST['soumettre']))
    {
        updateItem($_POST['id'], $_POST['prix'], $_POST['quantite'], $_POST['vedette'], $_POST['image']);

        redirect_to(url_for("/view_item/show.php?id=".$_GET['id'], "public"));
    }

?>
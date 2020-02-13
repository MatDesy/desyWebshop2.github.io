<!-- enleve le post du site et de la BD -->
<?php
if (isset($_POST['delete'])) {
    deletePost($_GET['id']);
    redirect_to(url_for("/view_faqs/index.php", "public"));
}
    ?>

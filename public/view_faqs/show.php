<!-- index du forum choisi/formulaire d'evoie de message -->
<?php require_once('../../private/initialize.php'); ?>
<?php require_once(DATA_DIR . "/bd_forum.php") ?>
<?php require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php");?>
<?php

if ($_POST['imessage'] != "" && isset($_POST['btnsubmit']))
{
PostMessage($_GET['id'], $_SESSION['email'], $_POST['imessage']);
}
?>

<?php $commentTab = getCommentaire($_GET['id']) ?>
<?php $post = getPostOf($_GET['id']);
?>

<h1 class="forumhdr"><?php echo $post['name'] ?></h1>

<div class="commentaireBox">
    <?php foreach ($commentTab as $commentaire){ ?>
        <div class="commentaire">
            <h2> <?php echo $commentaire['emailuser'] ?> </h2>
            <p> <?php echo $commentaire['message'] ?> </p>
        </div>
    <?php }
    ?>
</div>
<div class="sendActionBox">

    <?php if (isset($_SESSION['email']))
    {
        include_once (SHARED_DIR . "/btnsend.php");
    }
    ?>

    <?php if (isset($_SESSION['email']) && isAdmin($_SESSION['email'], $_SESSION['password'])) { ?>
    <form action="<?php include(PUBLIC_DIR."/controller_faqs/delete.php"); ?>" method="post"><div class="deleteContainer"><input type="submit" name="delete" value="EFFACER POST" id="btndelete"></div></form>
    <?php } ?>
</div>

<?php include(SHARED_DIR . "/footer.php");
?>

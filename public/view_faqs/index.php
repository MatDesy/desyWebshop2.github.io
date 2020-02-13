<!-- index de la page des forums -->
<?php require_once('../../private/initialize.php'); ?>
<?php require_once(DATA_DIR . "/bd_forum.php");
require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php");
?>
    <h1 class="forumhdr">Les forums de discussion</h1>

    <div class="postContainer">
        <?php $tabPost = getPost(); ?>
        <?php foreach ($tabPost as $post) {?>
            <a href="<?php echo "show.php?id=" . $post['id'] ?>">
                <div class="post mleft">
                    <div class="postheader">
                        <div class="postThread mleft">
                            <h2><?php echo $post['name'] ?></h2>
                        </div>
                    </div>
                    <div class="postContent">
                        <div class="mleft">
                            Créé par : <?php echo $post['emailuser'] ?>
                        </div>
                        <div class="mleft">
                            Nombre de commentaire : <?php echo $post['nbCommentaire'] ?>
                        </div>
                    </div>
                </div>
            </a>
        <?php } ?>
    </div>

<?php include(SHARED_DIR . "/footer.php"); ?>
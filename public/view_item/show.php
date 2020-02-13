<!-- index de l'Article choisi -->
<?php require_once('../../private/initialize.php');
require_once(DATA_DIR."/bd_item.php");
require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php"); ?>

<?php $item = getItemOf($_GET['id']) ?>

<h2 class="forumhdr"><?php echo $item['name'] ?></h2>
<div class="itemContainer">
    <div class="selectedItem mleft">
        <img class="itemImage" src="<?php echo $item['image'] ?>" alt="<?php echo $item['name'] ?>">
    </div>
    <div class="itemInfoBox mright">
        <div style="margin-bottom: 80px">
            <p>
                <?php echo $item['description'] ?>
            </p>
        </div>
        <div>
            <h2>Prix : <?php echo $item['prix'] ?></h2><br/>
            <h2>Quantité restante : <?php echo $item['quantite'] ?></h2>
            <?php if (isset($_SESSION['password']) && isAdmin($_SESSION['email'], $_SESSION['password'])){ ?>
                <a href="<?php echo url_for("/controller_item/update.php?id=".$item['itemid'], "public") ?>"><h2> Mettre à jour</h2></a>
            <?php } ?>
        </div>
    </div>

</div>

<?php
include(SHARED_DIR . "/footer.php"); ?>

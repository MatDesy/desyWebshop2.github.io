<!-- formulaire de mise à jour -->
<?php require_once('../../private/initialize.php');
require_once(DATA_DIR . "/bd_userconnexion.php");
require_once(DATA_DIR."/bd_item.php");
include(SHARED_DIR . "/header.php");
$item = getItemOf($_GET['id']); ?>


<h2 class="forumhdr"><?php echo $item['name'] ?></h2>
<div class="itemContainer">
    <div class="selectedItem mleft">
        <img class="itemImage" src="<?php echo $item['image'] ?>" alt="<?php echo $item['name'] ?>">
    </div>
    <div class="itemInfoBox mright">
        <?php include "index.php" ?>
        <form action="" method="post">
            <div>
                <label for="itemid">l'id du produit</label>
                <input readonly name="id" id="itemid" value="<?php echo $item['itemid'] ?>" class="idcnt" type="text" style="width:15px;"><br/>
                <label for="price">Modifier le prix</label><br/>
                <input name="prix" id="price" class="inputtext" type="text" value="<?php echo $item['prix'] ?>" style="width:100px;"><br/>
                <label for="imglk">Modifier le lien de l'image</label><br/>
                <input name="image" id="imglk" class="inputtext" type="text" value="<?php echo $item['image'] ?>" style="width:700px;"><br/>
                <label for="quantite">Modifier la quantité</label><br/>
                <input id="quantite" name="quantite" class="inputtext" type="text" value="<?php echo $item['quantite'] ?>" style="width:50px;"><br/>
                <label for="vedette">Mettre en vedette?</label><br/>
                <input id="vedette" name="vedette" class="inputtext" type="text" value="<?php echo $item['estEnVedette'] ?>" style="20px;"><br/><br/>
                <input name="soumettre" type="submit" value="Enregistrer" class="btnSubmit" style="width: 100px; height: 40px;">
            </div>
        </form>
    </div>
</div>
<?php
include(SHARED_DIR . "/footer.php"); ?>

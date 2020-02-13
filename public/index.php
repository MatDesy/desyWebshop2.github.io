<!-- accueil du site -->
<?php require_once('../private/initialize.php');
require_once(DATA_DIR."/bd_item.php");
require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php");?>


    <div class="offerTitle">
        <h1 class="title">
            OFFRE LIMITÉE !!!
        </h1>
    </div>
    <div class="minuteur">
        <p id="demo"></p>
    </div>
    <div class="promos title">
        <h1 class="title"></h1>
    </div>
    <div class="card-carousel">
        <?php $tabItemVedette = getItemVedette(); $cardNum = 1; ?>
        <?php foreach ($tabItemVedette as $item) {
            $card = "card";?>

                <div id="<?php echo $card.$cardNum?>" class="my-card" data-card="<?php echo $item['name']; ?>" style="background-image: url('<?php echo $item['image'] ?>')">
                    <?php include(SHARED_DIR . "/itemheadder.php")  ?>
                </div>

            <?php $cardNum++; } ?>
    </div>
    <div class="itemInfo">
        <p id="insert">
        </p>
    </div>

<?php
if ($_GET['co'] == true)
{
    echo "<script>alert('les infos que vous avez inscris ne sont pas valide');</script>";
}
include(SHARED_DIR . "/footer.php"); ?>
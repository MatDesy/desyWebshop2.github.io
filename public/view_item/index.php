<!-- index des articles -->
<?php require_once('../../private/initialize.php');
require_once(DATA_DIR . "/bd_item.php");
require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php");

if($_GET['info'] == "all")
    {
        $tabItem = getItemAll();
    }
else
    {
        $tabItem = getItemByDate();
    }

?>

<div id="itemContent">
<?php foreach ($tabItem as $item){ ?>
    <a href="<?php echo url_for('/view_item/show.php?id=' . $item['itemid'],'public'); ?>">
        <div class="itemCard mleft" style="background-image: url('<?php echo $item['image'] ?>')">
            <?php include(SHARED_DIR . "/itemheadder.php")  ?>
        </div>
    </a>
<?php } ?>
</div>
<?php
include(SHARED_DIR . "/footer.php"); ?>

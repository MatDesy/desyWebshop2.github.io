<!-- index des tableaux de bord de l'utilisateur -->

<?php require_once('../../private/initialize.php');
require_once(DATA_DIR . "/bd_userconnexion.php");
include(SHARED_DIR . "/header.php");?>

<?php

$nbPtsMois = 4938;

$nbPts = 11743;
$nbParticipation = 7;
$moyParticipationParMois = 5;
$moyPtsParMois = 6254;
$nbupvote = 32;
$moyUpVoteParMois = 51;

if (isAdmin($_SESSION['email'], $_SESSION['password']))
{
    redirect_to(url_for("view_admin/index.php","public"));
}
else
{
    echo "<h1 class='titre' style='margin-top : 120px; text-align: center;'>Bienvenue ". $_SESSION['prenom'] . "</h1>";
}
?>
<div class="" style="height: 1400px;">
    <div id='chartContainer' style="width: 850px; height: 500px; margin-top: 100px; margin-left: 50px;" class="mleft">
    </div>
    <div class="mleft" style="margin-left: 80px; margin-top: 200px; border: solid #3a3a3a; padding: 5px;">
        <h1>Nombre de points : <?php echo $nbPts ?> </h1>
        <div>
            <h1 class="mleft">Nombre de points accumulés ce mois-ci :  <?php echo $nbPtsMois; ?></h1> <?php if ($nbPtsMois > $moyPtsParMois)
            {
                echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo'>";
            }
            else{
                echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo'>";
            }   ?>
        </div>
        <div>
            <h1 class="mleft" >Participation aux forums ce mois-ci : <?php echo $nbParticipation ;?></h1><?php if ($nbParticipation > $moyParticipationParMois)
            {
                echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo' alt='logo'>";
            }
            else{
                echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo' alt='logo'>";
            }?>
        </div>
        <div>
            <h1 class="mleft">Upvote total de vos avis : <?php echo $nbupvote; ?></h1><?php if ($nbupvote > $moyUpVoteParMois)
            {
                echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo' alt='logo'>";
            }
            else{
                echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo' alt='logo'>";
            }?>
        </div>
    </div>
    <div id='chartContainer2' style="width: 850px; height: 500px; margin-top: 200px; margin-left: 50px; margin-bottom: 100px;" class="mleft">
    </div>
</div>
<script type="text/javascript" src="<?php echo url_for("_javascript/charts.js","private") ?>"></script>
<?php include(SHARED_DIR . "/footer.php"); ?>

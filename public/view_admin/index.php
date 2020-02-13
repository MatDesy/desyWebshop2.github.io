<!-- index des tableaux de bord -->
<?php include_once("../../private/initialize.php");
require_once(DATA_DIR . "/bd_userconnexion.php");
include_once(SHARED_DIR . "/header.php"); ?>
<?php
///DATA TEST
$nbvisite = 447;
$moyvisite = 500;
$nbUserConnection = 79;
$moyConnection = 58;
$nbVente = 82;
$moyVente = 80;
?>
<h1 class="titre" style="margin-top: 120px; text-align: center;">Tableau de gestion administrateur</h1>
<div class="chartcontainer">
    <div id='chartContainer' style="width: 850px; height: 500px; margin-top: 100px; margin-left: 50px;margin-bottom: 100px;" class="chart">
    </div>
    <div id='chart2' style="width: 850px; height: 500px; margin-top: 100px; margin-left: 50px;margin-bottom: 100px;" class="chart">
    </div>
    <div id='chartContainer3' style="width: 850px; height: 500px; margin-top: 50px; margin-left: 50px;margin-bottom: 100px;" class="chart">
    </div>
    <div class="chart2">
        <h2 class="mleft">Nombre total de visite cette semaine : <?php echo $nbvisite; ?></h2> <?php if ($nbvisite > $moyvisite)
        {
            echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo'>";
        }
        else{
            echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo'>";
        }   ?>
        <h2 class="mleft">Nombre total d'utilisateur actif ce mois-ci : <?php echo $nbUserConnection; ?></h2> <?php if ($nbUserConnection > $moyConnection)
        {
            echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo'>";
        }
        else{
            echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo'>";
        }   ?>
        <h2 class="mleft">Nombre d'article vendu : <?php echo $nbVente; ?></h2> <?php if ($nbVente > $moyVente)
        {
            echo "<img src='https://ferasof.com/images/arrow-up-symbol-9.png' class='indPLogo'>";
        }
        else{
            echo "<img src='https://upload.wikimedia.org/wikipedia/commons/0/04/Red_Arrow_Down.svg' class='indPLogo'>";
        }   ?>
    </div>
</div>
<script type="text/javascript" src="<?php echo url_for("_javascript/adminCharts.js","private") ?>"></script>
<script type="text/javascript" src="<?php echo url_for("_javascript/adminCharts2.js","private") ?>"></script>
<script type="text/javascript" src="<?php echo url_for("_javascript/adminCharts3.js","private") ?>"></script>

<?php include_once(SHARED_DIR . "/footer.php") ?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="stylesheet" href="<?php echo url_for("_css/style.css", "private") ?>">
    <script rel="script" src="<?php echo url_for("_javascript/scripts.js", "private") ?>" defer></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha384-tsQFqpEReu7ZLhBV2VZlAu7zcOV+rXbYlF2cqB8txI/8aZajjp4Bqd+V6D5IgvKT"
            crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="../../node_modules/jqwidgets-framework/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="../../node_modules/jqwidgets-framework/jqwidgets/jqxdraw.js"></script>
    <script type="text/javascript" src="../../node_modules/jqwidgets-framework/jqwidgets/jqxchart.core.js"></script>
    <script type="text/javascript" src="../../node_modules/jqwidgets-framework/jqwidgets/jqxdata.js"></script>
    <script type="text/javascript" src="../../node_modules/jqwidgets-framework/scripts/demos.js"></script>
</head>
<body>
<div class="navbar">
    <div class="mleft">
        <h1 class="webname">
            ElectroniksDeals
        </h1>
    </div>
    <div class="gres">
        <div class="mleft btn">
            <a href="<?php echo url_for("index.php","public") ?>">
                <button class="navbtn">
                    Accueil
                </button>
            </a>
        </div>
        <div class="mleft btn">
            <div>
                <button class="navbtn" id="btnOffre">
                    Offres
                </button>
                <div class="dropdown-content" id="offredd">
                    <a href="<?php echo (url_for("view_item/index.php?info=all", "public" )) ?>">
                        <button>
                            Offres récentes
                        </button>
                    </a>
                    <a href="<?php echo (url_for("view_item/index.php", "public" )) ?>">
                        <button>

                            Tous les Offres
                        </button>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <?php

    if(isset($_SESSION['email']) && isset($_SESSION['password']))
    {
        include(SHARED_DIR . "/connected.php");
        if (isAdmin($_SESSION['email'], $_SESSION['password']))
        {
            include(SHARED_DIR . "/btnadminctrl.php");
        }
    }
    else
    {
        include(SHARED_DIR . "/btnconnection.php");
        include(SHARED_DIR . "/modalConnection.php");
    }
    ?>
    <div class="logo mleft">
        <img src="https://www.eagleelectronicsonline.com/image/data/final%20logo/eagle%20electronics%20logo%20copy.png" alt="logo" id="logo">
    </div>
    <div class="dres">
        <div class="mright btn">
            <a href="<?php echo url_for('view_faqs/index.php', 'public') ?>">
                <button class="navbtn">
                    FAQs
                </button>
            </a>
        </div>
        <div class="mright btn">
            <a href="<?php echo url_for('view_contact/index.php', 'public') ?>">
                <button class="navbtn">
                    Contactez-nous
                </button>
            </a>
        </div>
    </div>
</div>

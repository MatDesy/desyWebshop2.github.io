<?php ?>
<!-- button pour les utilisateur entrant dans le site (qui ne sont pas encore connecté) -->
<div class="mright btn">
    <div>
        <button class="navbtn" id="connection">
            connexion
        </button>
        <div class="dropdown-content" id="connectBtn">
            <button id="login">
                Se connecter
            </button>
            <a href="<?php echo url_for("view_user/create.php", 'public') ?>">S'inscrire</a>
        </div>
    </div>
</div>

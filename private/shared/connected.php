<?php ?>
<!-- affiche le button accedant aux infos de l'usager ou de se déconnecter -->
<div class="mright btn">
    <div class="">
        <a href="#" id="compte">
        <img class="userLog" src="https://cdn1.iconfinder.com/data/icons/get-me-home/512/account_avater_male_person_profile_user_logged-512.png">
        </a>
        <div class="dropdown-content comptesizing" id="comptebtn">
            <a href="<?php echo url_for("view_user/index.php", "public") ?>">
                <button>
                    Dashboard
                </button>
            </a>
            <a href="<?php echo url_for("shared/deconnexion.php", "private") ?>">
                <button>
                    Déconnexion
                </button>
            </a>
        </div>
    </div>
</div>
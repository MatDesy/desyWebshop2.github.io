<!-- formulaire de creation d'un utilisateur -->
<?php require_once('../../private/initialize.php'); ?>
<?php require_once(DATA_DIR . "/bd_userconnexion.php"); ?>
<?php include(SHARED_DIR ."/header.php"); ?>


<h1 class="frmHeader">Formulaire d'inscription</h1>
    <div id="formContainer">
        <form id="formInscription" action="<?php echo url_for("controller_user/new.php", "public") ?>" method="post">
            <label for="nom">Votre nom</label><br>
            <input type="text" id="nom" required placeholder="Votre nom" name="iname" class="frmText" pattern="[A-Za-z]{2,16}"><br>
            <label for="prenom">Votre prénom</label><br>
            <input type="text" id="prenom" required placeholder="Votre prénom" name="iprenom" class="frmText" pattern="[A-Za-z]{2,16}"><br>
            <label for="emailInsc">Votre email</label><br>
            <input type="email" id="emailInsc" required placeholder="abc@abc.com" name="iemail" class="frmText"><br>
            <label for="emailConfirm">Confirmez votre email</label><br>
            <input type="email" id="emailConfirm" required placeholder="Confirmez votre email" name="iemailC" class="frmText"><br>
            <label for="passwordInsc">Votre mot de passe</label><br>
            <input type="password" id="passwordInsc" required placeholder="Entrez un mot de passe" name="ipassword" class="frmText"><br>
            <label for="passwordConfirm">Confirmez votre mot de passe</label><br>
            <input type="password" id="passwordConfirm" required placeholder="Confirmez votre mot de passe" name="ipasswordC" class="frmText"><br>
            <label id="genreChk">Choississez votre genre</label><br>
            <input type="checkbox" name="sexe1" value="homme" id="box1">Homme<br><br>
            <input type="checkbox" name="sexe2" value="femme" id="box2">Femme<br><br>
            <input type="checkbox" name="sexe3" value="autre" id="box3">Autre<br><br><br>
            <label for="grpAge">Votre Groupe d'âge</label><br>
            <select name="grpAge" id="grpAge" required>
                <option id="option0" value="choisir" readonly="">Choisir...</option>
                <option id="option1" value="15-25">15-25</option>
                <option id="option2" value="26-35">26-35</option>
                <option id="option3" value="36-45">36-45</option>
                <option id="option4" value="46-55">46-55</option>
                <option id="option5" value="56 et plus">56 et plus</option>
            </select><br><br>
            <input type="submit" value="S'inscrire" name="soumettre" id="submit"><br>
        </form>
    </div>

<?php include(SHARED_DIR . "/footer.php") ?>

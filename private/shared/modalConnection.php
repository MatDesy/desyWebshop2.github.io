<!-- Menu de la connexion/formulaire de connexion -->
<div id="modal">
    <div id="modalContent">
        <div class="modal-header">
            <span class="close">&times;</span>
        </div>
        <h1>Connection</h1>
        <form method="post" class="loginContent" action="<?php echo url_for("/shared/connection.php", "private") ?>">
            <label for="email">Votre Email</label><br>
            <input type="email" name="Coemail" required placeholder="abc@abc.com" id="email"/><br>
            <label for="password">Votre mot de passe</label><br>
            <input type="password" name="Copassword" required id="password" placeholder="Votre mot de passe"/><br>
            <input type="submit" id="btnSubmit" name="connect">
        </form>
    </div>
</div>


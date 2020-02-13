<!-- controlleur pour l'ajout d'un nouveau user -->

<?php require_once('../../private/initialize.php'); ?>
<?php require_once(DATA_DIR . "/bd_userconnexion.php"); ?>

<?php
if (isset($_POST['soumettre']))
{
        if (isset($_POST['iname']) && isset($_POST['iprenom']) && isset($_POST['iemail']) && isset($_POST['ipassword']) && isset($_POST['grpAge']))
        {
                $nom = strip_tags(htmlspecialchars($_POST['iname']));
                $prenom = strip_tags(htmlspecialchars($_POST['iprenom']));
                $email = strip_tags(htmlspecialchars($_POST['iemail']));
                $password = strip_tags(htmlspecialchars($_POST['ipassword']));
                $encodedPass = password_hash($password, PASSWORD_DEFAULT);
                $age = $_POST['grpAge'];

                if (isset($_POST['sexe1']))
                {
                        $gender = $_POST['sexe1'];
                }
                if (isset($_POST['sexe2']))
                {
                        $gender = $_POST['sexe2'];
                }
                if (isset($_POST['sexe3']))
                {
                    $gender = $_POST['sexe3'];
                }

                insertNewUSer($nom, $prenom, $email, $encodedPass, $gender, $age);

                echo "<script> alert('Votre inscription à été soumise !'); </script>";

                redirect_to(url_for("index.php", "public"));
        }
        else
        {
                redirect_to(url_for("view_user/create.php", "public"));

                echo "<script> alert('Certain champs ne sont pas bien été remplis  !'); </script>";
        }
}


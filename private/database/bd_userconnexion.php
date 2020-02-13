<?php

require_once('bd_connexion.php');

//Retourne l'utilisateur qui se connecte
function getUserInfo($userEmail)
{
    $bdd = connect_DB();

        try {

            $reponse = $bdd->query("SELECT *
                                          FROM usertable 
                                          WHERE email = '$userEmail' ");

            if ($reponse)
            {
                $tabUser = $reponse->fetch();
                return $tabUser;
            }

        } catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }
    $bdd = null;
}

//Insert le nouveau utilisateur après la vérification
function insertNewUSer($name, $prename, $email, $password, $gender, $age)
{
    $bdd = connect_DB();

    if (emailNotExist($email))
    {
        try {
            $query = $bdd->prepare("INSERT INTO usertable(email, password, nom, prenom, genre, groupeAge)
                                   VALUES (:email, :password, :name, :prename, :gender, :age)");

            $query->execute(array(
                'email' => $email,
                'password' => $password,
                'name' => $name,
                'prename' => $prename,
                'gender' => $gender,
                'age' => $age
            ));

        }
        catch (Exception $e)
        {
            die('Erreur : ' . $e->getMessage());
        }
    }
    else
    {
        echo "<script> alert('Email déja pris')</script>";
        redirect_to(url_for("view_user/create.php", "public"));
    }
    $bdd = null;
}

//Met à jour les infos de l'utilisateur qui est connecté
function updateUserInfo($info, $infotype , $email)
{
    $bdd = connect_DB();

    try
    {
        $bdd->query("UPDATE usertable 
                               SET  $infotype = $info
                               WHERE email = '$email' ");
    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }
    $bdd = null;
}

//Cette fonction vérifie si le email est déja pris ou pas
function emailNotExist($email)
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT email
                               FROM usertable
                               WHERE email = '$email' ");

        $row = $reponse->fetch();

        if ($row == null)
        {
            return true;
        }
        return false;
    }
    catch(Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }
    $bdd = null;
}

//Cette function vérifie si le user qui se connecte est un admin
 function isAdmin($email, $password)
{
    $bdd = connect_DB();

    $lepassword = $password;
    $lemail = $email;

    try
    {
            $reponse = $bdd->query("SELECT *
                                                FROM administrator 
                                                WHERE email = '$lemail' ");

            $row = $reponse->fetch();

            if ($row != null && password_verify($lepassword, $row['password']))
             {
                 return true;
             }
            return false;
        }
        catch (Exception $e) {
            die('Erreur : ' . $e->getMessage());
        }

    $bdd = null;
}

//Valide si le user exist et qu'il a inserer les bons informations
function userValid($email, $password)
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM usertable 
                                          WHERE email = '$email' ");

        $row = $reponse->fetch();


        if ($row != null && password_verify($password, $row['password']))
        {
            return true;
        }
        return false;
    }
    catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }

    $bdd = null;
}
?>
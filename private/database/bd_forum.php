<?php
require_once('bd_connexion.php');

//Retourne la liste des posts
function getPost()
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM questionpost");

        if ($reponse)
        {
            $tabPost = $reponse->fetchAll();
            return $tabPost;
        }
    }
    catch (Exception $e)
    {
        die('ERREUR : ' .$e->getMessage());
    }
    $bdd = null;
}
//Retourne les commentaires du post courant
function getCommentaire($id)
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM commentaire
                                          WHERE id = $id
                                          ORDER BY Date ASC");

        if ($reponse)
        {
            $tabPost = $reponse->fetchAll();
            return $tabPost;
        }
    }
    catch (Exception $e)
    {
        die('ERREUR : ' .$e->getMessage());
    }
    $bdd = null;
}
//retourne le post que l'on desire
function getPostOf($id)
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM questionpost
                                          WHERE id = $id");

        if ($reponse)
        {
            $post = $reponse->fetch();
            return $post;
        }
    }
    catch (Exception $e)
    {
        die('ERREUR : ' .$e->getMessage());
    }
    $bdd = null;
}
//Envoi le message au post courant
function PostMessage($id, $email, $message)
{
    $bdd = connect_DB();

    try
    {
            $query = $bdd->prepare("INSERT INTO commentaire ( id, emailuser, message)
                                              VALUE (:id, :emailuser, :message)");
            $query->execute(array(
                'id' => $id,
                'emailuser' => $email,
                'message' => $message
            ));
    }
    catch (Exception $e)
    {
        die('ERREUR : ' .$e->getMessage());
    }
    $bdd = null;

    //Update le nombre de message dans un post (mieux avec trigger mais hors contexte)

    $bdd = connect_DB();

    try
    {
        $query = "UPDATE questionpost SET nbCommentaire = nbCommentaire + 1 WHERE id = $id";

        $bdd->exec($query);
    }
    catch (Exception $e)
    {
        die("ERREUR : " .$e->getMessage());
    }
    $bdd = null;
}
//Retire le post selon l'id obtenu
function deletePost($id)
{
    $bdd = connect_DB();

    try
    {
        $query = "DELETE FROM questionpost WHERE id = $id";

        $bdd->exec($query);
    }
    catch (Exception $e)
    {
        die("ERREUR : " .$e->getMessage());
    }
    $bdd = null;

    //DELETE AUSSI LES MESSAGES ASSOCIÉS AU POST

    $bdd = connect_DB();

    try {
        $deletequery = "DELETE FROM commentaire where id = $id";

        $bdd->exec($deletequery);
    }
    catch (Exception $e)
    {
        die("ERREUR : " .$e->getMessage());
    }
    $bdd = null;
}
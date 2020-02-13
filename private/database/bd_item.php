<?php
require_once('bd_connexion.php');

//Retourne la liste des articles en vedette
function getItemVedette()
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT itemid, name, quantite, description, image 
                                          FROM  itemtable
                                          WHERE estEnVedette = true");

        if ($reponse)
        {
            $tabItem = $reponse->fetchAll();
            return $tabItem;
        }
    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }

    $bdd = null;
}

//Retourne la liste complete des articles
function getItemAll()
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM itemtable
                                          ORDER BY itemid");

        if ($reponse)
        {
            $tabItem = $reponse->fetchAll();
            return $tabItem;
        }

    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }

    $bdd = null;
}
//Retourne la liste complete du plus recent au plus vieux
function getItemByDate()
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM itemtable i
                                          ORDER BY i.date ASC");

        if ($reponse)
        {
            $tabItem = $reponse->fetchAll();
            return $tabItem;
        }

    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }
    $bdd = null;
}

//Retourne la ligne complete de l'item désiré à partir de son id
function getItemOf($id)
{
    $bdd = connect_DB();

    try
    {
        $reponse = $bdd->query("SELECT *
                                          FROM itemtable i
                                          WHERE i.itemid = $id");

        if ($reponse)
        {
            $item = $reponse->fetch();
            return $item;
        }

    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }
    $bdd = null;
}

//Insert un nouveau article dans la bd
function insertNewItem($name, $quantite, $description, $estVedette, $imageLink)
{
    $bdd = connect_DB();

    try
    {
        $bdd->query("INSERT INTO itemtable(name, quantite, description, estEnVedette, image, date)
                               VALUES ($name, $quantite, $description, $estVedette, $imageLink, GETDATE())");
    }
    catch (Exception $e)
    {
        die('Erreur : ' .$e->getMessage());
    }
    $bdd = null;
}

//Met à jour l'article en selection
function updateItem($id ,$prix, $quantite, $estEnVedette, $image)
{
    $bdd = connect_DB();

    $img = strval($image);
    $bool = boolval($estEnVedette);

    try
    {
        $query = "UPDATE itemtable SET prix = $prix, quantite = $quantite, estEnVedette = $bool, image = '$img' WHERE itemid = $id ";

        $bdd->exec($query);
    }
    catch (Exception $e)
    {
        die("ERREUR : " .$e->getMessage());
    }
    $bdd = null;
}

?>

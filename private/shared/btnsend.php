<!-- formulaire d'envoie de messages dans un post -->

<form action="<?php echo url_for("/view_faqs/show.php?id=".$_GET['id'],"public")?>" method="post">
    <button type="submit" name="btnsubmit">
        Envoyer
    </button>
    <input type='text' id='msgtxt' name='imessage'>


</form>
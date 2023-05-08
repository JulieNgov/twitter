<?php
require "template/database.php";

$searchTweet = $database->prepare('SELECT * FROM tweet WHERE contenu LIKE "%'.$_GET['search'].'%"');
$searchTweet->execute();
$AllTweets = $searchTweet->fetchAll(PDO::FETCH_ASSOC);

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter / Recherche</title>
</head>
<body>

    <form action="">
        <input type="search" name="search" placeholder="Rechercher">
        <button type="submit">Rechercher</button>
    </form>

    <?php foreach($AllTweets as $twt){ ?>
            <p>Tweet : <?= $twt['contenu'] ?></p>
    <?php } ?>
    
</body>
</html>
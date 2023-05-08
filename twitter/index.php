<?php

require "template/database.php";

$requete = $database->prepare("SELECT * FROM tweet ORDER BY publish_date DESC");
$requete->execute();
$AllTweets = $requete->fetchAll(PDO::FETCH_ASSOC);

$requete = $database->prepare("SELECT * FROM utilisateur");
$requete->execute();
$AllInfos = $requete->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Twitter</h1>

    <form action="search.php">
        <input type="search" name="search" placeholder="Rechercher">
        <button type="submit">Rechercher</button>
    </form>

    <h1>Faire un tweet</h1>
    <form class="form" method="POST" action="insert-post.php">
            <input type="hidden" name="user" value="1">
            <input type="text" name="contenu" placeholder="Faire un tweet" required>
            <button type="submit">Tweeter</button>
    </form>
    
<div>

        <?php foreach($AllTweets as $twt){ ?>
            <h2>Pseudo</h2>
            <img src="https://fastly.picsum.photos/id/1064/200/200.jpg?hmac=xUH-ovzKEHg51S8vchfOZNAOcHB6b1TI_HzthmqvcWU" alt="">

            <p>Tweet : <?= $twt['contenu'] ?></p>

            <form action="delete.php" method="POST">
            <input type="hidden" name="supp" value="<?= $twt['id'] ?>">
            <button type="submit">Supp</button>
        </form>
    <?php } ?>
</div>

</body>
</html>
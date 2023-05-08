<?php

require "template/database.php";

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twitter / Inscription</title>
</head>
<body>
    <h1>Inscription</h1>
    <form class="form" method="POST" action="insert.php">

            <input type="text" name="pseudo" placeholder="Pseudo">
            <input type="text" name="utilisateur" placeholder="Username">
            <input type="email" name="email" placeholder="Mail" required>
            <input type="password" name="password" placeholder="Mot de passe" required>
            <input type="text" name="photo" placeholder="Profile picture link">
            <button type="submit">S'inscrire</button>
    </form>
            
</body>
</html>
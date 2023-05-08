<?php
require 'template/database.php';
$insert = $database->prepare("INSERT INTO utilisateur (pseudo, utilisateur, email, password, photo) VALUES (:nom, :user, :mail, :pw, :pic)");
$insert->execute(
    [
        "nom" => $_POST['pseudo'],
        "user" => $_POST['utilisateur'],
        "mail" => $_POST['email'],
        "pw" => $_POST['password'],
        "pic" => $_POST['photo']
    ]
);

header("Location: index.php");
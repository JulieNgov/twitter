<?php
require 'template/database.php';
$insert = $database->prepare("INSERT INTO tweet (contenu) VALUES (:write)");
$insert->execute(
    [
        "write" => $_POST['contenu']
    ]
);


header("Location: index.php");
<?php
    $dsn = 'mysql:host=localhost;dbname=larrytables';
    $username = 'root';
    $password = 'Pa$$w0rd';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        echo "You have entered the wrong credentials";
        exit();
    }
?>
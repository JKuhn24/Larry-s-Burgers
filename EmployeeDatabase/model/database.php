<?php
class Database {
    private static $dsn = 'mysql:host=localhost;dbname=larrytables';
    private static $username = 'root';
    private static $password = 'Pa$$w0rd';
    private static $db;
    
    private function __construct() {}

    public static function getDB () {
    
    try {
        self::$db = new PDO(self::$dsn, self::$username, self::$password);
    } catch (PDOException $e) {
        echo "You have entered the wrong credentials";
        exit();
    }
    return self::$db;
    }
 }
?>

<?php

namespace DB;

use PDO;
use PDOException;

class DbConnection {

    private static $instance;
    private $connection;

    private $host      = 'localhost';
    private $username  = 'root';
    private $pass      = 'root';
    private $dbname    = 'test_edge';
    private $charset   = 'utf8';
    private $collation = 'utf8_general_ci';

    private function __construct()
    {

        $dsn = "mysql:host=$this->host;dbname=$this->dbname;charset=$this->charset";

        $options = [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_PERSISTENT => false,
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES $this->charset COLLATE $this->collation"
        ];

        try {
            /** @var PDO $this */
            $this->connection = new PDO($dsn, $this->username, $this->pass, $options);
        } catch (PDOException $e) {
            die("PDO CONNECTION ERROR: " . $e->getMessage() . "<br/>");
        }
    }

    public static function getInstance()
    {
        if (!self::$instance) {
            self::$instance = new self();
        }

        return self::$instance;
    }

    /**
     * @return PDO
     */
    public function getConnection() : PDO
    {
        return $this->connection;
    }

    private function __clone()
    {
    }

    private function __wakeup()
    {
    }
}
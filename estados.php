<?php 
$servername = "localhost";
$username = "root";
$password = "";
$database = "cultivos";

header('Content-Type: application/json');
try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("SELECT * FROM estado");
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
   	print json_encode($stmt->fetchAll());
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

?>
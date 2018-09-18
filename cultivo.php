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
    $id = $_GET['id'];

    $stmt = $conn->prepare("SELECT * FROM cultivo WHERE id = $id");
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    foreach($stmt->fetchAll() as $k=>$v) {
    	print json_encode($v);
    	//print_r($v);
    }

    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }

?>
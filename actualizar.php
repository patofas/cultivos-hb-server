<?php header('Content-Type: application/json; charset=utf-8');
$servername = "localhost";
$username = "root";
$password = "";
$database = "cultivos";
/*
 * Following code will update a product information
 * A product is identified by product id (pid)
 */

    // array for JSON response
    $response = array();

    // receive your json object
    $json = json_decode(file_get_contents('php://input'),true);

if (isset($json["ID"])) {

    $id = $json['ID'];
    $nombrePaciente = $json['NOMBRE_PACIENTE'];
    $idEstado = $json['ID_ESTADO'];
    $idMuestra = $json['ID_MUESTRA'];
    $germen = $json['GERMEN'];
    $resistencia = $json['RESISTENCIA'];
    $sensibilidad = $json['SENSIBILIDAD'];

    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $conn->prepare("UPDATE cultivo SET NOMBRE_PACIENTE = '$nombrePaciente', ID_ESTADO = $idEstado, ID_MUESTRA = $idMuestra, GERMEN = '$germen', RESISTENCIA = '$resistencia', SENSIBILIDAD = '$sensibilidad' WHERE ID = $id;");
    $stmt->execute();

    $response["success"] = 1;
    $response["message"] = "Product successfully updated.";

} else {
    // required field is missing
    $response["success"] = 0;
    $response["message"] = "Required field(s) is missing";
    //$response["message"] = json_encode($_POST);

}
    echo json_encode($response);

?>
<?php 

/* Database Connection */

$db_host = '127.0.0.1';
$db_name = 'valorations';
$db_user = 'root';
$db_password = '';

$link = "mysql:host=$db_host;dbname=$db_name;charset=utf8"; // Incluye charset para evitar problemas con caracteres especiales.

try {
    $db_PDO = new PDO($link, $db_user, $db_password, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // Activa el modo de errores para PDO.
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // Define el modo de obtención predeterminado.
    ]);
    echo "<script>console.log('DATABASE: Connected succesfully to $db_name' );</script>";
    
} catch (PDOException $e) {
    echo "<script>console.log('Error: '" . $e->getMessage() . " );</script>";
}



?>
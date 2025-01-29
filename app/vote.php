<?php
session_start();
include_once('db.php');

header('Content-Type: application/json');

if (!isset($_SESSION['isLogged']) || $_SESSION['isLogged'] !== 'logged' || !isset($_SESSION['userId'])) {
    echo json_encode(['error' => 'No estás autenticado.']);
    exit;
}

$userId = $_SESSION['userId'];
$data = json_decode(file_get_contents('php://input'), true);
$productId = filter_var($data['productId'], FILTER_VALIDATE_INT);
$userRate = filter_var($data['vote'], FILTER_VALIDATE_FLOAT);

if (!$productId || !$userRate || $userRate < 0 || $userRate > 3) {
    echo json_encode(['error' => 'Datos inválidos.']);
    exit;
}

try {
    $sql_check_vote = "SELECT * FROM votes WHERE productId = ? AND userId = ?";
    $stmt_check_vote = $db_PDO->prepare($sql_check_vote);
    $stmt_check_vote->execute([$productId, $userId]);

    if ($stmt_check_vote->rowCount() > 0) {
        echo json_encode(['error' => 'Ya has votado este producto.']);
        exit;
    } else {
        $sql_insert_vote = "INSERT INTO votes (rate, productId, userId) VALUES (?, ?, ?)";
        $stmt_insert_vote = $db_PDO->prepare($sql_insert_vote);
        $stmt_insert_vote->execute([$userRate, $productId, $userId]);

        $sql_update_totalRate = "UPDATE products SET totalRate = totalRate + ? WHERE id = ?";
        $stmt_updateTotalRate = $db_PDO->prepare($sql_update_totalRate);
        $stmt_updateTotalRate->execute([$userRate, $productId]);

        // Obtener el nuevo promedio de votación
        $sql_get_average = "SELECT totalRate FROM products WHERE id = ?";
        $stmt_get_average = $db_PDO->prepare($sql_get_average);
        $stmt_get_average->execute([$productId]);
        $average = $stmt_get_average->fetchColumn();

        echo json_encode([
            'success' => 'Voto registrado correctamente.',
            'userVote' => $userRate,
            'newAverage' => $average
        ]);
    }
} catch (PDOException $e) {
    echo json_encode(['error' => 'Error en la base de datos: ' . $e->getMessage()]);
}

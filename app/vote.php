<?php

session_start();
include_once('db.php');

header('Content-Type: application/json');

if (!isset($_SESSION['isLogged']) || $_SESSION['isLogged'] !== 'logged' || !isset($_SESSION['userId'])) {
    echo json_encode(['error' => 'No estás autenticado.']);
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['vote'], $_POST['productId'])) {
    // Validamos y sanitizamos los datos
    $userId = $_SESSION['userId'];
    $productId = filter_var($_POST['productId'], FILTER_VALIDATE_INT);
    $userRate = filter_var($_POST['vote'], FILTER_VALIDATE_FLOAT);

    $response = ['sucess' => false, 'message' => '', 'averageRate' => 0];

    if (!$productId || !$userRate || $userRate < 0 || $userRate > 3) {
        $response['message'] = 'Datos del voto inválidos';
        echo json_encode($response);
        exit;
    }

    try {
        // Comprobamos si ya existe un voto del usuario para este producto
        $sql_check_vote = "SELECT * FROM votes WHERE productId = ? AND userId = ?";
        $stmt_check_vote = $db_PDO->prepare($sql_check_vote);
        $stmt_check_vote->execute([$productId, $userId]);

        if ($stmt_check_vote->rowCount() > 0) {
            $response['message'] = 'Ya has votado este producto.';
        } else {
            // Insertamos un nuevo voto porque no existe ninguno previo
            $sql_insert_vote = "INSERT INTO votes (rate, productId, userId) VALUES (?, ?, ?)";
            $stmt_insert_vote = $db_PDO->prepare($sql_insert_vote);
            $stmt_insert_vote->execute([$userRate, $productId, $userId]);

            $sql_update_totalRate = "UPDATE products SET totalRate = totalRate + ?, totalVotes = totalVotes + 1 WHERE id = ?";
            $smtm_updateTotalRate = $db_PDO->prepare($sql_update_totalRate);
            $smtm_updateTotalRate->execute([$userRate, $productId]);

            // Calculamos la media de votos
            $sql_get_data = "SELECT totalRate, totalVotes FROM products WHERE id = ?";
            $stmt_get_data = $db_PDO->prepare($sql_get_data);
            $stmt_get_data->execute([$productId]);
            $product = $stmt_get_data->fetch(PDO::FETCH_ASSOC);

            $averageRate = $product['totalVotes'] > 0
                ? $product['totalRate'] / $product['totalVotes']
                : 0; // Evitar división por cero

                 // Obtener el voto del usuario
            $sql_user_vote = 'SELECT rate FROM votes WHERE (userId, productId) = (?, ?)';
            $stmt_user_vote = $db_PDO->prepare($sql_user_vote);
            $stmt_user_vote->execute([$userId, $productId]);
            $userVote = $stmt_user_vote->fetch(PDO::FETCH_ASSOC)['rate'];

            $response['success'] = true;
            $response['message'] = 'Voto registrado correctamente.';
            $response['averageRate'] = round($averageRate, 2);
            $response['userVote'] = $userVote;
        }
    } catch (PDOException $e) {
        $response['message'] = 'Error en la base de datos: ' . $e->getMessage();
    }

    echo json_encode($response);
    exit;
}

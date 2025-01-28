<?php
session_start();

if (!isset($_SESSION['isLogged'])) {
    $_SESSION['isLogged'] = 'unlogged';
}

include_once('db.php');

if (isset($_SESSION['isLogged']) && $_SESSION['isLogged'] === 'unlogged') {
    header('location: ./index.php');
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['logout'])) {
    $_SESSION['isLogged'] = 'unlogged';
    session_unset();
    session_destroy();
    header('location: ./index.php');
    exit;
}

if ($_SESSION['isLogged'] === 'logged' && isset($_SESSION['username'])) {
    $sql_user = "SELECT * FROM users WHERE username = ?";
    $gsent_user = $db_PDO->prepare($sql_user);
    $gsent_user->execute([$_SESSION['username']]);

    $result = $gsent_user->fetch(PDO::FETCH_ASSOC);

    if ($result) {
        $_SESSION['profile_pic'] = $result['profile_pic'];
        $_SESSION['userId'] = $result['id'];
    }
}

$errors = [];

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['vote'], $_POST['productId'])) {
    // Validamos y sanitizamos los datos
    $userId = $_SESSION['userId'];
    $productId = filter_var($_POST['productId'], FILTER_VALIDATE_INT);
    $userRate = filter_var($_POST['vote'], FILTER_VALIDATE_FLOAT);

    if (!$productId || !$userRate || $userRate < 0 || $userRate > 3) {
        header('location: ' . $_SERVER['PHP_SELF']);
        $errors[] = 'Datos del voto inválidos';
    }

    try {
        // Comprobamos si ya existe un voto del usuario para este producto
        $sql_check_vote = "SELECT * FROM votes WHERE productId = ? AND userId = ?";
        $stmt_check_vote = $db_PDO->prepare($sql_check_vote);
        $stmt_check_vote->execute([$productId, $userId]);

        if ($stmt_check_vote->rowCount() > 0) {
            $errors[] = 'Ya has votado este producto.';
        } else {
            // Insertamos un nuevo voto porque no existe ninguno previo
            $sql_insert_vote = "INSERT INTO votes (rate, productId, userId) VALUES (?, ?, ?)";
            $stmt_insert_vote = $db_PDO->prepare($sql_insert_vote);
            $stmt_insert_vote->execute([$userRate, $productId, $userId]);

            $sql_update_totalRate = "UPDATE products SET totalRate = totalRate + ? WHERE id = ?";
            $smtm_updateTotalRate = $db_PDO->prepare($sql_update_totalRate);
            $smtm_updateTotalRate->execute([$userRate, $productId]);

            echo 'Voto registrado correctamente.';
        }
    } catch (PDOException $e) {
        die('Error en la base de datos: ' . $e->getMessage());
    }
}


?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/output.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../img/logo.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/52ac892b93.js" crossorigin="anonymous"></script>
    <script src="./script.js"></script>
    <title>VALORATIONS — Valoraciones de productos</title>
</head>

<body class="">
    <header class="flex flex-row justify-between items-center p-[20px]">
        <div class="logo flex flex-row items-center gap-4">
            <img src="../img/logo.png" alt="Products valoration system logo" class="rounded-full transition hover:scale-[1.1] w-[100px]">
            <h1 class="text-center uppercase font-sans font-bold text-[1.5rem] text-dark-gray my-[10px]">VALORATIONS SYSTEM</h1>
        </div>
        <ul>
            <li><a href="./index.php" class="header_link relative uppercase font-bold text-[1.5rem] text-dark-gray hover:text-black transition">Index</a></li>
        </ul>
        <ul class="flex flex-col gap-2 mr-[4rem]">
            <img src="<?php echo $_SESSION['profile_pic']; ?>" alt="User pic" class="rounded-full w-[100px] bg-gray-light">
            <h4 class="text-center font-bold"><?php echo $_SESSION['username']; ?></h4>
            <form method="POST" class="flex flex-col items-center justify-center">
                <button type="submit" name="logout" class="uppercase bg-dark-gray text-yellow font-bold p-[5px] rounded transition hover:bg-yellow-dark hover:text-dark-gray">Logout</button>
            </form>
        </ul>
    </header>
    <section class="products_section flex flex-col bg-off-white font-sans h-dvh">
        <h1 class="text-center uppercase font-sans font-bold text-[2.5rem] text-dark-gray my-[10px">Products valoration</h1>
        <table class="table text-center">
            <thead class="">
                <th>ID</th>
                <th>Product Image</th>
                <th>Name</th>
                <th>Average</th>
                <th>Your valoration</th>
                <th>Vote</th>
            </thead>
            <tbody>
                <?php
                try {
                    $sql_products = "SELECT * FROM products";
                    $gsent_user = $db_PDO->prepare($sql_products);
                    $gsent_user->execute();

                    $result = $gsent_user->fetchAll(PDO::FETCH_ASSOC);

                    if ($result): foreach ($result as $product): ?>
                            <tr>
                                <td><?php echo $product['id']; ?></td>
                                <td class="flex flex-col items-center justify-center"><?php echo "<img src='" . $product['image'] . "' alt='Product image' class='w-[100px] text-center'>"; ?></td>
                                <td><?php echo $product['name']; ?></td>
                                <td><?php 
                                 try {

                                    $sql_user_vote = 'SELECT totalRate FROM products WHERE id = ?';
                                    $gsent_user = $db_PDO->prepare($sql_user_vote);
                                    $gsent_user->execute([$product['id']]);

                                    $result = $gsent_user->fetch(PDO::FETCH_ASSOC);

                                    if($result) {

                                        

                                    } else {
                                        echo "You're not rated yet";
                                    }

                                } catch(PDOException $e) {
                                    die('Error' . $e->getMessage());
                                }

                                ?></td>
                                <td><?php 
                                    try {

                                        $sql_user_vote = 'SELECT rate FROM votes WHERE (userId, productId) = (?, ?)';
                                        $gsent_user = $db_PDO->prepare($sql_user_vote);
                                        $gsent_user->execute([$_SESSION['userId'], $product['id']]);

                                        $result = $gsent_user->fetch(PDO::FETCH_ASSOC);

                                        if($result) {
                                            echo $result['rate'];
                                        } else {
                                            echo "You're not rated yet";
                                        }

                                    } catch(PDOException $e) {
                                        die('Error' . $e->getMessage());
                                    }
                                ?></td>
                                <td>
                                    <form action="" method="POST" class="flex gap-4 items-center justify-center">
                                        <div class="rating flex gap-1 text-yellow cursor-pointer" data-product-id="<?php echo $product['id']; ?>">
                                            <i class="fa-solid fa-star text-[24px]" data-value="1"></i>
                                            <i class="fa-solid fa-star text-[24px]" data-value="2"></i>
                                            <i class="fa-solid fa-star text-[24px]" data-value="3"></i>
                                        </div>
                                        <input type="hidden" name="vote" id="voteInput-<?php echo $product['id']; ?>" value="">
                                        <input type="hidden" name="productId" value="<?php echo $product['id']; ?>">
                                        <button type="submit" name="voted" class="py-[5px] px-[10px] bg-dark-gray text-white font-bold rounded shadow-xl">VOTE</button>
                                    </form>
                                </td>
                            </tr>
                            <?php if (!empty($errors)): ?>
                                    <ul>
                                        <?php foreach ($errors as $error): ?>
                                            <li><?php echo $error ?></li>
                                    </ul>
                            <?php $errors = [];
                                        endforeach;
                                    endif; ?>
                <?php endforeach;
                    endif;
                } catch (PDOException $e) {
                    echo "<script>console.log('Error: '" . $e->getMessage() . " );</script>";
                }

                ?>

                <p id="response"></p>
            </tbody>
        </table>
    </section>

    <script>
        const ratings = document.querySelectorAll('.rating');

        ratings.forEach(rating => {
            const stars = rating.querySelectorAll('i'); // Estrellas para este producto
            const voteInput = document.getElementById(`voteInput-${rating.dataset.productId}`); // Campo oculto para este producto

            let currentVote = 0; // Valor actual del voto

            stars.forEach((star, index) => {
                // Detectar posición del ratón dentro de la estrella
                star.addEventListener('mousemove', (event) => {
                    const rect = star.getBoundingClientRect();
                    const mouseX = event.clientX - rect.left; // Posición del ratón dentro de la estrella
                    const starWidth = rect.width; // Ancho total de la estrella

                    // Determinar si se llena media o completa
                    let value = index + 1; // Valor base (1, 2, 3 según la posición)
                    if (mouseX < starWidth / 2) {
                        value -= 0.5; // Media estrella
                    }

                    highlightStars(rating, value); // Resaltar estrellas según el valor
                });

                // Guardar el valor al hacer clic
                star.addEventListener('click', (event) => {
                    const rect = star.getBoundingClientRect();
                    const mouseX = event.clientX - rect.left;
                    const starWidth = rect.width;

                    let value = index + 1;
                    if (mouseX < starWidth / 2) {
                        value -= 0.5;
                    }

                    currentVote = value; // Guardar el voto actual
                    voteInput.value = currentVote; // Establecer el valor en el campo oculto
                });
            });

            // Resetear las estrellas al salir del área
            rating.addEventListener('mouseleave', () => {
                highlightStars(rating, currentVote); // Resaltar con el voto actual
            });
        });

        // Función para resaltar las estrellas según el valor
        function highlightStars(rating, value) {
            const stars = rating.querySelectorAll('i');
            stars.forEach((star, index) => {
                star.style.color = '#e4e5e9'; // Resetear el color (gris)

                if (index + 1 <= value) {
                    star.style.color = '#ffc107'; // Estrella completa (amarilla)
                } else if (index + 0.5 === value) {
                    // Estrella a la mitad
                    star.style.background = `linear-gradient(to right, #ffc107 50%, #e4e5e9 50%)`;
                    star.style.webkitBackgroundClip = 'text';
                    star.style.color = 'transparent';
                } else {
                    star.style.background = ''; // Resetear fondo
                }
            });
        }
    </script>

</body>

</html>
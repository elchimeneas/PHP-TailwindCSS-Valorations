<?php
session_start();

if (!isset($_SESSION['isLogged'])) {
    $_SESSION['isLogged'] = 'unlogged';
} elseif (isset($_SESSION['isLogged']) && $_SESSION['isLogged'] != 'logged') {
    $_SESSION['isLogged'] = 'unlogged';
}

include_once("db.php");

$errors = [];

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = isset($_POST["username"]) ? $_POST["username"] : '';
    $password = isset($_POST["password"]) ? $_POST["password"] : '';

    if (empty($username) || empty($password)) {
        $errors[] = "Username or password is empty.";
    } else {
        try {
            $sql_user = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

            $gsent_user = $db_PDO->prepare($sql_user);

            // Ejecutar consulta
            $gsent_user->execute();

            // Obtenemos el resultado
            $result = $gsent_user->fetch(PDO::FETCH_ASSOC);

            if ($result) {
                $_SESSION['isLogged'] = 'logged';
                $_SESSION['username'] = $username;
                header('location: ./valorations.php');
                die;
            } else {
                $errors[] = "Username or password is incorrect.";
            }
        } catch (PDOException $e) {
            echo "<script>console.log('Error: '" . $e->getMessage() . " );</script>";
        }
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
    <title>LOGIN — Valoraciones de productos</title>
</head>

<body class="bg-off-white font-sans grid place-content-center h-dvh">
    <?php if ($_SESSION['isLogged'] === 'logged'): ?>
        <a href="valorations.php" class="p-[20px] bg-yellow text-center font-bold text-white"> YOU'RE LOGGED IN<br>CLICK HERE TO ENTER THE PANEL</a>
    <?php else: ?>
        <section class="bg-gray-light p-[4rem] rounded-[.5rem] flex flex-col justify-center items-center" style="box-shadow: 0px 0px 13px 0px rgba(0,0,0, 0.1);">
            <div class="w-[300px]">
                <img class="rounded-full transition hover:scale-[1.1] mb-[20px]" src="../img/logo.png" alt="Products valoration system logo">
            </div>
            <h1 class="text-center uppercase font-sans font-bold text-[2.5rem] text-dark-gray my-[10px]">Login</h1>
            <div class="login_form">
                <form action="" method="POST" class="flex flex-col gap-4">
                    <div>
                        <label class="font-bold uppercase mr-[3px]" for="username">Username:</label>
                        <input class="py-[5px] px-[10px] outline-0
                    focus:outline-1 focus:outline-yellow" type="text" name="username" placeholder="Enter your username...">
                    </div>
                    <div>
                        <label class="font-bold uppercase mr-[3px]" for="password">Password:</label>
                        <input class="py-[5px] px-[10px] outline-0
                    focus:outline-1 focus:outline-yellow" type="password" name="password" placeholder="*****">
                    </div>
                    <?php if (!empty($errors)): ?>
                        <?php foreach ($errors as $error): ?>
                            <ul>
                                <li class="text-center text-orange font-bold"><?php echo $error ?></li>
                            </ul>
                    <?php endforeach;
                    endif; ?>
                    <button class="bg-yellow font-bold uppercase text-white p-3 rounded-[0.5rem] hover:bg-dark-gray transition duration-500" type="submit">Enter</button>
                </form>
            </div>
        </section>
    <?php endif; ?>
</body>

</html>
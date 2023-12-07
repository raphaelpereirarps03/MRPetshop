<?php
require_once __DIR__.'../../model/Conexao.php';
var_dump($_SESSION);

// Assuming you have a database connection established
$host = "localhost";
$username = "root";
$password = "";
$database = "bdmrpetshop";


$conn = mysqli_connect($host, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["emailAdm"];
    $password = $_POST["passwordAdm"];

    $sql = "SELECT * FROM tbadm WHERE emailAdm = '$email' AND passwordAdm = '$password'";
    $result = mysqli_query($conn, $sql);

    // ... (seu código de verificação de login)
    if (mysqli_num_rows($result) == 1) {
    $adm = mysqli_fetch_assoc($result);

    // Armazena informações do cliente na sessão
    session_start();
    $_SESSION['codAdm'] = $adm['codAdm'];
    $_SESSION['nomeAdm'] = $adm['nomeAdm'];
    $_SESSION['cpfAdm'] = $adm['cpfAdm'];
    $_SESSION['dataNascAdm'] = $adm['dataNascAdm'];
    $_SESSION['emailAdm'] = $adm['emailAdm'];
    $_SESSION['passwordAdm'] = $adm['passwordAdm'];
    $_SESSION['imgAdm'] = $adm['imgAdm'];
    $_SESSION['tokenAdm'] = $adm['tokenAdm'];
    // ... (outras informações do cliente que deseja armazenar)

    // Redireciona para a home
    header("Location:home/index.php");
    exit();
}
else {
    // Invalid credentials
    echo '<script>
    alert("Senha ou Email invalido");
    window.location.href = "login.php";
    </script>';
}

    mysqli_close($conn);
}
?>

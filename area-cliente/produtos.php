<!DOCTYPE html>
<?php
  session_start();
  require_once '../dao/ProdutoDao.php';
  $produtos = ProdutoDao::selectAll();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MR PetShop - Produtos</title>
  <link rel="shortcut icon" href="./../img/site/logo.png" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- icon Bootstrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <!-- CSS Projeto -->
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/produto.css">

</head><body style="justify-content: center; align-items: center; height: 100vh; background-color: #202020;">
<?php 

//Verifica se o cliente está autenticado
  if (isset($_SESSION['codCliente'])) {
    // Cliente está autenticado, exibe informações e link de logout
    include('./../componentes/header-cliente-logado.php');
      //echo 'Bem-vindo, ' . $_SESSION['nomeCliente'] . '! ';
      //echo '<a href="logout.php">Logout</a>';
  } else {
      // Cliente não está autenticado, exibe link de login
      include('./../componentes/header-cliente.php');
      //echo '<a href="login.php">Login</a>';
  } 

?>

  <div class="container04 justify-content-center align-items-center">

    <!-- ... (código do carousel e outras partes do HTML) ... -->

    <h1 class="card-title text-white text-center m-5">NOSSOS PRODUTOS</h1>

    <div class="row">
      <?php foreach($produtos as $produto) { ?>
        <div class="col-md-4">
          <div class="wrapper mb-5">
            <form action="process-produto.php" method="POST">
            <div class="product-card">
                <input type="hidden" class="form-control" id="acao" name="acao" value="SELECTID">
                <input type="hidden" class="form-control" id="id" name="id" value="<?=$produto[0]?>">
                <a class="product-link"><button type="submit">
                <img src="../img/user/<?=$produto[4]?>" ></img>
                <span class="overlay"></span>
                <span class="info">
                  <span class="title"><?=$produto[1]?></span>
                  <span class="price"><span class="woocommerce-Price-currencySymbol mx-2"></span>$<?=$produto[2]?> </span>
                </span>
                </button>
              </a>
              <div class="button-wrap">
                <a class="cart button" id="<?php echo $produto[0]; ?>"  style="background-color: #F19102"> <button type="submit" class="dropdown-item" >Comprar
                </button></a>
              </form>
               
              </div>
            </div>
          </div>
        </div>
      <?php } ?>
    </div>

    <?php
      include('./../componentes/footer-cliente.php');
    ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script>
      // Adicione este script para lidar com o evento de clique nos cards de produto
      document.addEventListener('DOMContentLoaded', function () {
        var productCards = document.querySelectorAll('.product-card');
        // Se desejar adicionar comportamento específico aos cards, faça isso aqui.
      });
    </script>

  </body>
</html>
<!DOCTYPE html>
<?php
  session_start();
  require_once '../dao/ProdutoDao.php';
  if (!empty ($_POST)) {
    $cod_Produto = $produtoDao ['codProduto'];
    $desc_Produto = $produtoDao ['descProduto'];
    $valor_Produto = $produtoDao ['valorProduto'];
    $agendamento_Produto = $produtoDao ['agendamentoProduto'];
    $img_Produto =  $produtoDao ['imgProduto'];
  } else {
    $cod_Produto = '';
    $desc_Produto= '';
    $valor_Produto = '';
    $agendamento_Produto = '';
    $img_Produto = '';
  }

?>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MR PetShop - Produto</title>
  <link rel="shortcut icon" href="./../img/site/logo.png" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  <!-- Projeto CSS -->
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="../css/item.css">
  
</head>

<body style="background-color: #202020;">
<?php
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

  <div class="container mt-5">
    <div class="row">
      

      <div class="col-4  ml-2 mb-2" width="400px" >
        <img src="../img/user/<?php echo $img_Produto ?>" alt="Product Image" class="img-fluid mb-3">
      </div>
      
      <div class="col-5 text-white mb-3">
        <h1><?php echo $desc_Produto ?></h1>
       
        <div class="product-rating">
          
        </div>
        <p>R$ <?php echo $valor_Produto ?></p>
        <div>
          <h3>Agendamento obrigatório: <?php echo $agendamento_Produto ?></h2>
          <form action="process-produto2.php" method="POST">
            <div class="product-card">
                <input type="hidden" class="form-control" id="acao" name="acao" value="SELECTID">
                <input type="hidden" class="form-control" id="id" name="id" value="<?=$cod_Produto?>">
                <a class="cart button"><button type="submit" style="background-color: #F19102; margin: 10px;">Comprar</button></a>
              </form>
          
          </div>
      </div>
    </div>
  </div>

  <?php 
    include('./../componentes/footer-cliente.php');
  ?>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
  </script>

  <script>
    window.addEventListener('resize', function () {
      handleResponsiveLayout();
    });

    document.addEventListener('DOMContentLoaded', function () {
      handleResponsiveLayout();
    });

    function handleResponsiveLayout() {
      var screenWidth = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

      // Defina a largura máxima para a mudança de layout
      var maxWidth = 800;

      // Se a largura da tela for menor que a largura máxima, altere o layout
      if (screenWidth < maxWidth) {
        moveTextBelow();
        changeImagesLayout();
      } else {
        restoreOriginalLayout();
      }
    }

    function moveTextBelow() {
      // Mova o bloco de texto para baixo
      var textColumn = document.querySelector('.col-4.text-white');
      textColumn.style.order = '3'; // Defina a ordem para colocar o texto abaixo das imagens
    }

    function changeImagesLayout() {
      // Mude o layout das imagens para uma nova linha
      var imageColumn = document.querySelector('.col-1.collunm');
      imageColumn.style.display = 'flex';
      imageColumn.style.flexDirection = 'row';
      imageColumn.style.justifyContent = 'space-around';
    }

    function restoreOriginalLayout() {
      // Restaure o layout original
      var textColumn = document.querySelector('.col-4.text-white');
      var imageColumn = document.querySelector('.col-1.collunm');

      textColumn.style.order = '2'; // Restaure a ordem original do texto
      imageColumn.style.display = 'block';
    }
  </script>

  <script>
    // Função para ajustar o layout com base na largura da viewport
    function adjustLayout() {
      var viewportWidth = window.innerWidth || document.documentElement.clientWidth;

      // Verifique se a largura da viewport é inferior a 800 pixels
      if (viewportWidth < 800) {
        // Ajuste os estilos para telas menores
        document.getElementById('productImage').style.width = '100%';
        document.getElementById('productDetails').style.width = '100%';
        document.getElementById('productDetails').style.marginTop = '20px'; // Adicione alguma margem para melhor espaçamento
      } else {
        // Resetar estilos para telas maiores
        document.getElementById('productImage').style.width = 'initial';
        document.getElementById('productDetails').style.width = 'initial';
        document.getElementById('productDetails').style.marginTop = 'initial';
      }
    }

    // Chame a função no carregamento da página e no redimensionamento da janela
    window.onload = adjustLayout;
    window.onresize = adjustLayout;
  </script>

</body>

</html>

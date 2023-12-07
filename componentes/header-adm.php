
<header class=" p-3 text-bg-dark ">
  <div class="">
    <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
      <a href="./../area-cliente/home.php" class="d-flex align-items-center mb-2 mb-lg-0 link-body-emphasis text-decoration-none">
        <img src="./../img/site/logo.png" class="logo"width="100" height="50" class="d-inline-block align-top" alt="">
        </a>
      <ul class="nav col-12 col-lg-auto mb-2 justify-content-center mb-md-0 ms-auto">
      </ul> 
      <div class="dropdown text-end">
        <a href="#" class="text-white d-block link-body-emphasis text-decoration-none dropdown-toggle"
          data-bs-toggle="dropdown" aria-expanded="false">

          <?php if ($_SESSION['imgAdm']==null) { ?>
              <img src="./../img/user/padrao.jpg" alt="mdo" width="32" height="32" class="rounded-circle">
             <?php } else { ?>
              <img src="./../../img/user/<?php echo $_SESSION['imgAdm']?>" alt="mdo" width="32" height="32" class="rounded-circle">
            <?php } ?> 

        </a>
        <ul class="dropdown-menu text-small">

         
          <li><a class="dropdown-item" href="logout.php">Sair</a></li>
        </ul>
    </div>
  </div>
</header>





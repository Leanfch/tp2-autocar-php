<?php
require_once "classes/Auto.php";

$marcaSeleccionada = $_GET['marca'] ?? FALSE;

$objeto = new Auto();

$catalogo = $objeto->catalogo_x_marca($marcaSeleccionada);

?>
<div class="container">

  <h1 class="fw-bold text-center my-5">Autos usados</h1>
  <div class="row align-items-center">
    <!-- CARD -->
    <?PHP foreach ($catalogo as $vehiculo) { ?>
      <div class="d-flex justify-content-center col-sm-6 col-xs-12 col-lg-4 col-xl-4">
        <div class="card mb-3">
          <a href="index.php?vista=vehiculo&id=<?= $vehiculo->getId() ?>" class="link-unstyled">
            <img src="./assets/img/<?= $vehiculo->getImagen(); ?>" alt="<?= $vehiculo->marca_modelo() ?>" class="card-img-top">
            <div class="card-body">
              <p class="fs-3 m-0 fw-bold card-title"><?= $vehiculo->marca_modelo() ?></p>
              <ul class="list-group list-group-flush">
                <li class="list-group-item"><strong>Version:</strong> <?= $vehiculo->getVersion(); ?></li>
                <li class="list-group-item"><strong>Año:</strong> <?= $vehiculo->getAnio(); ?></li>
                <li class="list-group-item"><strong>Motor:</strong> <?= $vehiculo->getMotor(); ?></li>
                <li class="list-group-item"><strong>Kilometraje:</strong> <?= $vehiculo->kilometraje_formateado(); ?> Kms.</li>
                <li class="list-group-item"><strong>Precio:</strong> <span class="fs-3 mx-3 precio-card">$<?= $vehiculo->precio_lindo(); ?></span></li>
              </ul>
            </div>
          </a>
        </div>
      </div>
    <?PHP } ?>
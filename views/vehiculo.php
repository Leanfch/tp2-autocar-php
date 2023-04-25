<?php
require_once "classes/Auto.php";
$idSeleccionada = $_GET['id'] ?? FALSE;
$miObjeto = new Auto();

$vehiculo = $miObjeto->catalogo_x_id($idSeleccionada);
?>

<div class="container">
  <?PHP if (!empty($vehiculo)) { ?>
    <h1 class="text-center my-4 fw-bold"><?= $vehiculo->marca_modelo() ?></h1>
    <div class="row">
      <div class="col-md-6">
        <img src="./assets/img/<?= $vehiculo->getImagen() ?>" alt="<?= $vehiculo->marca_modelo() ?>" class="img-fluid">
      </div>
      <div class="col-md-6 my-2">
        <ul>
          <li class="list-group-item fs-5"><strong>Versión:</strong> <?= $vehiculo->getVersion() ?></li>
          <li class="list-group-item fs-5"><strong>Año:</strong> <?= $vehiculo->getAnio() ?></li>
          <li class="list-group-item fs-5"><strong>Motor:</strong> <?PHP echo $vehiculo->getMotor();
                                                                    if ($vehiculo->getTurbo()) {
                                                                      echo " T";
                                                                    }
                                                                    ?></li>
          <li class="list-group-item fs-5"><strong>Combustible:</strong> <?= ucfirst($vehiculo->getCombustible()) ?></li>
          <li class="list-group-item fs-5"><strong>Transmisión:</strong> <?= ucfirst($vehiculo->getTransmision()) ?></li>
          <li class="list-group-item fs-5"><strong>Tracción:</strong> <?= ucfirst($vehiculo->getTraccion()) ?></li>
          <li class="list-group-item fs-5"><strong>Potencia:</strong> <?= ucfirst($vehiculo->getPotencia()) ?> CV</li>
          <li class="list-group-item fs-5"><strong>Cant. de bolsas de aire: </strong><span><?= $vehiculo->getAirbags() ?></span></li>
          <li class="list-group-item fs-5"><strong>Frenos con ABS: </strong><span class="no-bold"><?PHP if ($vehiculo->getAbs()) {
                                                                                                    echo "Si";
                                                                                                  } ?></span></li>
          <li class="list-group-item fs-5"><strong>Kilometraje:</strong> <span class="fs-3 kmFormat"><?= $vehiculo->kilometraje_formateado() ?> Kms.</span></li>
        </ul>
        <p class="mb-3 fw-bold mx-5 precio-card fs-1">$ <?= $vehiculo->precio_lindo() ?></p>
        <div class="col mx-5">
          <div class="row">
            <button class="buttonReservar">Reservar</button>
            <button class="buttonVisita my-3">Pedir una visita</button>
          </div>
        </div>
      </div>
    </div>
  <?PHP } else { ?>
    <div class="col">
      <h2 class="text-center mt-5">No se encuentran los productos que desea</h2>
    </div>
  <?PHP } ?>
</div>
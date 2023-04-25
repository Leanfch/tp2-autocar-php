<?PHP
require_once "classes/Auto.php";

$vista = $_GET['vista'] ?? "home";

$vistasValidas = [
  "home" => [
    "titulo" => "AutoCar - Bienvenidos"
  ],
  "nosotros" => [
    "titulo" => "Nuestra empresa"
  ],
  "contacto" => [
    "titulo" => "Contacta con nosotros"
  ],
  "catalogo" => [
    "titulo" => "Nuestros modelos"
  ],
  "catalogo_completo" => [
    "titulo" => "Nuestros modelos"
  ],
  "vehiculo" => [
    "titulo" => "Detalle"
  ],
  "oka" => [
    "titulo" => "Gracias por su mensaje"
  ],
  "alumno" => [
    "titulo" => "Datos del alumno"
  ]
];

if (!array_key_exists($vista, $vistasValidas)) {
  $seccion = "404";
  $titulo = "404 - Página no encontrada";
} else {
  $seccion = $vista;
  $titulo = $vistasValidas[$vista]['titulo'];
}

?>
<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <title>AutoCar | <?= $titulo ?></title>
</head>

<body>
  <header>
      <nav class="navbar navbar-expand-lg fw-bold" data-bs-theme="white">
        <div class="container-fluid container">
          <a class="navbar-brand mx-5" href="index.php?vista=home">
            <img src="assets/autocar-logo.png" alt="Logo lefetech" width="150" height="50" class="d-inline-block align-text-top mt-1">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Vehículos
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=chevrolet">Chevrolet</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=audi">Audi</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=bmw">BMW</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=fiat">Fiat</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=ford">Ford</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=honda">Honda</a></li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo&marca=volkswagen">Volkswagen</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a class="dropdown-item" href="index.php?vista=catalogo_completo">Ver todos</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="index.php?vista=contacto">Contacto</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="index.php?vista=nosotros">Sobre Nosotros</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="index.php?vista=alumno">Datos</a>
              </li>

            </ul>
          </div>
        </div>
      </nav>
  </header>
  <main>
    <?PHP
    require_once file_exists("views/$seccion.php") ? "views/$seccion.php" : "views/404.php";
    ?>
  </main>
  <footer class="d-flex text-dark mt-auto">
    <div class="container">
      <div class="row py-3">
        <a href="index.php?vista=home" class="logo-footer fs-4 text col-md-12 col-lg-4 d-flex justify-content-center align-items-center mb-2 text-reset text-decoration-none">
          <img src="assets/autocar-logo.png" alt="Logo Autocar" width="200" height="70">
        </a>
        <ul class="col-md-12 col-lg-4 list-unstyled text-center">
          <li>
            <a href="#" class="text-reset text-decoration-none mt-2 d-block">Términos y condiciones</a>
            <a href="#" class="text-reset text-decoration-none mt-2 d-block">Soporte</a>
            <a href="#" class="text-reset text-decoration-none mt-2 d-block">Política de privacidad</a>
          </li>
        </ul>
        <ul class="col-md-12 col-lg-3 list-unstyled">
          <li class="d-flex justify-content-around mt-4">
            <a href="#" class="text-reset text-decoration-none d-block"><img src="./assets/facebook.png" width="40" height="40" alt="Logo Facebook"></a>
            <a href="#" class="text-reset text-decoration-none d-block"><img src="./assets/twitter.png" width="40" height="40" alt="Logo Twitter"></a>
            <a href="#" class="text-reset text-decoration-none d-block"><img src="./assets/instagram.png" width="40" height="40" alt="Logo Instagram"></a>
          </li>
        </ul>
      </div>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</body>

</html>
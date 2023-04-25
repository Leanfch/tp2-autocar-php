<?PHP
if(!empty($_POST)){

$name = $_POST['name'];
$email = $_POST['emailAddress'];
$mensaje = $_POST['message']; ?>
<h1 class="text-center fs-1 mt-5 pt-5">Datos</h1>
<div class="container d-flex justify-content-center">
  <div class="card text-dark p-3 fs-3 mb-5">
    <ul class="list-unstyled">
      <li>El campo nombre contiene: <strong><?= $name ?></strong></li>
      <li>El campo email contiene: <strong><?= $email ?></strong></li>
      <li>El campo información adicional contiene: <strong><?= $mensaje ?></strong></li>
    </ul>
  </div>
</div>
<?PHP } else { ?>
  <div class="container">
    <h2 class="my-5 text-center fs-2">Por favor rellene el formulario con datos válidos</h2>
  </div>
  <?PHP } ?>
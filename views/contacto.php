<div class="container-fluid my-5">
  <div class="row justify-content-center">
    <div class="col-xl-10">
      <div class="card border-0 rounded-3 shadow-lg overflow-hidden">
        <div class="card-body p-0">
          <div class="row g-0">
            <div class="col-sm-6 d-none d-sm-block bg-image"></div>
            <div class="col-sm-6 p-4 containerForm">
              <div class="text-center">
                <h1 class="fw-bold fs-1 h1Form">Contactanos</h1>
                <p class="mb-4 fs-5 text-light">Envianos un mail y te contactaremos</p>
              </div>
              <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="index.php?vista=oka" method="POST">
                <div class="form-floating mb-3">
                  <input class="form-control" id="name" name="name" type="text" placeholder="Name" data-sb-validations="required" />
                  <label for="name">Nombre</label>
                </div>
                <div class="form-floating mb-3">
                  <input class="form-control" id="emailAddress" name="emailAddress" type="email" placeholder="Email Address" data-sb-validations="required,email" />
                  <label for="emailAddress">E-mail</label>
                </div>
                <div class="form-floating mb-3">
                  <textarea class="form-control" id="message" name="message" type="text" placeholder="Message" style="height: 10rem;" data-sb-validations="required"></textarea>
                  <label for="message">Mensaje</label>
                </div>
                <div class="d-grid">
                  <button class="btnForm btn btn-lg" id="submitButton" type="submit">Enviar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
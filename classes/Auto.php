<?PHP

class Auto
{

  protected int $id;
  protected string $marca;
  protected string $modelo;
  protected string $version;
  protected int $anio;
  protected string $carroceria;
  protected string $motor;
  protected bool $turbo;
  protected int $potencia;
  protected string $traccion;
  protected string $combustible;
  protected string $transmision;
  protected int $airbags;
  protected bool $abs;
  protected int $kilometraje;
  protected int $precio;
  protected string $imagen;


  /**
   * Devuelve el catalogo completo de todos los vehiculos disponibles
   * 
   * @return array un array de objetos Auto
   */
  public function catalogo_completo(): array
  {
    $catalogo = [];

    $JSON = file_get_contents("includes/productos.json");
    $JSONData = json_decode($JSON);

    foreach ($JSONData as $valor) {
      $auto = new self();

      $auto->id = $valor->id;
      $auto->marca = $valor->marca;
      $auto->modelo = $valor->modelo;
      $auto->version = $valor->version;
      $auto->anio = $valor->anio;
      $auto->carroceria = $valor->carroceria;
      $auto->motor = $valor->motor;
      $auto->turbo = $valor->turbo;
      $auto->potencia = $valor->potencia;
      $auto->traccion = $valor->traccion;
      $auto->combustible = $valor->combustible;
      $auto->transmision = $valor->transmision;
      $auto->airbags = $valor->airbags;
      $auto->abs = $valor->abs;
      $auto->kilometraje = $valor->kilometraje;
      $auto->precio = $valor->precio;
      $auto->imagen = $valor->imagen;

      $catalogo[] = $auto;
    }

    return $catalogo;
  }
  /**
   * Devuelve el catalogo de una marca en especifico
   * 
   * @param string marca para mostrar el catalogo especifico
   * @return Auto[] un array de una marca exclusivamente.
   */
  public function catalogo_x_marca(string $marca): array
  {

    $resultado = [];

    $catalogo = $this->catalogo_completo();

    foreach ($catalogo as $v) {
      if ($v->marca == $marca) {
        $resultado[] = $v;
      }
    }

    return $resultado;
  }

  /**
   * Puede devolver un array de un producto único por su ID
   * 
   * @return mixed devuelve un objeto auto o null
   */
  public function catalogo_x_id(int $id): ?Auto
  {

    $catalogo = $this->catalogo_completo();
    if(is_int($id)){
    foreach ($catalogo as $v) {
      if ($v->id == $id) {
        return $v;
      }
    }
    };
    
    return null;
  }

  /**
   * Devuelve el precio formateado correctamente
   */
  public function precio_lindo(): string
  {
    return number_format($this->precio, 2, ",", ".");
  }

  /**
   * Devuelve la marca y el modelo del vehiculo seleccionado
   */
  public function marca_modelo(): string
  {
    return ucfirst($this->marca) . ' ' . $this->modelo;
  }

  public function kilometraje_formateado(): string
  {
    return number_format($this->kilometraje, 0, ",", ".");
  }


  /**
   * Get the value of id
   */
  public function getId()
  {
    return $this->id;
  }

  /**
   * Get the value of marca
   */
  public function getMarca()
  {
    return $this->marca;
  }

  /**
   * Get the value of modelo
   */
  public function getModelo()
  {
    return $this->modelo;
  }

  /**
   * Get the value of version
   */
  public function getVersion()
  {
    return $this->version;
  }

  /**
   * Get the value of anio
   */
  public function getAnio()
  {
    return $this->anio;
  }

  /**
   * Get the value of carroceria
   */
  public function getCarroceria()
  {
    return $this->carroceria;
  }

  /**
   * Get the value of motor
   */
  public function getMotor()
  {
    return $this->motor;
  }

  /**
   * Get the value of turbo
   */
  public function getTurbo()
  {
    return $this->turbo;
  }

  /**
   * Get the value of potencia
   */
  public function getPotencia()
  {
    return $this->potencia;
  }

  /**
   * Get the value of traccion
   */
  public function getTraccion()
  {
    return $this->traccion;
  }

  /**
   * Get the value of combustible
   */
  public function getCombustible()
  {
    return $this->combustible;
  }

  /**
   * Get the value of transmision
   */
  public function getTransmision()
  {
    return $this->transmision;
  }

  /**
   * Get the value of airbags
   */
  public function getAirbags()
  {
    return $this->airbags;
  }

  /**
   * Get the value of abs
   */
  public function getAbs()
  {
    return $this->abs;
  }

  /**
   * Get the value of imagen
   */
  public function getImagen()
  {
    return $this->imagen;
  }
}

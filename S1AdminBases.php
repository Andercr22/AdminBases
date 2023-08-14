<?php
  $servername = "localhost";
  $username = "root";
  $password = "root";
  $dbname = "proyecto_abd";

  // Crear la conexión
  $conn = new mysqli($servername, $username, $password, $dbname);

  // Verificar la conexión
  if ($conn->connect_error) {
      die("Error de conexión: " . $conn->connect_error);
  }

  // Consulta para obtener nombres de procesos y preguntas
  $sql = "SELECT p.NAME AS process_name, p.DETAILS AS process_details, q.QUESTION AS question
          FROM PROCESS p, questionary q
          WHERE p.ID = q.PROCESS";

  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    echo "Se encontraron resultados.";
  }else{
    echo "No se encontraron resultados.";
  }

?>


<!DOCTYPE html>
<html>

<head>
  <title>LABD/EIF402-2C-2023-G1</title>
 <!-- Required meta tags -->
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">

 <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
   integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   
  <link rel="stylesheet" href="S1AdminBases.css">
  <script type="text/javascript" src="S1AdminBases.js"></script>
</head>
<header>
  
</header>
  <body>
    <!-- A vertical navbar -->
    <div class="navbar-container">
      <nav class="navbar navbar-expand-md navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand " style="color: darkred " href="#">UNA</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" style="color: darkred ;" href="#">Inicio</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" style="color: darkred ;" href="#">Cuestionario</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" style="color: darkred ;"
                  data-bs-toggle="dropdown" aria-expanded="false">
                  Dropdown
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
                  <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
              </li>
            </ul>
            <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-info" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>
    </div>
    <h1 class="bg-light" style="color: darkred ;">Cuestionario de control interno del proceso de administracion de BD.
    </h1>
    <h2 style="color: gray ;">1.Planificacion, Calidad, Riegos</h2>
    <div class="row">
      <div class="col">
        <div class="content-container">
          <div class="left-container">
            <div class="scrollable-table-container">


              <table class="" style="color: darkred ">

              
              <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        echo "Proceso: " . $row["process_name"] .  " - " .$row["process_details"] . " - Pregunta: " . $row["question"] . "<br>";
                    }
                  }

                // Cerrar la conexión
                $conn->close();
                ?>


                <tr>
                  <th>Proceso</th>
                  <th>Detalle</th>
                  <th>Pregunta</th>
                  <th>Sí</th>
                  <th>No</th>
                  <th>N/A</th>

                </tr>
                <tr>
                  <td>P01.1</td>
                  <td>Detalle </td>
                  <td>¿Se establece y mantiene un Sistema de Administración de Calidad (QMS) que define políticas y métodos para prever, detectar, corregir y prevenir no conformidades?</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P01.2</td>
                  <td>Detalle </td>
                  <td></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P01.3</td>
                  <td>Detalle </td>
                  <td></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P01.4</td>
                  <td>Detalle</td>
                  <td></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P01.5</td>
                  <td>Detalle</td>
                  <td></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P01.6</td>
                  <td>Detalle</td>
                  <td></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
              </table>
              <br>
              <table class=" " style="color: darkred ">

                <tr>
                  <th>Proceso</th>
                  <th>Detalle</th>
                  <th>Sí</th>
                  <th>No</th>
                  <th>N/A</th>

                </tr>
                <tr>
                  <td>P02.1</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P02.2</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P02.3</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P02.4</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P02.5</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P02.6</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
              </table>

              <br>
              <table class=" " style="color: darkred ">

                <tr>
                  <th>Proceso</th>
                  <th>Detalle</th>
                  <th>Sí</th>
                  <th>No</th>
                  <th>N/A</th>

                </tr>
                <tr>
                  <td>P03.1</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P03.2</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P03.3</td>
                  <td>Detalle </td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>

                </tr>
                <tr>
                  <td>P03.4</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P03.5</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
                <tr>
                  <td>P03.6</td>
                  <td>Detalle</td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                  <td><input type="checkbox"></td>
                </tr>
              </table>
            </div>
            <div class="d-flex justify-content-md-center">
              <button class="btn btn-outline-success" type="submit">Enviar</button>
              <button class="btn btn-outline-danger mx-2" id="limpiarBtn" type="submit">Limpiar</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
      </div>
    </div>
  </body>
  <footer>

  </footer>

</html>
<script src="script.js"></script>
</body>

</html>
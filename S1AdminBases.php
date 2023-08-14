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
<script>
        function Reassign() {
            var a = document.getElementsByName("reassignChecks");
            var b = document.getElementById("cb");
            if (b.checked==true) {
                for (var i = 0; i < a.length; i++) {
                    a[i].disabled = true;
                }
            }
            if (b.checked == false) {
                for (var i = 0; i < a.length; i++) {
                    a[i].disabled = false;
                }
            }
        }
    </script>

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
              <tr>
                  <th>Proceso</th>
                  <th>Detalle</th>
                  <th>Pregunta</th>
                  <th>Sí</th>
                  <th>No</th>
                  <th>N/A</th>

                </tr>
              
              <?php
              $contador = 0;
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                      $contador++; // Incrementamos el contador en cada iteración
                      $id = "radius" . $contador; 
                      echo <<<HTML
                      <tr>
                          <td>{$row["process_name"]}</td>
                          <td>{$row["process_details"]}</td>
                          <td>{$row["question"]}</td>
                          
                          <td><input value = "si" name = "{$id}" type="Radio"></td>
                          <td><input value = "no" name = "{$id}" type="Radio"></td>
                          <td><input value = "na" name = "{$id}" type="Radio"></td>
                          
                          
                      </tr>
                      HTML;
                      }
                  }
                  // Cerrar la conexión
                  $conn->close();
                  ?>
              </table>
            </div>
            <div class="d-flex justify-content-md-center">
              <button id="calculateColorBtn" class="btn btn-outline-success" type="button">Enviar</button>
              <button class="btn btn-outline-danger mx-2" id="limpiarBtn" type="submit">Limpiar</button>
            </div>
          </div>
        </div>
      </div>
      <div class=right-container>
        <img id="defaultImage" src="FeVerde.jpg" alt="Imagen por defecto"  width="720" height="580">
      </div>
    </div>
  </body>
  <footer>

  </footer>

</body>
<script src="S1AdminBases.js">
</script>
</html>
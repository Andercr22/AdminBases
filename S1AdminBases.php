<?php
// Connexion a MYSQL
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
$sql = "SELECT p.ID AS process_id, p.NAME AS process_name, p.DETAILS AS process_details, q.QUESTION AS question, q.INTEGRITY as integrity, q.AVAILABILITY as available, q.CONFIDENTIALITY as confidentiality, q.SOURCE as source
          FROM PROCESS p, questionary q
          WHERE p.ID = q.PROCESS";

$result = $conn->query($sql);

// Verificar si la consulta devuelve resultados
if ($result->num_rows > 0) {
    // Inicializar un array para almacenar las preguntas por proceso
    $preguntas_por_proceso = array();

    // Recorrer los resultados y agrupar por proceso
    while ($row = $result->fetch_assoc()) {
        $process_id = $row["process_id"];

        if (!isset($preguntas_por_proceso[$process_id])) {
            $preguntas_por_proceso[$process_id] = array();
        }

        $preguntas_por_proceso[$process_id][] = $row;
    }
} else {
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
    <style>
        .additional-table {
            display: none;
        }
    </style>
</head>
<header>
    <?php include('header.php'); ?>
</header>
<script>
    function Reassign() {
        var a = document.getElementsByName("reassignChecks");
        var b = document.getElementById("cb");
        if (b.checked == true) {
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

    <h1 class="bg-light" style="color: darkred;">Cuestionario de control interno del proceso de administración de BD.
    </h1>
    <h2 style="color: gray;">1. Tareas de un administrador de bases de datos</h2>
    <div class="row">
        <div class="col-md-8">
            <div class="content-container">
                <div class="left-container">
                    <div class="scrollable-table-container">
                        <div class="d-flex justify-content-between mt-3">
                            <?php
                            // Genera los botones y las tablas adicionales
                            for ($i = 1; $i <= 12; $i++) {
                                $detalle_proceso = isset($preguntas_por_proceso[$i][0]["process_details"]) ? $preguntas_por_proceso[$i][0]["process_details"] : "Detalle Proceso $i";

                                echo "<button class='btn btn-outline-primary m-2 p-3' style='border-radius: 15px;' onclick='mostrarTabla($i)'>$detalle_proceso</button>";
                            
                            }
                            ?>
                        </div>

                        <?php
                        $contador = 0;
                        if ($result->num_rows > 0) {
                            // Comienza el bucle para las tablas
                            for ($i = 1; $i <= 12; $i++) {
                                echo "<table class='tabla-oculta' style='color: darkred; display: none;'>";
                                echo "<tr>
                                        <th>Procesos</th>
                                        <th>Detalle</th>
                                        <th>Fuente</th>
                                        <th>Pregunta</th>
                                        <th>I</th>
                                        <th>D</th>
                                        <th>C</th>
                                        <th>Sí</th>
                                        <th>No</th>
                                        <th>N/A</th>
                                      </tr>";

                                // Obtén las preguntas del proceso actual
                                $preguntas_del_proceso = isset($preguntas_por_proceso[$i]) ? $preguntas_por_proceso[$i] : array();

                                // Bucle para las filas dentro de cada tabla
                                foreach ($preguntas_del_proceso as $row) {
                                    $contador++;
                                    $id = "radius" . $contador;

                                    echo "<tr>
                                            <td>{$row["process_name"]}</td>
                                            <td>{$row["process_details"]}</td>
                                            <td>{$row["source"]}</td>
                                            <td>{$row["question"]}</td>
                                            <td><option value='integrity'>{$row["integrity"]}</option></td>
                                            <td><option value='available'>{$row["available"]}</option></td>
                                            <td><option value='confidentiality'>{$row["confidentiality"]}</option></td>
                                            <td><input value='si' name='{$id}' type='Radio'></td>
                                            <td><input value='no' name='{$id}' type='Radio'></td>
                                            <td><input value='na' name='{$id}' type='Radio' checked></td>
                                          </tr>";
                                }

                                echo "</table>"; // Cierra la tabla actual
                            }
                        }
                        // Cerrar la conexión
                        $conn->close();
                        ?>
                    </div>
                    <div class="d-flex justify-content-md-center">
                        <button id="calculateColorBtn" class="btn btn-outline-success" type="button">Enviar</button>
                        <button class="btn btn-outline-danger mx-2" id="limpiarBtn" type="submit">Limpiar</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="right-container">
                <img class="defaultImage" id="defaultImage" src="FeRojo.jpg" alt="Imagen por defecto">
            </div>
            <div class=right-container>
                <div class="container">
                    <label for="integrity">INTEGRIDAD</label>
                    <img class="defaultImage" id="defaultImage3" name="integrity" src="FeRojo.jpg"
                        alt="Imagen por defecto">
                </div>
                <div class="container">
                    <label for="availability">DISPONIBILIDAD</label>
                    <img class="defaultImage" id="defaultImage2" name="availability" src="FeRojo.jpg"
                        alt="Imagen por defecto">
                </div>
                <div class="container">
                    <label for="confidenciality">CONFIDENCIALIDAD</label>
                    <img class="defaultImage" id="defaultImage1" name="confidenciality" src="FeRojo.jpg"
                        alt="Imagen por defecto">
                </div>
            </div>
        </div>
    </div>
</body>
<footer>
</footer>
</body>
<script src="S1AdminBases.js"></script>
<script>
    function mostrarTabla(numero) {
        
        // Ocultar todas las tablas
        var tablas = document.getElementsByClassName('tabla-oculta');
        for (var i = 0; i < tablas.length; i++) {
            tablas[i].style.display = 'none';
        }
        var radios = document.querySelectorAll('input[type="radio"]');
        for (var i = 0; i < radios.length; i++) {
            radios[i].checked = radios[i].value === 'na';
        }
        // Mostrar la tabla seleccionada
        var tablaSeleccionada = document.getElementsByClassName('tabla-oculta')[numero - 1];
        if (tablaSeleccionada) {
            tablaSeleccionada.style.display = 'table'; // Puedes ajustar el estilo según sea necesario
        }
    }
</script>
</html>

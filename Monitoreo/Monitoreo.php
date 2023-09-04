<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="../S1AdminBases.css">
    <link rel="stylesheet" href="../Grafica.css">
    <script type="text/javascript" src="Monitoreo.js"></script>
    <title>Monitoreo</title>
</head>
<header>
    <?php include('../Header.php'); ?>
</header>

<body>

<?php
// Establecer la conexión a Oracle
$oracle_conn = oci_connect("system", "root", "localhost/XE");

if (!$oracle_conn) {
    $error = oci_error();
    die("Error en la conexión a Oracle: " . $error['message']);
}

// Declarar variables para capturar los resultados
$total_cache_size = 0;
$cache_used_mb = 0;
$free_cache_mem = 0;

// Preparar la llamada al procedimiento almacenado
$plsql = "BEGIN sys.P001(:total_cache_size, :cache_used_mb, :free_cache_mem); END;";
$stmt = oci_parse($oracle_conn, $plsql);

// Asignar valores a los parámetros
oci_bind_by_name($stmt, ":total_cache_size", $total_cache_size, 32);
oci_bind_by_name($stmt, ":cache_used_mb", $cache_used_mb, 32);
oci_bind_by_name($stmt, ":free_cache_mem", $free_cache_mem, 32);

// Ejecutar el procedimiento almacenado
oci_execute($stmt)


?>





<h1 style="color: darkred ">Monitoreo y Análisis de las Principales Estructuras de Memoria del Sistema Administrador de Bases de
            Datos </h1>
    <div class="container">
       
        

        <div class="row justify-content-center" style="padding:100px">
            <div class="col">
                <h4 style="color:   gray">ESTADO DEL BUFFER DEL CACHE</h4>
                <div class="scrollable-table-container">
                    <table class="" style="color: darkred ">
                        <tr>
                            <th>SIZE (MB)</th>
                            <th>USED (MB)</th>
                            <th>FREE (MB)</th>

                        </tr>

                        <tr>
                            <td><?php echo $total_cache_size ?></td>
                            <td><?php echo $cache_used_mb ?></td>
                            <td><?php echo $free_cache_mem ?></td>
                        </tr>
                    </table>
                </div>

            </div>
            <div class="col">
                <h4 style="color:   gray">GRAFICA DEL ESTADO DEL BUFER DE CACHE</h4>
                <div style="color: darkred " class="sub_board">
                    <div class="sep_board"></div>
                    <div class="cont_board">
                        <div class="graf_board">
                            <div class="barra">
                                <div class="sub_barra b5">
                                    <div class="tag_g"><?php echo $total_cache_size ?></div>
                                    <div class="tag_leyenda">SIZE</div>
                                </div>
                            </div>

                            <div class="barra">
                                <div class="sub_barra b3">
                                    <div class="tag_g"><?php echo $cache_used_mb ?></div>
                                    <div class="tag_leyenda">USED</div>
                                </div>
                            </div>

                            <div class="barra">
                                <div class="sub_barra b5">
                                    <div class="tag_g"><?php echo $free_cache_mem ?></div>
                                    <div class="tag_leyenda">FREE</div>
                                </div>
                            </div>
                        </div>
                        <div class="tag_board">
                            <div class="sub_tag_board">
                                <div>1000</div>
                                <div>800</div>
                                <div>700</div>
                                <div>600</div>
                                <div>500</div>
                                <div>400</div>
                                <div>300</div>
                                <div>200</div>
                                <div>100</div>
                                <div>10</div>
                            </div>
                        </div>
                    </div>
                    <div class="sep_board"></div>
                </div>
            </div>


        </div>
        <div style="text-align: center;">
        <a href="../Monitoreo/realtimeMonitoreo" class="btn btn-outline-info" role="button">REAL TIME MONITOREO</a>
</div>
    </div>

  <?php  
// Liberar recursos
oci_free_statement($stmt);

// Cerrar la conexión a Oracle
oci_close($oracle_conn);


?>
</body>

</html>
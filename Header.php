
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

<!-- A vertical navbar -->
<script type="text/javascript" src="Header.js"></script>
<div class="navbar-container">
		
        <nav class="navbar navbar-expand-md navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand " style="color: darkred " href="#">UNA</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<?php 
							$ruta_actual = $_SERVER['REQUEST_URI'];

								// Remove the query string from the current URL
								$ruta_actual_sin_query = strtok($ruta_actual, '?');

								// Define the target URL without the domain and protocol
								$target_url = "/AdminBases/S1AdminBases.php";

								if ($ruta_actual_sin_query == $target_url) {

						?>
						<li
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" style="color: darkred ;" href="#">Inicio</a>
                        </li>
						<?php
							}
							else{
						?>
						<li
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" style="color: darkred ;" href="../S1AdminBases.php">Inicio</a>
                        </li>
						<?php
							}
						?>
						<?php 
						
							$ruta_actual = $_SERVER['REQUEST_URI'];

								// Remove the query string from the current URL
								$ruta_actual_sin_query = strtok($ruta_actual, '?');

								// Define the target URL without the domain and protocol
								$target_url = "/AdminBases/Monitoreo/Monitoreo.php";

								if ($ruta_actual_sin_query == $target_url) {

						?>
						<li class="nav-item">
                            <a class="nav-link" style="color: darkred ;" href="#" id="monitoreoLink">Monitoreo</a>
                        </li>
						<?php
							}
							else{
						?>
                        <li class="nav-item">
                            <a class="nav-link" style="color: darkred ;" href="Monitoreo/Monitoreo.php" id="monitoreoLink">Monitoreo</a>
                        </li>
                      <?php
							}
						?>
                        <!--<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                style="color: darkred ;" data-bs-toggle="dropdown" aria-expanded="false">
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
-->
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-info" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
	
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
oci_execute($stmt);

// Crear un array con los datos
$data = array(
    "total_cache_size" => $total_cache_size,
    "cache_used_mb" => $cache_used_mb,
    "free_cache_mem" => $free_cache_mem
);

// Devolver los datos en formato JSON
echo json_encode($data);
?>
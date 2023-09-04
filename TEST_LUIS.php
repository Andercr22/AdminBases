<?php
$oracle_conn = oci_connect("system", "Hubble!0812", "localhost/XE");

if (!$oracle_conn) {
    $error = oci_error();
    die("Error en la conexión a Oracle: " . $error['message']);
}

// Declarar un cursor
$cursor = oci_new_cursor($oracle_conn);
$v_total_cache_size = null;
$v_cache_used_MB = null;
$v_free_cache_MEM = null;

// Preparar la llamada al procedimiento almacenado
$plsql = "BEGIN sys.P001(:cursor); END;";
$stmt = oci_parse($oracle_conn, $plsql);

// Asignar valores a los parámetros (en este caso, solo un cursor)
oci_bind_by_name($stmt, ":cursor", $cursor, -1, OCI_B_CURSOR);

// Ejecutar el procedimiento almacenado
if (oci_execute($stmt)) {
    // Definir los nombres de las columnas que se van a recuperar

    oci_define_by_name($stmt, 'v_total_cache_size', $v_total_cache_size);
    oci_define_by_name($stmt, 'v_cache_used_MB', $v_cache_used_MB);
    oci_define_by_name($stmt, 'v_free_cache_MEM', $v_free_cache_MEM);

    // Recuperar y mostrar los resultados del cursor
    while (oci_fetch($cursor)) {
        echo "Tamaño total de la caché: " . $v_total_cache_size . "<br>";
        echo "Memoria caché utilizada: " . $v_cache_used_MB . "<br>";
        echo "Memoria caché libre: " . $v_free_cache_MEM . "<br>";
    }
} else {
    $error = oci_error($stmt);
    die("Error al ejecutar el procedimiento almacenado: " . $error['message']);
}
// Liberar recursos
oci_free_statement($stmt);
oci_free_statement($cursor);

 

// Cerrar la conexión a Oracle

?>
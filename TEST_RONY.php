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
if (!oci_execute($stmt, OCI_DEFAULT)) {
    $error = oci_error($stmt);
    die("Error al ejecutar el procedimiento almacenado: " . $error['message']);
}



// Definir las columnas que se van a recuperar DESPUÉS de ejecutar el procedimiento almacenado
oci_define_by_name($cursor, 'v_total_cache_size', $v_total_cache_size);
oci_define_by_name($cursor, 'v_cache_used_MB', $v_cache_used_MB);
oci_define_by_name($cursor, 'v_free_cache_MEM', $v_free_cache_MEM);



// Obtener y mostrar los resultados del cursor usando oci_fetch_assoc
while ($row = oci_fetch_row($cursor)) {
    echo "Tamaño total de la caché: " . $row[0] . "<br>";
    echo "Memoria caché utilizada: " . $row[1] . "<br>";
    echo "Memoria caché libre: " . $row[2] . "<br>";
}

 

// Liberar recursos
oci_free_statement($stmt);
oci_free_statement($cursor);

 

// Cerrar la conexión a Oracle
oci_close($oracle_conn);

 

?>
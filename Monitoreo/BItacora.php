<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitacora</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="../S1AdminBases.css">
</head>
<header>
    <?php include('../Header.php'); ?>
</header>

<body>


<h1 style="color: darkred ">Monitoreo y Análisis de las Principales Estructuras de Memoria del Sistema Administrador de Bases de
            Datos </h1>
    <div style="text-align: center;">
    <h3 style="color: gray">Reporte de Procesos SQL y PL/SQL<h4>
</div>

    <div class="container">
    <button type="button" class="btn btn-danger">PDF</button>
        <div class="scrollable-table-container">
            <table class="" style="color: darkred ">
                <tr>
                    <th>TIMESTAMP</th>
                    <th>PROCESSID</th>
                    <th>USED</th>
                    <th>SQLTEXT</th>
                </tr>

              

<?php

// Ruta al script de Python
$pythonScript = '../Call_P002.py'; // Reemplaza con la ruta al script de Python

// Ejecutar el script de Python
exec("C:\Users\kairo\AppData\Local\Programs\Python\Python311\python.exe $pythonScript", $output, $returnCode);

// exec("python $pythonScript", $output, $returnCode);


// Verificar si se ejecutó con éxito (código de retorno 0)
if ($returnCode === 0) {
    // Mostrar la salida del script
    $counter = 0;
    foreach ($output as $line) {
        $counter++;
        // Dividir la línea en dos partes usando ":" como delimitador
        list($key, $value) = explode(": ", $line, 2);
        // Almacenar el valor en una variable con el nombre similar a la clave
        $data[$key] = $value;

        if ($counter % 4 == 0) {
?>
        <tr>
            <td><option value="opcion0"> <?php echo $data["Timestamp"] ?></option></td>
            <td><option value="opcion0"><?php  echo $data["Username"]?></option></td>
            <td><option value="opcion0"><?php echo $data["PID"] ?></option></td>
            <td><option value="opcion0"><?php  echo $data["SQL Text"]?></option></td>
        </tr>
        
<?php
        $data = [];    
        }
        
}

} else {
    // Mostrar un mensaje de error en caso de fallo
    echo "Código de retorno: $returnCode";
}
?>
                
            </table>
        </div>
        
    </div>

</body>
</html>
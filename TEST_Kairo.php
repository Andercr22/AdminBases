<?php

// Ruta al script de Python
$pythonScript = 'C:\wamp64\www\proyecto_abd\Calling_Store_procedure.py'; // Reemplaza con la ruta al script de Python

// Ejecutar el script de Python
exec("C:\Users\kairo\AppData\Local\Programs\Python\Python311\python.exe $pythonScript", $output, $returnCode);

// Verificar si se ejecutó con éxito (código de retorno 0)
if ($returnCode === 0) {
    // Mostrar la salida del script
    foreach ($output as $line) {
        echo $line . "<br>";
    }
} else {
    // Mostrar un mensaje de error en caso de fallo
    echo "Me cago en Johnny. Código de retorno: $returnCode";
}
?>

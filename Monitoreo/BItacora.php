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
    <h3 style="color: gray">Bitacora y Análisis<h4>
</div>

    <div class="container">
    <button type="button" class="btn btn-danger">PDF</button>
        <div class="scrollable-table-container">
            <table class="" style="color: darkred ">
                <tr>
                    <th>DAY</th>
                    <th>TIME</th>
                    <th>PROCESSID</th>
                    <th>USED</th>
                    <th>SQLTEXT</th>
                </tr>

                <tr>
                    <td><option value="opcion0">0</option></td>
                    <td><option value="opcion0">0</option></td>
                    <td><option value="opcion0">0</option></td>
                    <td><option value="opcion0">0</option></td>
                    <td><option value="opcion0">0</option></td>
                </tr>
            </table>
        </div>
        
    </div>

</body>
</html>
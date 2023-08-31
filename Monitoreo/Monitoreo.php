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




    <div class="scrollable-table-container">
        <table class="" style="color: darkred ">
            <tr>
                <th></th>
                <th></th>
                <th>STATUS</th>
                <th>HWM</th>
                <th>DIAS SATURACIÓN</th>
            </tr>

            <tr>
                <td>PRODUCCIÓN</td>
                <td>
                    <div class="stacked-progress">
                        <div class="progress-bar bar1" style="width: 30%;"></div>
                        <div class="progress-bar bar2" style="width: 50%;"></div>
                        <div class="progress-bar bar3" style="width: 20%;"></div>
                    </div>
                </td>
                <td></td>
                <td>
                    <option value="opcion0">0</option>
                </td>
                <td>
                    <option value="opcion0">0</option>
                </td>
            </tr>
        </table>
    </div>
    
        <a href="../Monitoreo/realtimeMonitoreo" class="btn btn-primary" role="button">REAL TIME MONITOREO</a>

        <div class="container">
            <h2>Monitoreo y Análisis de las Principales Estructuras de Memoria del Sistema Administrador de Bases de
                Datos </h2>

        <div class="row">
            <div class="col">
                <h3>ESTADO DEL BUFFER DEL CACHE</h3>
                <div class="scrollable-table-container">
        <table class="" style="color: darkred ">
            <tr>
                <th>SIZE (MB)</th>
                <th>USED (MB)</th>
                <th>FREE (MB)</th>
                
            </tr>

            <tr>
                <td>3124</td>
                <td>5123</td>
                <td>100</td> 
            </tr>
        </table>
    </div>

            </div>
            <div class="col">
                <h3>GRAFICA DEL ESTADO DEL BUFER DE CACHE</h3>
                <div class="sub_board">
            <div class="sep_board"></div>
            <div class="cont_board">
                <div class="graf_board">
                    <div class="barra">
                        <div class="sub_barra b1">
                            <div class="tag_g">35%</div>
                            <div class="tag_leyenda">día 1</div>
                        </div>
                    </div>
                    <div class="barra">
                        <div class="sub_barra b2">
                            <div class="tag_g">45%</div>
                            <div class="tag_leyenda">día 2</div>
                        </div>
                    </div>
                    <div class="barra">
                        <div class="sub_barra b3">
                            <div class="tag_g">55%</div>
                            <div class="tag_leyenda">día 3</div>
                        </div>
                    </div>
                    <div class="barra">
                        <div class="sub_barra b4">
                            <div class="tag_g">75%</div>
                            <div class="tag_leyenda">día 4</div>
                        </div>
                    </div>
                    <div class="barra">
                        <div class="sub_barra b5">
                            <div class="tag_g">85%</div>
                            <div class="tag_leyenda">día 5</div>
                        </div>
                    </div>
                </div>
                <div class="tag_board">
                    <div class="sub_tag_board">
                        <div>100</div>
                        <div>90</div>
                        <div>80</div>
                        <div>70</div>
                        <div>60</div>
                        <div>50</div>
                        <div>40</div>
                        <div>30</div>
                        <div>20</div>
                        <div>10</div>
                    </div>
                </div>
           </div> 
            <div class="sep_board"></div>
       </div>    
            </div>


        </div>

        </div>

</body>

</html>
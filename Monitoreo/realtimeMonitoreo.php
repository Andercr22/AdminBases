<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="../S1AdminBases.css">
    <link rel="stylesheet" href="../Grafica.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/chartjs-plugin-annotation/2.2.1/chartjs-plugin-annotation.min.js" integrity="sha512-qF3T5CaMgSRNrxzu69V3ZrYGnrbRMIqrkE+OrE01DDsYDNo8R1VrtYL8pk+fqhKxUBXQ2z+yV/irk+AbbHtBAg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <title>RealTimeMonitoreo</title>

</head>
<header>
    <?php include('../Header.php'); ?>
</header>
<style>
#chart {
    max-width: 650px;
    margin: 35px auto;
}

#real-time-chart {
    width: 400px;
    height: 200px;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
// Replace Math.random() with a pseudo-random number generator to get reproducible results in e2e tests
// Based on https://gist.github.com/blixt/f17b47c62508be59987b
var _seed = 42;
Math.random = function() {
    _seed = _seed * 16807 % 2147483647;
    return (_seed - 1) / 2147483646;
};
</script>
<script>
var lastDate = 0;
var data = []
var TICKINTERVAL = 86400000
let XAXISRANGE = 777600000

function getDayWiseTimeSeries(baseval, count, yrange) {
    var i = 0;
    while (i < count) {
        var x = baseval;
        var y = Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min;

        data.push({
            x,
            y
        });
        lastDate = baseval
        baseval += TICKINTERVAL;
        i++;
    }
}

getDayWiseTimeSeries(new Date('11 Feb 2017 GMT').getTime(), 10, {
    min: 10,
    max: 90
})

function getNewSeries(baseval, yrange) {
    var newDate = baseval + TICKINTERVAL;
    lastDate = newDate

    for (var i = 0; i < data.length - 10; i++) {
        // IMPORTANT
        // we reset the x and y of the data which is out of drawing area
        // to prevent memory leaks
        data[i].x = newDate - XAXISRANGE - TICKINTERVAL
        data[i].y = 0
    }

    data.push({
        x: newDate,
        y: Math.floor(Math.random() * (yrange.max - yrange.min + 1)) + yrange.min
    })
}

function resetData() {
    // Alternatively, you can also reset the data at certain intervals to prevent creating a huge series 
    data = data.slice(data.length - 10, data.length);
}
</script>
<script>
window.Promise ||
    document.write(
        '<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"><\/script>'
    )
window.Promise ||
    document.write(
        '<script src="https://cdn.jsdelivr.net/npm/eligrey-classlist-js-polyfill@1.2.20171210/classList.min.js"><\/script>'
    )
window.Promise ||
    document.write(
        '<script src="https://cdn.jsdelivr.net/npm/findindex_polyfill_mdn"><\/script>'
    )
</script>

<body>
    <h1 style="color: darkred ">Monitoreo y Análisis de las Principales Estructuras de Memoria del Sistema Administrador
        de Bases de
        Datos </h1>
       
    <div class="container"><div class="text-center" style="color:gray"><h4 >Monitoreo en Tiempo Real con HighWaterMark</h4>
        </div>
    <div class="scrollable-table-container">
            <table class="" style="color: darkred ">
                <tr>
                    <th>ORACLE</th>
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
                    <td><img src="Cg.png" width="20" height="20"></td>
                    <td>
                    <?php echo $total_cache_size * 0.85?> MB
                    </td>
                    <td>
                        <option value="opcion0">0</option>
                    </td>
                </tr>
            </table>
        </div>
    </div>

    <div class="container"><canvas id="realtime-chart"></canvas></div>
    





</body>

<script>
// Configuración inicial del gráfico
var ctx = document.getElementById('realtime-chart').getContext('2d');
var data = {
    labels: [], // Etiquetas vacías para el eje X
    datasets: [{
        label: 'Valor en tiempo real',
        data: [], // Datos vacíos para comenzar
        borderColor: 'blue',
        borderWidth: 1,
        fill: false
    }]
};
var hwm = <?php echo $total_cache_size ?> * 0.85;
var config = {
    type: 'line',
    data: data,
    options: {
        scales: {
            x: {
                type: 'linear',
                position: 'bottom'
            },
            y: {
                beginAtZero: true,
                ticks: {
                    callback: function(value, index, values) {
                        // Agrega la etiqueta a la barra horizontal roja
                        if (value === hwm) {
                            return 'Límite de advertencia';
                        } else {
                            return value;
                        }
                    }
                }
            }
        },
        animation: false,
        plugins: {
            annotation: {
                annotations: [
                    {
                        type: 'line',
                        mode: 'horizontal',
                        scaleID: 'y',
                        borderColor: 'red', // Color de la línea de advertencia
                        borderWidth: 2, // Ancho de la línea de advertencia
                        value: hwm, // El valor en el eje Y donde se coloca la línea de advertencia
                        label: {
                            content: 'Límite de advertencia', // Contenido de la etiqueta
                            enabled: true // Habilita la etiqueta
                        }
                    }
                ]
            }
        }           
    }
};

var chart = new Chart(ctx, config);

// Función para agregar un nuevo punto de datos al gráfico
function addData(chart, label, data) {
    chart.data.labels.push(label);
    chart.data.datasets[0].data.push(data);

// Verificar si el valor supera el límite de advertencia
if (data > hwm) {
        // Muestra una alerta o realiza alguna acción de advertencia aquí
        alert('¡El valor supera el límite de advertencia!');
    }

    chart.update();
}

// Simula la actualización de datos en tiempo real
var labelCounter = 0;
setInterval(function() {
    labelCounter++;
    var randomValue = <?php echo $cache_used_mb ?>;
    addData(chart, labelCounter, randomValue);
}, 1000); // Actualiza cada segundo
</script>

<div style="text-align: center;">
    <a href="Bitacora.php" class="btn btn-outline-info" role="button">BITACORA</a>
</div>

</html>
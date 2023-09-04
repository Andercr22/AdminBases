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
    <div class="container">

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
    </div>


    <canvas id="realtime-chart" ></canvas>





</body>

<script>

// Configuración inicial del gráfico
        var ctx = document.getElementById('realtime-chart').getContext('2d');
        var data = {
            labels: [],  // Etiquetas vacías para el eje X
            datasets: [{
                label: 'Valor en tiempo real',
                data: [],  // Datos vacíos para comenzar
                borderColor: 'blue',
                borderWidth: 1,
                fill: false
            }]
        };

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
                        beginAtZero: true
                    }
                },
                animation: false
            }
        };

        var chart = new Chart(ctx, config);

        // Función para agregar un nuevo punto de datos al gráfico
        function addData(chart, label, data) {
            chart.data.labels.push(label);
            chart.data.datasets[0].data.push(data);

          

            chart.update();
        }

        // Simula la actualización de datos en tiempo real
        var labelCounter = 0;
        setInterval(function () {
            labelCounter++;
            var randomValue = <?php echo $total_cache_size ?>;
            addData(chart, labelCounter, randomValue);
        }, 5000); // Actualiza cada segundo
    </script>
</script>
<div style="text-align: center;">
    <a href="Bitacora.php" class="btn btn-outline-info" role="button">BITACORA</a>
</div>

</html>
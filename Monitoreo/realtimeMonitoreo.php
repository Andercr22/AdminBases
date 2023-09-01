<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="../S1AdminBases.css">
    <link rel="stylesheet" href="../Grafica.css">
    <script type="text/javascript" src="Monitoreo.js"></script>
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
<h1 style="color: darkred ">Monitoreo y Análisis de las Principales Estructuras de Memoria del Sistema Administrador de Bases de
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
    <div id="chart"></div>


    

    <script>
    var options = {
        series: [{
            data: data.slice()

        }],
        chart: {
            id: 'realtime',
            height: 350,
            type: 'line',
            animations: {
                enabled: true,
                easing: 'linear',
                dynamicAnimation: {
                    speed: 1000
                }
            },
            toolbar: {
                show: false
            },
            zoom: {
                enabled: false
            }
        },
        dataLabels: {
            enabled: false
        },
        stroke: {
            curve: 'smooth'
        },
        title: {
            text: 'BUFFER',
            align: 'left'
        },
        markers: {
            size: 0
        },
        xaxis: {
            type: 'datetime',
            range: XAXISRANGE,
        },
        yaxis: {
            max: 1000
        },
        legend: {
            show: false
        },
    };

    var chart = new ApexCharts(document.querySelector("#chart"), options);
    chart.render();


    window.setInterval(function() {
        getNewSeries(lastDate, {
            min: 100,
            max: 900
        })

        chart.updateSeries([{
            data: data
        }])
    }, 1000)
    </script>
    <div style="text-align: center;">
    <a href="Bitacora.php" class="btn btn-outline-info" role="button">BITACORA</a>
    </div>
</body>

</html>
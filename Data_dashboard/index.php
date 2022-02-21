<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Trading data</title>
<!-- referencia a jQuery y a Highcharts -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src="http://code.highcharts.com/highcharts.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
</head>
<?php include "backend.php"; ?>
    <body>
        <nav id="topNav" class="navbar fixed-to navbar-expand-lg navbar-dark bg-dark"> 

        <img src="ts.png" width='100px' height='100px' alt="logo/brand">
        <h1 style='color:white'> Trading Stats </h1>

        <div class="navbar-collapse collapse"> 

            <ul class="navbar-nav ml-auto">

            <li class="nav-item"> <a class="nav-link" href="https://www.uib.cat/">UIB</a> </li>

            <li class="nav-item"> <a class="nav-link" href="#">Data Source</a> </li>

            </ul>

        </div>

        </nav>
        <!-- div que contendrá la gráfica circular -->
        <div id="pie" style="width: 50%; height: 350px; margin: 0 auto;float:left;"></div> <!--performance-->
         <!-- div que contendrá la gráfica circular -->
        <div id="column" style="width: 50%; height: 350px; margin: 0 auto;float:right;"></div> <!--pair frequency-->

        <div style="border-top:1px solid #CDCDCD;margin:10px;padding:0;clear:both;"></div> <!--border-->

        <!-- div que contendrá la gráfica lineal -->
        <div id="linea" style="width: 50%; height: 350px; margin: auto;"> <!--trades-->
        
        </div>

    </body>

    <script>
        $('#linea').highcharts({
            chart: {
                type: 'line',  // tipo de gráfica
                borderWidth: 0 // ancho del borde de la gráfica
                //renderTo: 'container'
            },
            title: {
                text: 'Trades', // título
                x: -20 
            },
            subtitle: {
                text: 'September 2019', // subtítulo
                x: -20
            },
            xAxis: {
                
            },
            yAxis: {
                title: {
                    text: 'Profit (million)' // nombre del eje de Y
                }

            },
            tooltip: {
                valueSuffix: ' Million' // el sufijo de la información presente en el "tooltip"
            },
            legend: { // configuración de la leyenda
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom',
                borderWidth: 1
            },
            series: [
                {
                    name: 'Tom',
                    data: [<?php echo join($trades_tom, ','); ?>],
                    color: '#33FF8D'
                }, 
                {
                    name: 'Jordan',
                    data: [<?php echo join($trades_jordan, ','); ?>],
                    color: '#FF3364'
                }
            ]
                
        });
    </script>

    <script>
        $('#pie').highcharts({
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Performance'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    accessibility: {
        point: {
            valueSuffix: '%'
        }
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Performance',
        colorByPoint: true,
        data: [{
            name: 'Profit',
            y: <?php echo $ratio_prof; ?>
        }, {
            name: 'Loss',
            color: '#FF5733',
            y: <?php echo $ratio_loss; ?>
        }]
    }]
});

    </script>

<script>
    var xdata_viewer = <?php echo $xdata; ?>;
    var ydata_viewer = <?php echo $ydata; ?>;
        $('#column').highcharts({
            chart: {
                type: 'column',  // tipo de gráfica
                borderWidth: 0 // ancho del borde de la gráfica
                //renderTo: 'container'
            },
            title: {
                text: 'Pair frequency', // título
                x: -20 
            },
            subtitle: {
                text: 'September 2019', // subtítulo
                x: -20
            },
            legend: { // configuración de la leyenda
                layout: 'horizontal',
                align: 'center',
                verticalAlign: 'bottom',
                borderWidth: 1
            },
            xAxis: {
                categories: xdata_viewer
            },
            series: [
                {
                    name: 'Forex Pairs',
                    data: ydata_viewer
                }
            ]
                
        });

    </script>
</html>
<!--All php procedures necessaries in order to extract required data from db-->
<?php

include "conection.php";

$trades_tom;
$trades_jordan;
$ratio_prof;
$ratio_loss;
$pair_freq;
$xdata;
$ydata;

loadTradesTom();
loadTradesJordan();
loadPerformance();
loadPairFreq();

function loadTradesTom(){
    global $con, $trades_tom;

    $query="SELECT DAY(CloseTime) as day, SUM(Profit) as val FROM Summer2019Tom GROUP BY day ORDER BY day";

    $res=mysqli_query($con,$query);
    if(!$res) echo "ERROR: ".mysqli_error($con);

    while ($row = mysqli_fetch_array($res)) {
        $day = $row['day'];
        $val = $row['val'];
        $trades_tom[] = "[$day, $val]";//echo "[$day, $val]";
    }
}

function loadTradesJordan(){
    global $con, $trades_jordan;

    $query="SELECT DAY(CloseTime) as day, SUM(Profit) as val FROM Summer2019Jordan GROUP BY day ORDER BY day asc";

    $res=mysqli_query($con,$query);
    if(!$res) echo "ERROR: ".mysqli_error($con);

    while ($row = mysqli_fetch_array($res)) {
        $day = $row['day'];
        $val = $row['val'];
        $trades_jordan[] = "[$day, $val]";//echo "[$day, $val]";
    }
}

function loadPerformance(){
    global $con, $ratio_prof, $ratio_loss;

    $query="SELECT (SELECT COUNT(*) FROM summer2019tom WHERE Profit > 0)/(SELECT COUNT(*) FROM summer2019tom) as ratio";

    $res=mysqli_query($con,$query);
    if(!$res) echo "ERROR: ".mysqli_error($con);

    $row = mysqli_fetch_array($res);

    $ratio_prof = $row['ratio'];
    $ratio_loss = 1 - $ratio_prof;

}

function loadPairFreq(){
    global $con, $xdata, $ydata;

    $query="SELECT pair, COUNT(*) as freq FROM Summer2019Tom 
    JOIN forex_pairs ON (Summer2019Tom.id_pair = forex_pairs.id_pair) GROUP BY pair";

    $data=mysqli_query($con,$query);
    if(!$data) echo "ERROR: ".mysqli_error($con);

    $data = mysqli_fetch_all($data,MYSQLI_ASSOC);
    $xdata = json_encode(array_column($data, 'pair'),JSON_NUMERIC_CHECK);
    $ydata = json_encode(array_column($data, 'freq'),JSON_NUMERIC_CHECK);

}
//$query="SELECT DAY(CloseTime) as day, Profit as val, pair FROM Summer2019Tom JOIN forex_pairs ON (Summer2019Tom.id_pair = forex_pairs.id_pair)";

?>
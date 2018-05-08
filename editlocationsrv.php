<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$appearances = $_REQUEST['appearances'];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$pointsOfInterest = $_REQUEST['pointsOfInterest'];
$pointsOfInterest = mysqli_real_escape_string($mysqli, $pointsOfInterest);
$country = $_REQUEST['country'];
$id = $_REQUEST['id'];
$sql = "UPDATE Locations SET name='$name',appearances='$appearances',pointsOfInterest='$pointsOfInterest',country='$country' WHERE id = $id";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listlocations.php';
</script>
<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$appearances = $_REQUEST['appearances'];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$location = $_REQUEST['location'];
$location = mysqli_real_escape_string($mysqli, $location);
$spoils = $_REQUEST['spoils'];
$spoils = mysqli_real_escape_string($mysqli, $spoils);
$effectiveWeapon = $_REQUEST['effectiveWeapon'];
$id = $_REQUEST['id'];
$sql = "UPDATE Bosses SET name='$name',appearances='$appearances',location='$location',spoils='$spoils',effectiveWeapon='$effectiveWeapon' WHERE id = $id";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listbosses.php';
</script>
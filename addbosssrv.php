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
$sql = "INSERT INTO Bosses (name, appearances, location, spoils, effectiveWeapon) VALUES ('$name','$appearances','$location','$spoils', '$effectiveWeapon')";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listbosses.php';
</script>
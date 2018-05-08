<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$hometown = $_REQUEST['hometown'];
$appearances = $_REQUEST["appearances"];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$titles = $_REQUEST["titles"];
$titles = mysqli_real_escape_string($mysqli, $titles);
$race = $_REQUEST['race'];
$gender = $_REQUEST['gender'];
$sql = "INSERT INTO Characters (name, hometown, appearances, titles, race, gender) VALUES ('$name','$hometown','$appearances','$titles','$race', '$gender')";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listcharacters.php';
</script>
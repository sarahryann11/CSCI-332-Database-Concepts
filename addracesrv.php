<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$homeland = $_REQUEST['homeland'];
$appearances = $_REQUEST["appearances"];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$precededBy = $_REQUEST['precededBy'];
$succeededBy = $_REQUEST['succeededBy'];
$distinctions = $_REQUEST['distinctions'];
$notableMembers = $_REQUEST['notableMembers'];
$sql = "INSERT INTO Races (name, homeland, appearances, precededBy, succeededBy, distinctions, notableMembers) VALUES ('$name','$homeland', '$appearances','$precededBy','$succeededBy','$distinctions','$notableMembers')";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listraces.php';
</script>
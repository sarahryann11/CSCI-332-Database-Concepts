<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$homeland = $_REQUEST['homeland'];
$appearances = $_REQUEST['appearances'];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$precededBy = $_REQUEST['precededBy'];
$succeededBy = $_REQUEST['succeededBy'];
$distinctions = $_REQUEST['distinctions'];
$notableMembers = $_REQUEST['notableMembers'];
$id = $_REQUEST['id'];
$sql = "UPDATE Races SET name='$name',homeland='$homeland',appearances='$appearances',precededBy='$precededBy',succeededBy='$succeededBy', distinctions='$distinctions',notableMembers='$notableMembers' WHERE id = $id";



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
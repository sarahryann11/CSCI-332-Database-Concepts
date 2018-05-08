<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$name = mysqli_real_escape_string($mysqli, $name);
$appearances = $_REQUEST['appearances'];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$found = $_REQUEST['found'];
$uses = $_REQUEST['uses'];
$id = $_REQUEST['id'];
$sql = "UPDATE Items SET name='$name',appearances='$appearances',found='$found',uses='$uses' WHERE id = $id";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listitems.php';
</script>
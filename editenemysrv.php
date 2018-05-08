<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$appearances = $_REQUEST['appearances'];
$new_appearances = str_replace("'", "''", "$appearances");
$locations = $_REQUEST['locations'];
$weapons = $_REQUEST['weapons'];
$spoils = $_REQUEST['spoils'];
$new_spoils = str_replace("'", "''", "$spoils");
$id = $_REQUEST['id'];

$sql = "UPDATE Enemies SET name='$name',appearances='$new_appearances',locations='$locations',weapons='$weapons',spoils='$new_spoils' WHERE id = $id";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}

?>
<script>
window.location = 'listenemies.php';
</script>
<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$appearances = $_REQUEST['appearances'];
$new_appearances = str_replace("'", "''", "$appearances");
$locations = $_REQUEST['locations'];
$weapons = $_REQUEST['weapons'];
$spoils = $_REQUEST['spoils'];
$new_spoils = str_replace("'", "''", "$spoils");
$sql = "INSERT INTO Enemies (name, appearances, locations, weapons, spoils) VALUES ('$name','$new_appearances','$locations','$weapons', '$new_spoils')";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listenemies.php';
</script>
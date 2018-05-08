<?php
require_once 'dbconnect.php';

$sql = "DELETE FROM Locations where id = " . $_REQUEST['id'];


if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listlocations.php';
</script>
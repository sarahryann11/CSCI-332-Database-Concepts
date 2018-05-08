<?php
require_once 'dbconnect.php';

$sql = "DELETE FROM Characters where id =" . $_REQUEST['id'];


if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'listcharacters.php';
</script>
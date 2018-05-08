<?php
require_once 'dbconnect.php';

$name = $_REQUEST['name'];
$hometown = $_REQUEST['hometown'];
$appearances = $_REQUEST['appearances'];
$appearances = mysqli_real_escape_string($mysqli, $appearances);
$titles = $_REQUEST['titles'];
$titles = mysqli_real_escape_string($mysqli, $titles);
$race = $_REQUEST['race'];
$gender = $_REQUEST['gender'];
$id = $_REQUEST['id'];
$sql = "UPDATE Characters SET name='$name',hometown='$hometown',appearances='$appearances',titles='$titles',race='$race',gender='$gender' WHERE id = $id";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}

?>
<script>
window.location = 'listcharacters.php';
</script>
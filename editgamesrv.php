<?php
require_once 'dbconnect.php';

$title = $_REQUEST['title'];
$title = mysqli_real_escape_string($mysqli, $title);
$yearReleased = $_REQUEST['yearReleased'];
$platform = $_REQUEST['platform'];
$rating = $_REQUEST['rating'];
$id = $_REQUEST['id'];
$sql = "UPDATE Games SET title='$title',yearReleased='$yearReleased',platform='$platform',rating='$rating' WHERE id = $id";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}

?>
<script>
window.location = 'listgames.php';
</script>
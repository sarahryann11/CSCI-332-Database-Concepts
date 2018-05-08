<?php
require_once 'dbconnect.php';

$title = $_REQUEST["title"];
$title = mysqli_real_escape_string($mysqli, $title);
$yearReleased = $_REQUEST['yearReleased'];
$platform = $_REQUEST['platform'];
$rating = $_REQUEST['rating'];
$sql = "INSERT INTO Games (title, yearReleased, platform, rating) VALUES ('$title','$yearReleased','$platform','$rating')";

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
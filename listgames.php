<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT * from Games ORDER BY yearReleased";
if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">Main Series Games</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Title</th><th>Year Released</th><th>Platform</th><th>Rating</th><th>Actions</th></tr>";
while ($g = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $g["title"] . "</td>"; 
  echo "<td align=\"center\">" . $g["yearReleased"] . "</td>"; 
  echo "<td align=\"center\">" . $g["platform"] . "</td>"; 
  echo "<td align=\"center\">" . $g["rating"] . "</td>"; 
  echo "<td align=\"center\">";
  echo "<a href='delgamesrv.php?id=" . $g["id"] . "'>DEL</a> ";
  echo "<a href='editgameclt.php?id=" . $g["id"] . "'>EDIT</a>";
  echo "</td>";
  echo "</tr>";

}
echo "</table>";
?>

<style>
.heading{
    font-weight: bold;
    font-style: bold;
    margin-bottom: 20px;
    font-size: 25px;
    padding-bottom: 3px;
}

table tr:first-child th{
  background-color: #f6f5da;
}

table tr:nth-child(odd) {
    background-color: #daf1e9;
}

th, td {
    padding: 15px;
}
</style>

</br>
<a href='addgameclt.htm'>Add New</a>
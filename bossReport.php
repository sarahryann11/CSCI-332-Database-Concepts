<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT DISTINCT(name), COUNT(appearances) FROM Bosses GROUP BY name";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">Boss Report</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Name</th><th>Number of Appearances</th></tr>";
while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $row["name"] . "</td>"; 
  echo "<td align=\"center\">" . $row["COUNT(appearances)"] . "</td>";
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
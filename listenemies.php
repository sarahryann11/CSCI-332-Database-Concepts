<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT * from Enemies ORDER BY name";
if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">Enemies</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Name</th><th>Appearances</th><th>Locations</th><th>Weapons</th><th>Spoils</th><th>Actions</th><th>Date Added</th><th>Last Updated</th></tr>";
while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $row["name"] . "</td>"; 
  echo "<td align=\"center\">" . $row["appearances"] . "</td>"; 
  echo "<td align=\"center\">" . $row["locations"] . "</td>"; 
  echo "<td align=\"center\">" . $row["weapons"] . "</td>"; 
  echo "<td align=\"center\">" . $row["spoils"] . "</td>"; 
  echo "<td align=\"center\">";
  echo "<a href='delenemysrv.php?id=" . $row["id"] . "'>DEL</a> ";
  echo "<a href='editenemyclt.php?id=" . $row["id"] . "'>EDIT</a>";
  echo "<td align=\"center\">" . $row["dateAdded"] . "</td>";
  echo "<td align=\"center\">" . $row["dateUpdated"] . "</td>";
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
<a href='addenemyclt.htm'>Add New</a>
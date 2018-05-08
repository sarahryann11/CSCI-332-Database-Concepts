<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT * from Bosses ORDER BY name";

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">Bosses</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Name</th><th>Appearances</th><th>Location(s)</th><th>Spoils</th><th>Effective Weapons</th><th>Actions</th><th>Date Added</th><th>Last Updated</th></tr>";
while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $row["name"] . "</td>"; 
  echo "<td align=\"center\">" . $row["appearances"] . "</td>"; 
  echo "<td align=\"center\">" . $row["location"] . "</td>"; 
  echo "<td align=\"center\">" . $row["spoils"] . "</td>"; 
  echo "<td align=\"center\">" . $row["effectiveWeapon"] . "</td>";
  echo "<td align=\"center\">";
  echo "<a href='delbosssrv.php?id=" . $row["id"] . "'>DEL</a> ";
  echo "<a href='editbossclt.php?id=" . $row["id"] . "'>EDIT</a>";
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
<a href='addbossclt.htm'>Add New</a>
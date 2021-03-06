<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT * from Races ORDER BY name";
if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">Races</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Name</th><th>Homeland</th><th>Appearances</th><th>Preceded By</th><th>Succeeded By</th><th>Distinctions</th><th>Notable Members</th><th>Actions</th></tr>";
while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $row["name"] . "</td>"; 
  echo "<td align=\"center\">" . $row["homeland"] . "</td>"; 
  echo "<td align=\"center\">" . $row["appearances"] . "</td>"; 
  echo "<td align=\"center\">" . $row["precededBy"] . "</td>"; 
  echo "<td align=\"center\">" . $row["succeededBy"] . "</td>"; 
  echo "<td align=\"center\">" . $row["distinctions"] . "</td>";
  echo "<td align=\"center\">" . $row["notableMembers"] . "</td>";
  echo "<td>";
  echo "<a href='delracesrv.php?id=" . $row["id"] . "'>DEL</a> ";
  echo "<a href='editraceclt.php?id=" . $row["id"] . "'>EDIT</a>";
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
<a href='addraceclt.htm'>Add New</a>
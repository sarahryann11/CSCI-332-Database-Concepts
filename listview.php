<?php
include 'menu.php';
require_once 'dbconnect.php';

$sql = "SELECT * from totalsInGames";
if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
echo "</br>";
echo "</br>";
echo "<div class=\"heading\" align=\"center\">View</div>";
echo "<table border=1 align=\"center\">";
echo "<tr><th>Game Title</th><th>Number of Characters</th><th>Number of Bosses</th><th>Number of Enemies</th><th>Number of Locations</th><th>Number of Races</th><th>Number of Items</th></tr>";
while ($row = $result->fetch_assoc()) {
  echo "<tr>";
  echo "<td align=\"center\">" . $row["title"] . "</td>"; 
  echo "<td align=\"center\">" . $row["numOfCharacters"] . "</td>"; 
  echo "<td align=\"center\">" . $row["numOfBosses"] . "</td>"; 
  echo "<td align=\"center\">" . $row["numOfEnemies"] . "</td>"; 
  echo "<td align=\"center\">" . $row["numOfLocations"] . "</td>"; 
  echo "<td align=\"center\">" . $row["numOfRaces"] . "</td>";
  echo "<td align=\"center\">" . $row["numOfItems"] . "</td>";
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
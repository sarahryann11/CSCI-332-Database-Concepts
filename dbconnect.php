<?php

function myquery($mysqli,$sql) {
  if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
  }
  return $result;
}

$mysqli = new mysqli('127.0.0.1', 'sarahn74_l_o_z', 'snow123', 'sarahn74_legendOfZelda');
if ($mysqli->connect_errno) {
    echo "Error: Failed to make a MySQL connection, here is why: </br>";
    echo "Errno: " . $mysqli->connect_errno . "</br>";
    echo "Error: " . $mysqli->connect_error . "</br>";
    
    exit;
}
?>
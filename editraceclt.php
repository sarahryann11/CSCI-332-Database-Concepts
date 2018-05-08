<?php
require_once 'dbconnect.php';

$sql = "SELECT * from Races where id = " . $_REQUEST["id"];

if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}
$row = $result->fetch_assoc();
?>

<style>
.style{
    max-width: 500px;
    padding: 20px 12px 10px 20px;
    font: 13px Arial, Helvetica, sans-serif;
}
.heading{
    font-weight: bold;
    font-style: bold;
    margin-bottom: 20px;
    font-size: 25px;
    padding-bottom: 3px;
}
.style label{
    display: block;
    margin: 0px 0px 15px 0px;
}

.style label > span{
    width: 100px;
    font-weight: bold;
    float: left;
    padding-top: 8px;
    padding-right: 5px;
}

.style input.input-field, .style .select-field{
    width: 48%; 
}

.style input.input-field, 
.style .textarea-field, 
 .style .select-field{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    border: 1px solid #C2C2C2;
    box-shadow: 1px 1px 4px #EBEBEB;
    -moz-box-shadow: 1px 1px 4px #EBEBEB;
    -webkit-box-shadow: 1px 1px 4px #EBEBEB;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    padding: 7px;
    outline: none;
}
.style .input-field:focus, 
.style .textarea-field:focus,  
.style .select-field:focus{
    border: 1px solid #0C0;
}
.style .textarea-field{
    height:100px;
    width: 55%;
}
.style input[type=submit],
.style input[type=button]{
    border: none;
    padding: 8px 15px 8px 15px;
    background: #00ff00;
    color: #000000;
    box-shadow: 1px 1px 4px #DADADA;
    -moz-box-shadow: 1px 1px 4px #DADADA;
    -webkit-box-shadow: 1px 1px 4px #DADADA;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
}
.style input[type=submit]:hover,
.style input[type=button]:hover{
    background: #00e600;
    color: #000000;
}
</style>

<div class="style">
<form action="editracesrv.php">
<div class="heading">Edit Race</div>
<input type="hidden" name="id" value="<?php echo $row["id"]?>" />
<label><span>Name:</span><input name="name" class="select-field" value="<?php echo $row["name"]?>" /></label>
<label><span>Homeland:</span><input name="homeland" class="select-field" value="<?php echo $row["homeland"]?>" /></label>
<label><span>Appearances:</span><input name="appearances" class="select-field" value="<?php echo $row["appearances"]?>" /></label>
<label><span>Preceded By:</span><input name="precededBy" class="select-field" value="<?php echo $row["precededBy"]?>" /></label>
<label><span>Succeeded By:</span><input name="succeededBy" class="select-field" value="<?php echo $row["succeededBy"]?>" /></label>
<label><span>Distinctions:</span><input name="distinctions" class="select-field" value="<?php echo $row["distinctions"]?>" /></label>
<label><span>Notable Members:</span><input name="notableMembers" class="select-field" value="<?php echo $row["notableMembers"]?>" /></label>
</br>
<label><span>&nbsp;</span><input type="submit" value="Save"/></label>
</form>
</div>
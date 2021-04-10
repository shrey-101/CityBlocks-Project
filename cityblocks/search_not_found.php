<?php
include 'database.php';
if(isset($_GET['cityname'])){
$cityname = $_GET['cityname'];
}
else{
    header("location: index.html");
}
$sql = "SELECT * FROM cityinfo WHERE cityname = '$cityname'";
$result = $conn->query($sql);
if($result->num_rows > 0){
$row = $result->fetch_assoc();

$cityfullname = $row['cityfullname'];

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo "$cityname" ?></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<!-- Navbar from Bootstrap -->

<center><h1><?php echo "$cityfullname" ?></h1></center>




   <h1 id="topheading" style="display: none;"><?php echo "$cityname" ?></h1>
  
    <h3> More place to visit in allahabad </h3>
<p id="content"> </p>

<script src="script/search_page.js"> </script>
</body>
</html>
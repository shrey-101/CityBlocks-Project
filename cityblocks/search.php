<?php
include 'database.php';
if(isset($_GET['cityname'])){
$cityname = $_GET['cityname'];
}
else{
    header("location: search_not_found.php?cityname=$cityname");
}
$sql = "SELECT * FROM cityinfo WHERE cityname = '$cityname'";
$result = $conn->query($sql);
if($result->num_rows > 0){
$row = $result->fetch_assoc();

$cityfullname = $row['cityfullname'];
$citydescription = $row['description'];

$totalcases = 8000;
}
else{
    header("location: search_not_found.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo "$cityname" ?></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="style/search_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

</head>
<body >
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Navbar from Bootstrap -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.html"><img src="assets/logo.png" width="70px"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
      aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ml-auto" style="float: left;">
        <li class="nav-item active">
          <a class="nav-link" href="index.html">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            Services
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="#">All Cities</a>
            <a class="dropdown-item" href="#">News</a>
            <a class="dropdown-item" href="#">Blog</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about.html">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contact1.html">Contact</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- End of navabr in css-->
  <br>
<center><h1><?php echo "$cityfullname" ?></h1></center>
<br>
<p id="citydescriptioncard"><?php echo "$citydescription" ?></p>


<div class="container">
    <div class="row">
        <div class="col-sm-12 col-lg-8 col-xs-12 col-md-4 ">
<br>
<table>
    <thead>
        <tr>
            <th>Name </th>
            <th>Number</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>
                Covid-19 Helpline 1
            </td>
            <td>
               <a href="tel:<?php echo ($row['covid-19-help-1']) ?>"> <?php echo ($row['covid-19-help-1']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                Covid-19 Helpline 2
            </td>
            <td>
               <a href="tel:<?php echo ($row['covid-19-help-2']) ?>"> <?php echo ($row['covid-19-help-2']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                Covid-19 Medical Helpline 1
            </td>
            <td>
               <a href="tel:<?php echo ($row['covid-19-med-1']) ?>"> <?php echo ($row['covid-19-med-1']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                Covid-19 Medical Helpline 2
            </td>
            <td>
               <a href="tel:<?php echo ($row['covid-19-med-2']) ?>"> <?php echo ($row['covid-19-med-2']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                DM Helpline 1
            </td>
            <td>
               <a href="tel:<?php echo ($row['dm-help-1']) ?>"> <?php echo ($row['dm-help-1']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                DM Helpline 2
            </td>
            <td>
               <a href="tel:<?php echo ($row['dm-help-2']) ?>"> <?php echo ($row['dm-help-2']) ?> </a>
            </td>
        </tr>
        <tr>
            <td>
                CM Helpline 
            </td>
            <td>
               <a href="tel:1076"> 1076 </a>
            </td>
        </tr>
        <tr>
            <td>
                Women Helpline 
            </td>
            <td>
               <a href="tel:1090"> 1090 </a>
            </td>
        </tr>
        <tr>
            <td>
                NIC SERVICE DESK
            </td>
            <td>
               <a href="tel:1800111555"> 1800111555 </a>
            </td>
        </tr>
    </tbody>
</table>
        </div>
        <div class="col-sm-12 col-md-4 col-xs-12 col-lg-4 covid-tracker">
<br>
<div class="svg-covid"></div>


        </div>
    </div>
</div>

<?php
$sql = "SELECT areaname, wiki from $cityname";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc()) {
      echo '<div class="cards_basic"> <center><h3>' . $row["areaname"]. '</h3></center><br> Description: ' . $row["wiki"]. '</div><br>';
    }
  } else {
    echo "0 results";
  }
?>

   <h1 id="topheading" style="display: none;"><?php echo "$cityname" ?></h1>
  
    <h3> More place to visit in <?php echo "$cityname" ?> </h3>
<p id="content"> </p>


<footer class="bg-dark text-center text-white">

<!-- Copyright -->
<div class="text-center p-2" style="background-color: rgba(43, 42, 42, 0.2);">
  © 2021 Copyright :
  <a class="text-white" href="https://twitter.com/ShreshthaGupt16"> @Heavy-Coders</a>
</div>
<!-- Copyright -->

<!-- Grid container -->
<div class="container p-1 pb-0 ">
  <!-- Section: Social media -->
  <section class="mb-40">
    <!-- Facebook -->
    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button" style="border-radius: 10rem;"><i
        class="fa fa-facebook-f"></i></a>

    <!-- Twitter -->
    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button" style="border-radius: 10rem;"><i
        class="fa fa-twitter"></i></a>

    <!-- Google -->
    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button" style="border-radius: 10rem;"><i
        class="fa fa-google"></i></a>

    <!-- Instagram -->
    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button" style="border-radius: 10rem;"><i
        class="fa fa-instagram"></i></a>
    <!-- Github -->
    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button" style="border-radius: 10rem;"><i
        class="fa fa-github"></i></a>
  </section>
  <!-- Section: Social media -->
</div>
<!-- Grid container -->

</footer>


<script src="script/search_page.js"> </script>
</body>
</html>

<?php
include 'database.php';
$areaname = $_GET['areaname'];
$cityname = $_GET['cityname'];

$sql = "SELECT * FROM $cityname";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    
    while($row = $result->fetch_assoc()) {
      if($row['areaname'] == $areaname){
        $image = $row['image'];
        $wiki = $row['wiki'];
        $covid_safety = $row['covid_safety'];
        $gov_building = $row['Government_building'];
        $local_police = $row['Local_police'];
        $post_address =$row ['Post_address'];
        $distance_from =$row['Distance_from'];
        $near_places = $row['Nearby_places'];
        $area_name = $row['Review_table'];
      }
      else{
         
      }
    }
  } else {
    echo "0 results";
  }


?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title> <?php echo "$areaname" ?></title>
</head>

<body>
  <!-- navbar -->

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">CityBlocks</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
      aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home</a>
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

  <!-- image -->

  <div class="container" style="max-width: 1300rem; background-color: rgb(215, 223, 200); padding: 1rem;">
    <div class="row">
      <div class="column col-lg-4">
    <div class="card" style="width: 20rem; margin-left: 0px;margin-top: 10px; background-color: rgb(27, 27, 27); border-radius: 1rem;">
      <img src="<?php echo "$image"  ?>" class="card-img-top"
        alt="Hamidia Road Area" style="border-radius: 1rem;border: 2px solid black;">
      <div class="card-body mx-auto" style="font-size: large;color: white;">
        <p class="card-text "><?php echo "$areaname" ?></p>
      </div>
    </div>
  </div>
    <div class="column col-lg-7">
    <div class="info-card" style="width:auto;background-color: rgb(255, 255, 255);margin-top: 2rem;padding: 3rem;border-radius: 1rem;"><strong>- <?php echo "$wiki" ?> </strong>
    </div>
  </div>
  </div>
</div>

  <!-- data table -->

  <table class="table table-striped" style=" background-color: rgba(225, 218, 245, 0.938);">
    <thead>
      <tr>
        <th scope="col">Subject</th>
        <th scope="col">Information</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Covid Safety :</td>
        <td style="color:<?php echo "$covid_safety" ?>; font-weight: 700;"><?php echo "$covid_safety" ?></td>
      </tr>
      <tr>
        <td>Government Buildings :</td>
        <td><?php echo "$gov_building" ?>
        </td>
      </tr>
      <tr>
        <td>Local Police Chowki Contact :</td>
        <td><?php echo "$local_police" ?></td>
      </tr>
      <tr>
        <td>Post Address :</td>
        <td><?php echo "$post_address" ?>
        </td>
      </tr>
      <tr>
        <td>DISTANCE FROM :</td>
        <td><?php echo "$distance_from" ?>
        </td>
      </tr>
      <tr>
        <td>Nearby Places to visit :</td>
        <td><?php echo "$near_places" ?></td>
      </tr>
    </tbody>
  </table>
  <br>

  <!-- area reviews -->
  

  <!-- Backend code for review model -->



  <!-- Over -->
  <section>
    <div class="container" style="padding-left: 0%;">
      <div class="row">
      <div class="col-sm-5 col-xs-6 col-12 pb-1 p-0">
          <h5>Reviews :</h5>
          <hr>
          <?php
                $sql = "SELECT * FROM review WHERE area_name = '$area_name' LIMIT 3";
                $result  = $conn->query($sql);
                if($result->num_rows > 0){
                 
                while($row = $result->fetch_assoc()) {
                    include 'review-area.php';
                }
                }
                else{
                      echo "No Review Found";
                }
          ?>

        </div>
      
        <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
          <form id="algin-form" action="add_review.php" method="POST">
            <div class="form-group">
              <h4>Leave a review</h4> <label for="message">Message</label> <textarea name="msg" id="msg" cols="30"
                rows="5" class="form-control" style="background-color: rgb(0, 0, 0);" required></textarea>
            </div>
            <input type="text" value="<?php echo "$area_name" ?>" name = "area_name" id="inputareaname" hidden>
            <div class="form-group"> <label for="name">Name</label> <input type="text" name="name" id="fullname"
                class="form-control" required> </div>
            <div class="form-group"> <label for="email">Email</label> <input type="text" name="email" id="email"
                class="form-control"> </div>
            <div class="form-group"> <button type="submit" name="submit" id="post" class="btn btn-secondary">Post Review</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section><br>

  <!-- footer -->

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


</body>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
  integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
  integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="script/area_details.js"></script>
</html>
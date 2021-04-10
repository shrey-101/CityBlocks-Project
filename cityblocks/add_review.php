<?php

include 'database.php';

$name = $_POST['name'];
$review = $_POST['msg'];
$area = $_POST['area_name'];

$sql = "INSERT INTO review (name, review, area_name) VALUES ('$name','$review','$area')";

if($conn->query($sql) === TRUE){
    echo "Comment added";


}
else{
    echo "Server error occured" . $sql ."<br>" . $conn->error;
}



?>
<html>
    <script>
        window.history.back();
    </script>
</html>
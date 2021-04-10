<?php
$city = $_POST['cityname'];
$totalcases = $_POST['totalcases'];
?>

<svg width="400" height="210">
<g>
  <rect width="300" height="200" style="fill:#d63838;stroke-width:3;stroke:rgb(0,0,0)" />
  
  <text x="45" y="40" font-family="Verdana" font-size="23" fill="black">COVID-19 STATUS</text>
  <text id="totcases" x="55" y="90" font-family="Verdana" font-size="20" fill="white">Total cases: <?php echo "$totalcases" ?></text>
  <text x="100" y="150" font-family="Verdana" font-size="20" fill="yellow"><?php echo "$city" ?> </text>
</g> 
</svg>
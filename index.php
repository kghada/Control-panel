<?php

//connection to server & database 
$conn = mysqli_connect('localhost', 'root', '', 'base-d' );

//checking the connection 
if (!$conn) {
  die("Connection failed :" . mysqli_connect_error());
} else{
echo "Connected successfully <br>";}

        if(isset($_POST['Forward'])) { 
    $sql = ("INSERT INTO Directions(Forward) VALUES ('f')"); 
    $result = mysqli_query($conn, $sql);
    if($result){
         echo "<br><br> Forward value inserted!"; 
    } else  echo"<br> ERROR: Unable to insert. <br>";
}

  if(isset($_POST['Backward'])) { 
    $sql = ("INSERT INTO Directions(Backward) VALUES ('b')"); 
    $result = mysqli_query($conn, $sql);
    if($result){
         echo "<br><br> Backward value inserted!"; 
    } else  echo"<br> ERROR: Unable to insert. <br>";
}

  if(isset($_POST['Stop'])) { 
    $sql = ("INSERT INTO Directions(Stop) VALUES ('s')"); 
    $result = mysqli_query($conn, $sql);
    if($result){
         echo "<br><br> Stop value inserted!"; 
    } else  echo"<br> ERROR: Unable to insert. <br>";
}

  if(isset($_POST['Left'])) { 
    $sql = ("INSERT INTO Directions(Left) VALUES ('l')"); 
    $result = mysqli_query($conn, $sql);
    if($result){
         echo "<br><br> Left value inserted!"; 
    } else  echo"<br> ERROR: Unable to insert. <br>";
}

  if(isset($_POST['Right'])) { 
    $sql = ("INSERT INTO Directions(Right) VALUES ('r')"); 
    $result = mysqli_query($conn, $sql);
    if($result){
         echo "<br><br> Right value inserted!"; 
    } else  echo"<br> ERROR: Unable to insert. <br>";
}

    

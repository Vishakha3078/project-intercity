<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "intercity_express_trains";
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} else {
  $email = $_POST['email'];
  $pass = $_POST['pass'];
  $stmt = $conn->prepare("select * from user where emailid=?");
  $stmt->bind_param("s", $email);
  $stmt->execute();
  $stmt_result=$stmt->get_result();
  if($stmt_result->num_rows >0){
     $data=$stmt_result->fetch_assoc();
     if($data['passwd']===$pass){
      echo"<!DOCTYPE html>
      <html lang='en'>
      <head>
          <meta charset='UTF-8'>
          <meta name='viewport' content='width=device-width, initial-scale=1.0'>
          <title>Railway Reservation System</title>
          <link href='https://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
          <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
          <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css'>
          <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css' integrity='sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO' crossorigin='anonymous'>
          <link rel='stylesheet' href='style.css'>
      </head>
      <body>
          <header style='background-color: black ;'
         <nav>
          <a href='index.html' class='btn'>Home</a>
          <a href='about-us.html' class='btn'>About</a>
          <a href='contact-us.html' class='btn' >Contact Us</a>
          <a href='index.html' class='btn'>Logout</a>
          <a href='#' class='btn btn-success' >$email </a>
         </nav>
        
          </header>
          
          
          <main>
              <section class='intro'>
                  <div class='caption'>
                      <h2>'Welcome to our official page! Book your ticket!'</h2>
                  </div>
                  <center>
                  <div class='inquiry'>
                      <div class='title'>
                        Search Trains
                      </div>
                      <form action='displaytrain.php' method='post'>
                          <label for='from'>From:</label> 
                          <select id='from' name='from'>
                              <option value='MUMBAI CENTRAL'>MUMBAI CENTRAL</option>
                              <option value='NEW DELHI'>NEW DELHI</option>
                              <option value='SECUNDERABAD'>SECUNDERABAD</option>
                              <option value='MUMBAI'>MUMBAI</option>
                              <option value='BHOPAL'>BHOPAL</option>
                              <option value='LONAVALA'>LONAVALA</option>
                              <option value='DHARWAD'>DHARWAD</option>
                              <option value='GANDHINAGAR'>GANDHINAGAR</option>
                              <option value='HIMACHAL'>HIMACHAL</option>
                              <option value='VISAKHAPATNAM'>VISAKHAPATNAM</option>
                              <option value='SAINAGAR SHIRDI'>SAINAGAR SHIRDI</option>
                              <option value='SOLAPUR'>SOLAPUR</option>
                              <option value='DELHI'>DELHI</option>
                              <option value='AJMER'>AJMER</option>
                              <option value='BENGALURU'>BENGALURU</option>
                              <option value='INDORE'>INDORE</option>
                              <option value='GOA'>GOA</option>
      
      
      
      
                          </select>
                          <label for='to'>To:</label> 
                          <select id='to' name='to'>
                              <option value='MUMBAI CENTRAL'>MUMBAI CENTRAL</option>
                              <option value='NEW DELHI'>NEW DELHI</option>
                              <option value='SECUNDERABAD'>SECUNDERABAD</option>
                              <option value='MUMBAI'>MUMBAI</option>
                              <option value='BHOPAL'>BHOPAL</option>
                              <option value='LONAVALA'>LONAVALA</option>
                              <option value='DHARWAD'>DHARWAD</option>
                              <option value='GANDHINAGAR'>GANDHINAGAR</option>
                              <option value='HIMACHAL'>HIMACHAL</option>
                              <option value='VISAKHAPATNAM'>VISAKHAPATNAM</option>
                              <option value='SAINAGAR SHIRDI'>SAINAGAR SHIRDI</option>
                              <option value='SOLAPUR'>SOLAPUR</option>
                              <option value='DELHI'>DELHI</option>
                              <option value='AJMER'>AJMER</option>
                              <option value='BENGALURU'>BENGALURU</option>
                              <option value='INDORE'>INDORE</option>
                              <option value='GOA'>GOA</option>
      
      
      
                              
                          </select>
                          <label for='day'>Date:</label>
                          <input type='date' id='day' name='day'>
                          <input type='submit' value='search train' name='search' class='btn'>
                      </form>
                      
              </center>
              </section>
          </main>
          <div class='footer-dark'>
             
             
             
             
              <footer>
                  <hr>
                  <div class='container'>
                      <div class='row'>
                          <div class='col-sm-6 col-md-3 item'>
                              <h3>Services</h3>
                              <ul>
                                  <li><a href='#'>Web design</a></li>
                                  <li><a href='#'>Web Development</a></li>
                                  <li><a href='#'>Database Management</a></li>
                              </ul>
                          </div>
                          <div class='col-sm-6 col-md-3 item'>
                              <h3>About</h3>-
                              <ul>
                                  <li><a href='#'>More products</a></li>
                                  <li><a href='#'>Team</a></li>
                                  <li><a href='#'>Careers</a></li>
                              </ul>
                          </div>
                          <div class='col-md-6 item text'>
                              <h3>Description</h3>
                              <p>A website made to help people in railway ticket booking. Follow us to know more!</p>
                          </div>
                          <div class='col item social'><a href='#'><i class='icon ion-social-facebook'></i></a><a href='#'><i class='icon ion-social-twitter'></i></a><a href='#'><i class='icon ion-social-snapchat'></i></a><a href='#'><i class='icon ion-social-instagram'></i></a></div>
                      </div>
                      <p class='copyright'>Runtime Terror © 2021</p>
                  </div>
              </footer>
          </div>
          <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
          <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js'></script>
      </body>
      
      
      </html>";}
      else{
        echo"<h2>Invalid Email or Password</h2>";
      }}
     
  
  else{
    echo"<h2>Invalid Email or password</h2>";
  }
}
?>
<?php

// Include config file
require_once "config.php";
 
// Define variables and initialize with empty values
$username = $password = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Check if username is empty
    if(empty(trim($_POST["emri"]))){
     echo "Ju lutem vendosni emrin.";
  } else{
      $username = trim($_POST["emri"]);
  }
  // Check if password is empty
  if(empty(trim($_POST["pass"]))){
    echo  "Ju lutem vendosni passwordin.";
} else{
    $password = trim($_POST["pass"]);
}
 // Validate credentials
 if(!empty(trim($_POST["emri"])) && !empty(trim($_POST["pass"]))){
  // Prepare a select statement
  $sql = "SELECT id, username, password FROM Users WHERE username = ? and password = ?";
  
  if($stmt = mysqli_prepare($link, $sql)){
      // Bind variables to the prepared statement as parameters
      mysqli_stmt_bind_param($stmt, "ss", $param_username , $param_password);
      
      // Set parameters
      $param_username = $username;
      $param_password = $password;
        // Attempt to execute the prepared statement
        if(mysqli_stmt_execute($stmt)){
          // Store result
          mysqli_stmt_store_result($stmt);
          
          // Check if username exists, if yes then verify password
          if(mysqli_stmt_num_rows($stmt) == 1){                    
              // Bind result variables
              mysqli_stmt_bind_result($stmt, $id, $username, $password);
              if(mysqli_stmt_fetch($stmt)){
                  session_start();
                  
                  // Store data in session variables
                  $_SESSION["loggedin"] = true;
                  $_SESSION["id"] = $id;
                  $_SESSION["username"] = $username;     
                  echo "Login u krye me sukses.";
                }
            }
            else{
                echo "Emri ose fjalekalimi i vendosur eshte i pasakte.Provoni perseri."; 
            }
        } 
         else{
            echo "Oh jo!Dicka shkoi keq.Ju lutem provoni me vone.";
        } 
    }
    if($stmt = mysqli_prepare($link, $sql)){
      // [...]
  
      mysqli_stmt_close($stmt);
  } else {
      echo "Dicka nuk shkon me query-in" . mysqli_error($link);
                  }
      }
      
      // Close connection
      mysqli_close($link);
  }
  ?>


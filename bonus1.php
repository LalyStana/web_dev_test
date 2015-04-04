<?php
//Bonus Challenge 1
  
  function get_email(){
  
    $email = $_REQUEST['email'];
    
    mysql_connect('localhost', 'root', '');
    
    mysql_select_db('web_dev_test');
    
    $result = mysql_query("SELECT * FROM subscription WHERE email LIKE '".$email."'");
    
    $num_results = mysql_num_rows($result);
    
    if ($num_results<1){
      $query = "INSERT INTO subscription (email) VALUES ('".$email."')";
      $result = mysql_query($query);
      echo 'Inserted';
    } 
    else{
      echo 'Duplicate';
    }
  
  }
  
  get_email();

?>
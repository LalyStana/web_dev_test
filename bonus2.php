<?php
//Bonus Challenge 2
  
  function get_subcrip_data(){
  
    $email = $_REQUEST['email'];
    $name = $_REQUEST['name'];
    $user = $_REQUEST['user'];
    $passw = md5($_REQUEST['passw']);
    
    mysql_connect('localhost', 'root', '');
    
    mysql_select_db('web_dev_test');
    
    $result = mysql_query("SELECT * FROM fullsubscription WHERE (email LIKE '".$email."') OR (user LIKE '".$user."')");
    
    $num_results = mysql_num_rows($result);
    
    if ($num_results<1){
      $query = "INSERT INTO fullsubscription (name, email, user, password) VALUES ('".$name."', '".$email."', '".$user."', '".$passw."')";
      $result = mysql_query($query);
      echo 'Inserted';
    } 
    else{
      echo 'Duplicate';
    }
  
  }
  
  get_subcrip_data();

?>
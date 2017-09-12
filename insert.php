<?php
//insert.php

include('database_connection.php');

if(isset($_POST["content"]))
{
 $query = "
 INSERT INTO content 
 (user_id, description) 
 VALUES(:user_id, :description)
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   'user_id'  => $_SESSION['user_id'],
   'description' => $_POST["content"]
  )
 );
 $result = $statement->fetchAll();
 if(isset($result))
 {
  echo 'done';
 }
}

?>

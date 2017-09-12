<?php
//function.php

function is_user_has_already_like_content($connect, $user_id, $content_id)
{
 $query = "
 SELECT * FROM user_content_like 
 WHERE content_id = :content_id
 AND user_id = :user_id
 ";
 $statement = $connect->prepare($query);

 $statement->execute(
  array(
   ':content_id' =>  $content_id,
   ':user_id'  =>  $user_id
  )
 );
 $total_rows = $statement->rowCount();
 if($total_rows > 0)
 {
  return true;
 }
 else
 {
  return false;
 }

}

function count_content_like($connect, $content_id)
{
 $query = "
 SELECT * FROM user_content_like 
 WHERE content_id = :content_id
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':content_id'  => $content_id
  )
 );
 $total_rows = $statement->rowCount();
 return $total_rows;
}

?>

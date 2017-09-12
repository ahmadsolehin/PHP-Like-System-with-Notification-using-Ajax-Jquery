<?php
//load_stuff.php

include('database_connection.php');
include('function.php');

if(isset($_SESSION["user_id"]))
{
 $output = '';
 $query = "
 SELECT content.content_id, content.user_id, content.description, user_details.user_name, user_details.user_image FROM content 
 INNER JOIN user_details 
 ON user_details.user_id = content.user_id
 ORDER BY content_id DESC
 ";
 $statement = $connect->prepare($query);
 $statement->execute();
 $result = $statement->fetchAll();
 $total_rows = $statement->rowCount();
 if($total_rows > 0)
 {
  foreach($result as $row)
  {
   $like_button = '';
   if(!is_user_has_already_like_content($connect, $_SESSION["user_id"], $row["content_id"]))
   {
    $like_button = '
    <button type="button" name="like_button" class="btn btn-info btn-xs like_button" data-content_id="'.$row["content_id"].'">Like</button>
    ';
   }
   $count_like = count_content_like($connect, $row["content_id"]);
   $output .= '
   <div class="panel panel-default">
    <div class="panel-heading">
     <h3 class="panel-title"><img src="images/'.$row["user_image"].'" class="img-thumbnail" width="40" height="40" /> By '.$row["user_name"].'
      <button type="button" name="total_like" id="total_like" class="btn btn-warning btn-xs">'.$count_like.' Like</button>
     </h3>
    </div>
    <div class="panel-body">
     '.$row["description"].'
    </div>
    <div class="panel-footer" align="right">
     '.$like_button.'
    </div>
   </div>
   ';
  }
 }
 else
 {
  $output = 'Nobody has share nothing';
 }
 echo $output;
}

?>

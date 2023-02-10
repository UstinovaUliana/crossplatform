
<?php
$name = $_POST["sirname"];
$email = $_POST["email"];
$text_message = $_POST["message"];
$db=mysql_connect("localhost", "root","");
mysql_select_db("anime", $db);

$sql="INSERT INTO otzivy(name,email,message) VALUES ('$name','$email', '$text_message')   "; 
$result=mysql_query($sql);

header("Location: ".$_SERVER["HTTP_REFERER"]); 
exit;

?>

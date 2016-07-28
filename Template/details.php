
<?php
 session_start();
   $shoeid="";

 if(isset($_GET['myid'])){
 	$shoeid=$_GET['myid'];
 }
   $mycart=array();
  $totalcost=0;
print_r($_SESSION);
 
 if(!isset($_SESSION['id'])){
  $_SESSION['id']= array();
 }

 if(isset($_GET['myid'])){
 
 
 if(isset($_SESSION['id'])){

  if(array_key_exists($_GET['myid'],$_SESSION['id'])){
   
    $_SESSION['id'][$_GET['myid']]++;
  }

  else{
    $_SESSION['id'][$_GET['myid']]=1;
  }
}

}


 


 $con=mysql_connect('localhost', 'root', '');
mysql_select_db("shoe_boutique", $con);
$query= " select shoes.shoeid,shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid where shoes.shoeid=$shoeid";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
 $description="";
 $price="";
 $brand="";
 $myshoeid="";
while($row=mysql_fetch_array($result)){
	$myshoeid=$row["shoeid"];
	$brand=$row["shoebrand"];
    $price=$row["price"];
    $desc=$row["type_description"];	
}
require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('details.tpl');
$params=array(
'shoe'=>'Shoe Details', 'shoebrand'=>$brand,'price'=>$price, 'description'=>$desc,'myshoeid'=>$myshoeid);
$params['shoe_id'] = $myshoeid;
$template->display($params);
?>

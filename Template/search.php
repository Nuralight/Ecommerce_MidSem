<?php
 session_start();
   $shoebrand="";
  
 if(isset($_GET['shoe'])){
 	$shoebrand=$_GET['shoe'];
 }
 


 $con=mysql_connect('localhost', 'root', '');
mysql_select_db("shoe_boutique", $con);
$query= " select shoes.shoeid,shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid where shoes.shoebrand like '%$shoebrand%' ";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
$data =array();
 $count=0;
 //$image='images/pic4.jp';

 while($row=mysql_fetch_array($result)){
	$data[]=$row;
}

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('search.tpl');
$params=array(
'aName'=>'Our Collection', 'values'=>$data,'image'=>'images/pic5.jpg');

$template->display($params);
?>
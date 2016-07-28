<?php
include_once("custom_error_handler.php");
session_start();
$shob="";
$shos="";
$shoc=0;
$prc=0;

if(!isset($_SESSION['username'])){
 header('Location:page1.php');
}
if(isset($_GET['shob'])){
	$shob=$_GET['shob'];

}
if(isset($_GET['shos'])){
	$shos=$_GET['shos'];
	
}
if(isset($_GET['shoc'])){
	$shoc=$_GET['shoc'];
	
}

if(isset($_GET['prc'])){
	$prc=$_GET['prc'];
	
}
include_once("shoes.php");
$obj=new shoes();
if($obj->update_list($shob,$shos,$shoc,$prc,$_SESSION['myid'])){

}
else{
	trigger_error("A custom error has been triggered");
}
 $con=mysql_connect('localhost', 'root', '');
 mysql_select_db("shoe_boutique", $con);

$query= " select shoes.shoeid, shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
 $data =array();
 
while($row=mysql_fetch_array($result)){
	$data[]=$row;
}

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('admin.tpl');
$params=array(
'aName'=>'Adminstrative Functions', 'values'=>$data );
$template->display($params);
?>

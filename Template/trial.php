<?php
session_start();
$mycart=array();
$totalcost=0;

if(isset($_GET['thecart'])){
	if(isset($_GET['id'])){

  if(array_key_exists($_GET['id'],$_SESSION['id'])){
   
    $_SESSION['id'][$_GET['id']]++;
  }

  else{
    $_SESSION['id'][$_GET['id']]=1;
  }
	}
}
if(isset($_SESSION['id'])){

foreach($_SESSION['id'] as $i=>$value){

       if(isset($_SESSION['id'][$i])){
         include_once('shoes.php');
          $obj = new shoes();
         $obj->display_list($i);
         $myshoe=$obj->fetch();
         $cart=array();
         $cart['shoebrand']=$myshoe["shoebrand"];
         $cart['id']=$_SESSION['id'][$i];
         $cart['price']=$myshoe["price"];
         //$cart['myid']=$mywine["wine_id"];
         
         $totalcost+=$_SESSION['id'][$i]*$myshoe["price"];
    
     }
     $mycart[]=$cart;
}

}
require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('cart.tpl');
$param=array(
	'cart'=> 'Cart', 'mycart'=>$mycart , 'totalcost'=>$totalcost
);
$template->display($param); 



?>
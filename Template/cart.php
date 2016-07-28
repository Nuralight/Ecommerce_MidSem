<?php

session_start();
 $mycart=array();
  $totalcost=0;
  
  if(isset($_GET['sid'])){

  if(isset($_SESSION['id'])){
      $_SESSION['id'][$_GET['sid']]--;
   
  }
}
print_r($_SESSION['id'])  ;



if(isset($_SESSION['id'])){

foreach($_SESSION['id'] as $i=>$value){

       if(isset($_SESSION['id'][$i])){
         include_once('shoes.php');
          $obj = new shoes();
         $obj->display_list($i);
         $myshoe=$obj->fetch();
         $cart=array();
            $cart['shoeid']=$myshoe["shoeid"];
         $cart['shoebrand']=$myshoe["shoebrand"];
         $cart['id']=$_SESSION['id'][$i];
         $cart['price']=$myshoe["price"];
         $cart['sid']=$myshoe["shoeid"];
         $totalcost+=$_SESSION['id'][$i]*$myshoe["price"];
          //if($obj->add_orders($cart['shoeid'],$cart['shoebrand'],$cart['id'],$cart['price'])){

               //echo'{"message": "successfully added"}';
    //}
   // else{
          //  echo'{"message": unable to added"}';
             //error_log($message,2,"error_logs.txt");
             //trigger_error("A custom error has been triggered");

         //}
    
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
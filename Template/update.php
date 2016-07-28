<?php
include_once("custom_error_handler.php");
session_start();
$id=0;
 if(isset($_GET['id'])){
 	$id=$_GET['id'];
 	$_SESSION['myid']=$id;

 }
 //echo ($_SESSION['myid']);
require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('edit.tpl');
$params=array(
	'aName'=>'Updates'
);
$template->display($params);
?>

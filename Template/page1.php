<?php
session_start();
$email="";
$pwd="";

if (isset($_GET['email'])){
	$email=$_GET['email'];

}
if (isset($_GET['pwd'])){
	$pwd=$_GET['pwd'];
}

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('index.tpl');
$params=array(
'aName'=>'New Arrivals');
$template->display($params);
?>
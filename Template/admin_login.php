<?php
session_start();

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('admin_login.tpl');
$params=array(
'aName'=>'Login');
$template->display($params);
?>
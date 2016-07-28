<?php
require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('change_password.tpl');
$params=array(
'aName'=>'Change Password');
$template->display($params);
?>
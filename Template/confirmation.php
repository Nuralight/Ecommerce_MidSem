<?php
include_once('mail.php');
$mail = new mailsender();
$mail->mail();

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('confirmation.tpl');
$params=array(
'info'=>'Confirmation');
$template->display($params);
?>
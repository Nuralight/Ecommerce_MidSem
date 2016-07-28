<?php
$con=mysql_connect('localhost', 'root', '');
mysql_select_db("shoe_boutique", $con);

$query= "select shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid where shoe_type.typename like '%flats%'";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
 $data =array();
 $count=0;
 $image='images/pic4.jp';

while($row=mysql_fetch_array($result)){
	$data[]=$row;
	$count++;
	if($count % 4==0){
$image='images/pic2.jpg';
}
elseif($count % 3==0){
$image='images/pic3.jpg';	
}
elseif($count % 2==0){
$image='images/pic5.jpg';	
}

else{
	$image='images/pic4.jp';
}

	
}

 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('flats.tpl');
$params=array(
'aName'=>'Our Collection', 'values'=>$data,'image'=>'images/flats.jpg');
$template->display($params);
?>
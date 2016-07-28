<?php
if (isset($_GET['pageno'])) {
   $pageno = $_GET['pageno'];
} else {
   $pageno = 1;
}
$con=mysql_connect('localhost', 'root', '');
mysql_select_db("shoe_boutique", $con);

$query = "SELECT count(*) FROM shoes";
$result = mysql_query($query, $con) or die("error");//trigger_error("SQL", E_USER_ERROR);
$query_data = mysql_fetch_row($result);
$numrows = $query_data[0];
$rows_per_page = 10;
$lastpage  = ceil ($numrows/$rows_per_page);

$pageno = (int)$pageno;
if ($pageno > $lastpage) {
   $pageno = $lastpage;
} // if
if ($pageno < 1) {
   $pageno = 1;
} //

$limit = 'LIMIT ' .($pageno - 1) * $rows_per_page .',' .$rows_per_page;


$query= " select shoes.shoeid, shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid $limit";
 $result = mysql_query($query, $con) or trigger_error("SQL", E_USER_ERROR);
 $data =array();
 $count=0;
 $image='images/pic4.jp';

while($row=mysql_fetch_array($result)){
	$data[]=$row;
	$count++;
	if($count % 4==0){
$image="images/pic2.jpg";
}
elseif($count % 3==0){
$image="images/pic3.jpg";	
}
elseif($count % 2==0){
$image="images/pic5.jpg";	
}

else{
	$image="images/pic4.jp";
}

	
}

require_once  './Twig/Autoloader.php';
Twig_Autoloader:: register();
$loader= new Twig_loader_Filesystem('./template');
$twig= new Twig_Environment($loader);
$template=$twig->loadTemplate('products.tpl');
$params=array(
'aName'=>'Our Collection', 'values'=>$data,'image'=>$image,'pageno'=> $pageno,'lastpage'=>$lastpage );
$template->display($params);
?>
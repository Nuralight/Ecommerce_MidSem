<?php
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);
session_start();


 $mycart=array();
  $totalcost=0;

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
        // $cart['sid']=$myshoe["shoeid"];
         $totalcost+=$_SESSION['id'][$i]*$myshoe["price"];
    
     }
     $mycart[]=$cart;
}


}
$header=array("Shoebrand","Number Purchase","Price");
foreach($header as $col)
$pdf->Cell(40,7,$col,1); $pdf->Ln();
foreach($mycart as $row)
{
foreach($row as $col)
$pdf->Cell(40,6,$col,1); $pdf->Ln();
} 

$pdf->Cell(20,6,"Total Cost:",0,0); $pdf->Ln();
$pdf->Cell(20,6,'$'.$totalcost,0,0);
$pdf->Output();

 ?>
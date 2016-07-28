<?php
require('fpdf.php');
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','',12);


include_once("shoes.php");
$obj=new shoes();
$row=$obj->display_orders();
$data=array();
 $totalcost=0;

while($row=$obj->fetch()){
	$data[]=$row;
	//$totalcost+=$row["quantity_purchased"]*$row["total_price"];
}

 $header=array("Purchased Brand","Item Type","Quantity Purchased","Total Price","Date & Time");
foreach($header as $col)
$pdf->Cell(40,7,$col,1); $pdf->Ln();
foreach($data as $row)
{
foreach($row as $col)
$pdf->Cell(40,6,$col,1); $pdf->Ln();
} 

//$pdf->Cell(20,6,"Total Cost:",0,0); $pdf->Ln();
//$pdf->Cell(20,6,'$'.$totalcost,0,0);
$pdf->Output();

 ?>
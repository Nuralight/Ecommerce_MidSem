<?php

session_start();
if(!isset($_REQUEST['cmd'])){
	echo '{"result":0,message:"unknown command"}';
	exit();
}

$cmd=$_REQUEST['cmd'];
switch($cmd)
{
	case 1:
	  user_login();
    break;
    case 2:
    add_customer();
    break;
     case 3 :
    customer_info();
    break;
    case 4:
    change_password();
    case 5:
    add_shoe();
    break;
    case 6:
    admin_login();
    break;
    case 7:
    logout();
    break;
  default:
  echo '{"result";0,message:"unknown command"}';
  break;
}

 function user_login(){
        include ("shoes.php");
        $obj=new shoes();
        $email=$_GET['email'];
        $password=$_GET['password'];
        $obj->login ($email, $password);
        $row=$obj->fetch();
        if($row){
            
            $_SESSION['email']=$email;
            $_SESSION['password']=$password;
            echo '{"result": 1, "user": [';
            while($row){
                echo json_encode($row);
                $row =$obj->fetch();
                 if($row){
                    echo ',';
                }
            }
                 echo"]}";
            return;
        }
        echo'{"resutl": 0, "message":"Invalid username or password! please try again"}';
        return;
  }

      function logout(){

        session_destroy();
        echo '{"result": 1, "message": "Loged out successfully"}';
        return;
      
    }

    function add_customer(){
        include("shoes.php");
        $obj=new shoes();
        $email=$_GET['email'];
        $password=$_GET['password'];
        if($obj->register($email,$password)){
               echo'{"result":1,"message": " customer successfully registered"}';
         }
         else{
              echo'{"result":0,"message": "customer not added"}';
         }
    }

function customer_info(){
    include("shoes.php");
    $obj=new shoes();
    $fname=$_GET['firstname'];
    $lname=$_GET['lastname'];
    $tel=$_GET['telephone'];
    $shad=$_GET['shipping_address'];
    $email=$_GET['email_address'];
    if($obj->userinfo($fname,$lname,$tel,$shad,$email)){
              echo'{"result":1,"message": " customer info successfully ended"}';
         }
         else{
              echo'{"result":0,"message": "customer  info not added"}';
         }

}
function change_password(){
  include("shoes.php");
  $obj=new shoes();
  $email=$_GET['email_address'];
  $newpassword=$_GET['password'];
  if($obj->changepassword($email,$newpassword)){
      echo'{"result":1,"message": "sucessfully changed password"}';
  }
   else{
              echo'{"result":0,"message": "error changing password"}';
         }
}
function add_shoe(){
  include("shoes.php");
  $obj=new shoes();
  $inventoryid=$_GET['inventoryid'];
  $shoebrand=$_GET['shoebrand'];
  $shoesize=$_GET['shoesize'];
  $shoecolor=$_GET['shoecolor'];
  $price=$_GET['price'];
  if($obj->add_shoe($inventoryid,$shoebrand,$shoesize,$shoecolor,$price)){
    echo'{"result":1,"message": "sucessfully added shoe to list"}';
  }
  else{
              echo'{"result":0,"message": "error adding"}';
         }

}
 function admin_login(){
        include ("shoes.php");
        $obj=new shoes();
        $username=$_GET['username'];
        $password=$_GET['password'];
        $obj->admin_login ($username, $password);
        $row=$obj->fetch();
        if($row){
            
            $_SESSION['username']=$username;
            $_SESSION['password']=$password;
            echo '{"result": 1, "user": [';
            while($row){
                echo json_encode($row);
                $row =$obj->fetch();
                 if($row){
                    echo ',';
                }
            }
                 echo"]}";
            return;
        }
        echo'{"resutl": 0, "message":"Invalid username or password! please try again"}';
        return;
  }
?>
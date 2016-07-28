<?php
include_once("new_adb.php");
class shoes extends new_adb{

	function display_list($id){
	$str_query= " select shoes.shoeid,shoes.shoebrand,shoes.shoesize,shoes.shoecolor,shoes.price,shoe_type.typename,shoe_type.type_description
 from shoes left join shoe_type on shoes.shoeid=shoe_type.shoeid where shoes.shoeid=$id";
	return $this-> query($str_query);
	}
	function add_shoe($inventoryid,$shoebrand,$shoesize,$shoecolor,$price){
		$str_query="insert into shoes set inventoryid=$inventoryid,shoebrand='$shoebrand',shoesize=$shoesize,shoecolor='$shoecolor',price=$price";
		return $this-> query($str_query);

	}
	function userinfo($fname,$lname,$tel,$shad,$email){
		$str_query="insert into customers set firstname='$fname', lastname='$lname',telephone='$tel',shipping_address='$shad',email_address='$email'";
		return $this-> query($str_query);
}
	function changepassword($email,$newpassword){
		$str_query="update customer_login set password='$newpassword' where email_address='$email'";
		return $this-> query($str_query);
    }
	function login($email,$password){
		$str_query="select * from customer_login where email_address='$email' and password='$password'";
		return $this-> query($str_query);

	}

	function register($email,$password){
		$str_query="insert into customer_login set email_address='$email', password='$password'";
		return $this-> query($str_query);
	}
   function admin_login($username,$password){
   	$str_query="select * from admin_login where username='$username' and password='$password'";
   	return $this->query($str_query);
   }
   function add_orders($id,$brand,$quantity,$total){
   	$str_query="insert into daily_orders set shoeid=$id,purchasebrand='$brand',quantity='$quantity',total_price='$total'";
   	return $this-> query($str_query);
   }
   function display_orders(){
   	$str_query="select daily_orders.purchasebrand,shoe_type.typename,daily_orders.quantity , daily_orders.total_price,daily_orders.date_time from daily_orders left join shoe_type
   	on daily_orders.shoeid=shoe_type.shoeid";
   	 	return $this->query($str_query);
   }
   function update_list($shoeb, $shoesz,$shoecl, $prc, $id){
   	$str_query="update shoes set shoebrand='$shoeb',shoesize=$shoesz,shoecolor='$shoecl',price=$prc where shoeid=$id";
   	return $this->query($str_query);

   }
}
?>
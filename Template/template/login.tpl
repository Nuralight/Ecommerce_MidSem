{% extends "index.tpl" %}
{% block SLIDE %}
{% endblock %}
{% block CAT%}
{% endblock %}
{% block MENU %}

<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">{{aName}}</h2>
</div>
</div>
</div>

<!-- start main -->
<div class="main_bg">
<div class="wrap">
<div class="main">

	<div id="login"></div>

<div class="login_left">
		<h3>new customers</h3>
		<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping address, view and track your orders in your accoung and more.</p>
		<div class="btn">
			<form>
				<input type="button"  onclick="location.href='register.php';" value="create an account" />
			</form>
		</div>
	</div>
	<div class="login_left">
		<h3>registered customers</h3>
		<p>if you have any account with us, please log in.</p>
	<!-- start registration -->
	<div class="registration">
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
		
			
			 function sendRequest(u){
        var obj=$.ajax({url:u,async:false});
        //Convert the JSON string to object
        var result=$.parseJSON(obj.responseText);

        return result;  //return object
        
      }
      function login(){
      	var email=$("#email").val();
      	var password=$("#pwd").val();
      	var theUrl="login.php?cmd=1&email="+email+"&password="+password;
      	var obj=sendRequest(theUrl);

      	if(obj.result==1){
      		window.location.replace("page1.php");
      	}
      	 else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't  Log in</div>";
        $("#login").html(status);
    }


      }
		</script>
	<div class="registration_left">
		<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>sign in using Facebook</i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form -->
			<form  action="page1.php" method="post">
				<div>
					<label>
						<input placeholder="email:" type="email" id="email" tabindex="3" required="">
					</label>
				</div>
				<div>
					<label>
						<input placeholder="password" type="password" id="pwd" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<input type="button" class="btn btn-default" onclick ='login()'value="Sign in">
					<input type="button" class="btn btn-default" onclick="location.href='change_password.php';" value="Change Password">
				</div> 
				<div class="forget">
					<a href="#">forgot your password</a>
				</div>
			</form>
			<!-- /Form -->
		</div>
	</div>
	</div>
	<!-- end registration -->
	</div>
	<div class="clear"></div>
</div>
</div>
</div>

	
	



	

{% endblock %}
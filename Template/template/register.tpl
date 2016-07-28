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
	<div id="add">
                  </div>
	
	<div class="login_left">
		<h3>register new customers</h3>
		<p>By creating an account with our store, you will be able to move through the checkout process 
	<!-- start registration -->
	<div class="registration">
		<!-- [if IE] 
		    < link rel='stylesheet' type='text/css' href='ie.css'/>  
		 [endif] -->  
		  
		<!-- [if lt IE 7]>  
		    < link rel='stylesheet' type='text/css' href='ie6.css'/>  
		<! [endif] -->  
		<script>
					$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>
<!-- start top_js_button -->
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
			

		 function sendRequest(u){
        var obj=$.ajax({url:u,async:false});
        //Convert the JSON string to object
        var result=$.parseJSON(obj.responseText);

        return result;  //return object
        
      }
      function register(){
      	var email=$("#email").val();
      	var password=$("#pwd").val();
      	var theUrl="login.php?cmd=2&email="+email+"&password="+password;
      	var obj=sendRequest(theUrl);

      	if(obj.result==1){
      		window.location.replace("page5.php");
      		  //status+="<div class='alert alert-success'><strong>Success!</strong> Your account has been successfully created, You can  login now.</div></div>";
            //$("#add").html(status);
      	}
      	 else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't  create account, try again </div>";
        $("#add").html(status);
    }

km
      }

		</script>
	<div class="registration_left">
		<a href="#"><div class="reg_fb"><img src="images/facebook.png" alt=""><i>Register using Facebook</i><div class="clear"></div></div></a>
		 <div class="registration_form">
		 <!-- Form -->
			<form action="page5.php">
				<div>
					<label>
						<input placeholder="email:" id="email" type="email" tabindex="3" required="">
					</label>
				</div>
				<div>
					<label>
						<input placeholder="password" type="password" id="pwd" tabindex="4" required="">
					</label>
				</div>						
				<div>
					<input type="button"  onclick ='register()' class="btn btn-default" value="Create an account" id="register-submit">
				</div>
				<div class="sky_form">
					<label class="checkbox"><input type="checkbox" name="checkbox"><i>i agree to <a class="terms" href="#"> terms of service</a> </i></label>
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

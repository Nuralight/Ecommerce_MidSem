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
<div class="main_bg">
<div class="wrap">
<div class="main">
	<div id='change'>
	</div>
	<script>
	 function sendRequest(u){
        var obj=$.ajax({url:u,async:false});
        //Convert the JSON string to object
        var result=$.parseJSON(obj.responseText);

        return result;  //return object
        
      }
      function change_password(){
      	var email=$('#email').val();
      	var newpassword=$('#npwd').val();
      	var theUrl="login.php?cmd=4&email_address="+email+"&password="+newpassword;
      		var obj=sendRequest(theUrl);
      	   if(obj.result==1){
            window.location.replace("page5.php");
          
        }
         else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't change password, try again</div>";
        $("#change").html(status);
    }
      }

	</script>



	    <div class="container">
         <!-- Form -->
            <form role="form">
                    <div class="form-group">
                
                        <input placeholder="email" class="form-control" type="email" id="email" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="old password" class="form-control" type="password" id="opwd"tabindex="4" required="">
                    
                </div>
                  <div class="form-group">
                    
                        <input placeholder="new password" type="password"class="form-control"  id="npwd" type="text" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                    <input type="button" onclick='change_password()'class="btn btn-default"value="Change Password">
                </div>
                
            </form>
                </div>
                <div class="clear"></div>
	
</div>
</div>
</div>

{% endblock %}
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
      function admin_login(){
        var username=$('#username').val();
        var password=$('#pwd').val();
        var theUrl="login.php?cmd=6&username="+username+"&password="+password;
        var obj=sendRequest(theUrl);
           if(obj.result==1){
            window.location.replace("admin.php");
          
        }
         else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong>Wrong username or password</div>";
        $("#change").html(status);
    }
      }
      
	</script>



	    <div class="container">
         <!-- Form -->
            <form role="form">
                    <div class="form-group">
                
                        <input placeholder="username" class="form-control" type="text" id="username" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="password" class="form-control" type="password" id="pwd"tabindex="4" required="">
                    
                </div>
                 
                 <div class="form-group">
                    <input type="button" onclick="admin_login()"class="btn btn-default"value="Log in">
                </div>
                
            </form>
                </div>
                <div class="clear"></div>
	
</div>
</div>
</div>

{% endblock %}
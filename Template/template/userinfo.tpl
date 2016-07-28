{% extends "index.tpl" %}
{% block SLIDE %}
{% endblock %}
{% block CAT%}
{% endblock %}

{% block MENU %}

<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">{{info}}</h2>
</div>
</div>
</div>
<div class="main_bg">
<div class="wrap">
<div class="main">
    <div id="add">
    </div>
<script>

         function sendRequest(u){
        var obj=$.ajax({url:u,async:false});
        //Convert the JSON string to object
        var result=$.parseJSON(obj.responseText);

        return result;  //return object
        
      }
      function user_details(){
        var fname=$("#fnm").val();
        var lname=$("#lnm").val();
        var tel=$("#tel").val();
        var shad=$("#shad").val();
        var email=$("#email").val();
        var theUrl="login.php?cmd=3&firstname="+fname+"&lastname="+lname+"&telephone="+tel+"&shipping_address="+shad+"&email_address="+email;
        var obj=sendRequest(theUrl);

        if(obj.result==1){
            window.location.replace("confirmation.php");
            //status+="<div class='alert alert-success'><strong>Success!</strong> Your Shipping Information has been successfully added, You can  login now.</div></div>";
           // $("#add").html(status);
        }
         else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't  create account, try again </div>";
        $("#add").html(status);
    }
      }
</script>

         <div class="container">
         <!-- Form -->
            <form role="form">
                    <div class="form-group">
                
                        <input placeholder="firstname" class="form-control" type="text" id="fnm" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="lastname" class="form-control" type="text" id="lnm"tabindex="4" required="">
                    
                </div>
                <div class="form-group">
                    
                        <input placeholder="telephone number" class="form-control"  id="tel" type="text" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                
                        <input placeholder="shipping address" class="form-contr ol" type="txt" id="shad" tabindex="4" required="">
                
                </div> 

                <div class="form-group">
                    
                        <input placeholder="email:" class="form-control" type="email" id="email" tabindex="3" required="">
                    
                </div>
                                    
                <div class="form-group">
                    <input type="button" onclick='user_details()'class="btn btn-default"value="Proceed to Check out" id="register-submit">
                </div>
                
            </form>
            <!-- /Form -->
        </div>
	
</div>
</div>
</div>

{% endblock %}
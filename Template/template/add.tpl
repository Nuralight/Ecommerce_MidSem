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
	
      function add_shoe(){
      var inventoryid=$('#inventoryid').val();
      var shoebrand=$('#shoebrand').val();
      var shoesize=$('#shoesize').val();
      var shoecolor=$('#shoecolor').val();
      var price=$('#price').val();
      var theUrl="login.php?cmd=5&inventoryid="+inventoryid+"&shoebrand="+shoebrand+"&shoesize="+shoesize+"&shoecolor="+shoecolor+"&price="+price;
      		var obj=sendRequest(theUrl);
      	   if(obj.result==1){
            window.location.replace("admin.php");
          
        }
         else {
        status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't change add to list, try again</div>";
        $("#change").html(status);
    }
      }

	</script>



	    <div class="container">
         <!-- Form -->
            <form role="form">
                    <div class="form-group">
                
                        <input placeholder="inventoryid" class="form-control" type="text" id="inventoryid" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="shoebrand" class="form-control" type="text" id="shoebrand"tabindex="4" required="">
                    
                </div>
                  <div class="form-group">
                    
                        <input placeholder="shoesize" type="text"class="form-control"  id="shoesize" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                    
                        <input placeholder="shoecolor" type="text"class="form-control"  id="shoecolor" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                    
                        <input placeholder="price" type="text"class="form-control"  id="price" tabindex="4" required="">
                
                </div>
                 <div class="form-group">
                    <input type="button" onclick='add_shoe()'class="btn btn-default"value=" Add to List">
                </div>
                
            </form>
                </div>
                <div class="clear"></div>
	
</div>
</div>
</div>

{% endblock %}
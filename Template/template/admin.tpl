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
	<div id='logout'>
	</div>
	<script>
	function sendRequest(u){
        var obj=$.ajax({url:u,async:false});
        //Convert the JSON string to object
        var result=$.parseJSON(obj.responseText);
        
        return result;  //return object
        
      }

	 function logout(){

          var theUrl="login.php?cmd=7";
          var status="";
          var obj=sendRequest(theUrl);

          if(obj.result===1){
          window.location.replace("page1.php");
           
          }
           else {
              status += "<div  class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button><strong>Warning!</strong> Couldn't  Log out </div>";

              $("#logout").html(status);

          }  
        }
	</script>
	
	<div class="form-group">
                    <input type="button"  onclick="location.href='add.php';"class="btn btn-default"value="Add Shoe to the List">
                    <button type="button" onclick= 'logout()' class="btn btn-default">log out</button>
                </div>
                <h1> Shoe List </h1>
	<table class="table">
		<thread>
			<tr><th>Shoeid</th><th>Shoebrand</th><th>Shoesize</th><th>Shoecolor</th><th>price</th><th>Typename</th><th>Type_description</th>
			</thread>
			{% for x in values %}
			<tbody>
			<tr><td>{{x.shoeid}}</td><td><a href="update.php?id={{x.shoeid}}">{{x.shoebrand}}</a></td><td>{{x.shoesize}}</td><td>{{x.shoecolor}}</td><td>{{x.price}}</td><td>{{x.typename}}</td><td>{{x.type_description}}</td></tr>
		    </tbody>
			{%endfor %}
		</table>
</div>
</div>
</div>

{% endblock %}
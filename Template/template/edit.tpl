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

	    <div class="container">
         <!-- Form -->
            <form role="form" action="admin_login.php?shob='shob'& shos='shos'&shoc='shoc'&prc='prc'">
                    <div class="form-group">
                
                        <input placeholder="shoe brand" class="form-control" type="text" name="shob" tabindex="4" required="">
                
                </div>
                    <div class="form-group">
                    
                        <input placeholder="shoe size" class="form-control" type="text" name="shos"tabindex="4" required="">
                    
                </div>
                    <div class="form-group">
                    
                        <input placeholder="shoe color" class="form-control" type="text" name="shoc"tabindex="4" required="">
                    
                </div>
                   <div class="form-group">
                    
                        <input placeholder="price" class="form-control" type="text" name="prc" tabindex="4" required="">
                    
                </div>
                 
                 <div class="form-group">
                    <input type="button" class="btn btn-default"value="Update">
                </div>
                
            </form>
                </div>
                <div class="clear"></div>
	
</div>
</div>
</div>

{% endblock %}
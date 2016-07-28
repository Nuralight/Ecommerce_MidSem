

{% extends "index.tpl" %}
{% block SLIDE %}
{% endblock %}
{% block CAT%}
{% endblock %}

{% block MENU %}

<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">{{shoe}}</h2>
</div>
</div>
</div>

<div class="main_bg">
<div class="wrap">
<div class="main">

	
	     

			  <div class="product-image"> 
				        <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href="images/pic3.jpg" title="Women Shorts" alt="Women Shorts">
				           	<img src="images/pic3.jpg" alt="Women Shorts" title="Women Shorts" />
				        </a>
				   </div>

				  
				  <div class="desc1">
					<h3>{{shoebrand}}</h3>
					<h5>${{price}} <span>{{price+5}}</span> <a href="#">click for offer</a></h5>
					<div class="available">
						<div class="btn_form">
							
							<form action="details.php" method="get">
								<input type="hidden" name="myid" value="{{shoe_id}}">
								<input type="submit" id="{{shoe_id}}" name="thecart" value="Add to Cart" title=""/>
		                        
							</form>
						
						</div>
						<h3>Description</h3>
						<p>{{description}}</p>
						<span><a href="#">login to save in wishlist </a></span>
						
					</div>
			

		
       
</div>
</div>
</div>
{% endblock %}


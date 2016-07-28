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
{% for x in values %}


	<div class="grids_of_3" style="margin: 50px;">
		<div class="grid1_of_3">
	
			<a href="details.html">
				<img src='{{image}}' alt="">
				<h3>{{x.shoebrand}}</h3>
				<span class="price">${{x.price}}</span>
				
			</a>


		</div>
		
	</div>


{% endfor %}

	

{% endblock %}
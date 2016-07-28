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
    	     <div class="alert alert-success">
  <strong>Success!</strong> You have successfully Checkout.
</div>
<p><b> You will soon receive an email from us </b></p>
<p><a href="table.php"> View Purchase </a></p> 
<!-- <a href="portfolio.php?func=1"> Continue Shopping<a> -->
    </div>
    </div>
</div>


{% endblock %}
ck SLIDE %}
{% endblock %}
{% block CAT%}
{% endblock %}

{% block MENU %}

<div class="top_bg">
<div class="wrap">
<div class="main_top">
	<h2 class="style">{{cart}}</h2>
</div>
</div>
</div>
<div class="main_bg">
<div class="wrap">
<div class="main">
	<table class="table">

                            <thead>
                                <tr><th> Shoe </th><th>Number of Shoes Added</th><th>Price</th>
                                </thead>
                                {% for y in  mycart %}
                                <tbody>
                                    <tr><td>{{y.shoebrand}}</td><td><a href="cart.php?sid={{y.sid}}">{{y.id}}</a></td><td>{{y.price}}</td></tr></tbody> 

                                {% endfor %}
                                 <tr><td> Total cost</td><td></td><td>{{totalcost}}</td></tr>
                        </table>
                        <div class="btn_form">
                            
                            <form action="userinfo.php" method="get">
                                <input type="submit"  value="Checkout" title=""/>
                                
                            </form>
                        
                        </div>

</div>
</div>
</div>

{% endblock %}
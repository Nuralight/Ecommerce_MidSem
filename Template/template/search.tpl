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

    
    <!-- start grids_of_3 -->
    <div class="grids_of_3">
        
    {% for x in values %}
    

    <div class="grids_of_3">
                <div class="grid1_of_3">
         

            <a href="details.php?myid={{x.shoeid}}">
                <img src='{{image}}' alt="">
                <h3>{{x.shoebrand}}</h3>
                <span class="price">${{x.price}}</span>
                
            </a>


        </div>
        
        
    </div>

        {% endfor %}



        
            </div>
    
        <div class="clear"></div>
    </div> 

    <div class="clear"></div>
    <!-- start grids_of_2 -->
    
        
                <div class="clear"></div>
        
        <div class="clear"></div>
    
    

</div>
</div>
</div>

    

{% endblock %}
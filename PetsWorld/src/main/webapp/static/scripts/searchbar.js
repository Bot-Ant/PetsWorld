$(document).ready(function(){
    $.ajaxSetup({ cache: false });
    $('#search').keyup(function(){
        $('#result').html('');
        $('#state').val('');
        var searchField = $('#search').val();
        var expression = new RegExp(searchField, "i");
        $.getJSON('static/datas/products.json', function(data) {
            $.each(data, function(key, value){
                if (value.name.search(expression) != -1 || value.brand.search(expression) != -1)
                {
                    $('#result').append('<li class="list-group-item link-class"><img src="'+value.image+'" class="img-thumbnail" /> '+value.name+' | <span class="text-muted">'+value.brand+'</span></li>');
                }
            });   
        });
    });
 
    $('#result').on('click', 'li', function() {
        var click_text = $(this).text().split('|');
        $('#search').val($.trim(click_text[0]));
        $("#result").html('');
    });
});
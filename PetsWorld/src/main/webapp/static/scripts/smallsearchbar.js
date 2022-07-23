$(document).ready(function(){
    $.ajaxSetup({ cache: false });
    $('#mini-search').keyup(function(){
        $('#mini-result').html('');
        $('#mini-state').val('');
        var searchField = $('#mini-search').val();
        var expression = new RegExp(searchField, "i");
        $.getJSON('static/datas/products.json', function(data) {
            $.each(data, function(key, value){
                if (value.name.search(expression) != -1 || value.animal.search(expression) != -1)
                {
                    $('#mini-result').append('<li class="list-group-item link-class"><img src="'+value.image+'" class="img-thumbnail" /> '+value.name+' | <span class="text-muted">'+value.animal+'</span></li>');
                }
            });   
        });
    });
 
    $('#mini-result').on('click', 'li', function() {
        var click_text = $(this).text().split('|');
        $('#mini-search').val($.trim(click_text[0]));
        $("#mini-result").html('');
    });
});
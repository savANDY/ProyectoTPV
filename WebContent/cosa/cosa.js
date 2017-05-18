$(document).ready(function() {
       
    $("button[name='addDom']").click(function() {
        var domElement = $('<div class="module_holder"><div class="module_item"><img src="images/i-5.png" alt="Sweep Stakes" /></div></div>');
        $(this).after(domElement);
    }); 
});
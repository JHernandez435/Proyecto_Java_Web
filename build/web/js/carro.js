$(function(){
    $("tr #deleteItem").click(function(e){
   e.preventDefault();
   var elemento = $(this);
   var idproducto = elemento.parent().find('#idarticulo').text();
   $.ajax({
   url : 'borraritem',
   type : 'post',
   data : {idproducto : idproducto},
   success : function(r){
     elemento.parent().parent().remove();  
   }
});
});
});

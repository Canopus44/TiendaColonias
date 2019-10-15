function editclientes(id){
    $.ajax({
    type: "POST",
    url: 'Controlador?menu=Cliente&accion=Editar&id='+ id,
    data: JSON,
    success :function(data) {
     

        
   }, error: function (xhr, status, error) {
             $("#res2").text(error);
          }
  });
}


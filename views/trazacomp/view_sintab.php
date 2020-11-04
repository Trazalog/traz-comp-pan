<input type="hidden" id="permission" value="<?php echo $permission;?>">   
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-danger alert-dismissable" id="error" style="display: none">
          <h4><i class="icon fa fa-ban"></i> Error!</h4>
          Revise que todos los campos obligatorios esten seleccionados
      </div>
  </div>
</div>

<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-success" id="error2" style="display: none">
          <h4></h4>
          EL EQUIPO POSEE COMPONENTES ASOCIADOS
      </div>
  </div>
</div>
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-success" id="error3" style="display: none">
          <h4></h4>
          EL EQUIPO NO POSEE COMPONENTES ASOCIADOS
      </div>
  </div>
</div>
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h2 class="box-title ">Entrega - Recepción de Componentes</h2>
           <?php
          // if (strpos($permission,'Add') !== false) {
          //   echo '<button class="btn btn-block btn-success" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>';
          // }
          ?>
        </div><!-- /.box-header -->
        <div class="box-body">
          <!-- form  -->
          <form  id="form_order" action="" accept-charset="utf-8">
            
            <div class="row" >
              <div class="col-sm-12 col-md-12">
                <div role="tabpanel" class="tab-pane">
                    <div class="form-group">
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h2 class="panel-title  fa fa-th-large" > Datos del Componente</h2>
                        </div>
       
                        <div class="panel-body">
                          <div class="tab-content">
                            
                            <div class="col-xs-12" >
                              <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="entrega">Entrega de componente
                              </label>
                              <label class="radio-inline">
                                <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="recibo">Recibo de componente
                              </label>
                            </div> <br> <br>
                           
                            <div class="col-xs-12" >
                              <form class="form-inline">
                                <div class="form-group">
                                  <label for="exampleInputName2">Responsable Pañol: </label>
                                  <input type="text" class="form-control" id="exampleInputName2" placeholder="Responsable Pañol">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputName2">Entrega / Recibe: </label>
                                  <input type="text" class="form-control" id="exampleInputName2" placeholder="Entrega o Recibe">
                                </div>
                                
                              </form>
                            </div><br> 
                            
                            <div role="tabpanel" class="tab-pane active" id="choras">
                              <div class="row" >
                                <div class="col-xs-4"><label>Equipo</label> <strong style="color: #dd4b39">*</strong> : 
                                  <select id="equipo" name="equipo" class="form-control select2" />
                                  <input type="hidden" id="id_equipo" name="id_equipo">
                                </div>
                                <div class="col-xs-4"><label>Componente</label> <strong style="color: #dd4b39">*</strong> :  
                                  <select  id="componente" name="componente" class="form-control" />
                                </div><br>
                                
                                
                              </div> <br>

                              <div class="row" >
                                  <div class="col-xs-4"><label>Estanteria</label> <strong style="color: #dd4b39">*</strong> :  
                                      <select  id="estanteria" name="estanteria" class="form-control" />
                                  </div>

                                  <div class="col-xs-4"><label>Fila</label><strong style="color: #dd4b39">*</strong> :
                                      <select class="form-control" id="fila" style="width: 100%;"></select> 
                                  </div><br>
                                  
                                  <div class="col-xs-4">
                                  
                                    <button type="button" class="btn btn-success" id="addcompo" onclick="javascript:armarTabla()"><i class="fa fa-check"></i></button>
                                  </div><br><br>


                                  <div class="col-xs-8><label>Observaciones:</label>
                                    <textarea class="form-control" id="descrip" name="descrip"></textarea>
                                  </div>



                              </div><br><br>
                                
                              <!-- tabla-->
                                <div class="row" >
                                  <div class="col-sm-12 col-md-12">
                                    <table class="table table-bordered" id="tablaequipos" border="1px"> 
                                       
                                      <thead>
                                         <tr>                       
                                          <th></th>
                                          <th>Equipo</th>
                                          <th>Componente</th>
                                          <th>Estanteria</th>
                                          <th>Fila</th>
                                          <th>Observaciones</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              <!-- / tabla--> 
                            </div>
               
                          </div>
                        </div>

                      </div>
                    </div>
                </div>
              </div>
            </div>

            <div class="modal-footer">              
                <button type="button" class="botones btn btn-primary" onclick="javascript:enviarOrden()">Guardar</button>
            </div>  <!-- /.modal footer -->
            
          </form>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->


<!-- Trae equipos y componentes s/ equipos-->
<script>

  $(function(){  

      $.ajax({
            type: 'POST',
            //data: { },
            url: 'index.php/Trazacomp/getEquipo', 
            success: function(data){               
                    
                    var opcion  = "<option value='-1'>Seleccione...</option>" ; 
                    $('#equipo').append(opcion);                 
                    
                    for(var i=0; i < data.length ; i++){ 
                        var nombre = data[i]['codigo'];
                        var opcion  = "<option value='"+data[i]['id_equipo']+"'>" +nombre+ "</option>" ; 
                        $('#equipo').append(opcion);                                   
                    }
                  },
            error: function(result){              
                  console.log(result);
                },
               dataType: 'json'
      });

      //llenarFilas();
  });

$(function(){
  var opcion  = "<option value='-1'></option>" ;
      $('#fila').append(opcion); 
      for(var i=1; i < 10 ; i++){           
          var opcion  = "<option value='"+i+"'>" +i+ "</option>" ; 
          $('#fila').append(opcion);                                   
      }
});



  $('#equipo').change(
       
    function(){   
          $("#componente").val('');
          $("#componente").html('');

          var id_eq = $("#equipo").val();   
          //alert('ide de equipo: '+ id_eq);
          var comp_select= $("#componente"); 
          $.ajax({
                'data' : {id_equipo : id_eq },
                'async': true,
                'type': "POST",
                'global': false,
                'dataType': 'json',
                'url': "Trazacomp/getComponente",
                'success': function (data) {
                   
                    var opcion  = "<option value='-1'>Seleccione...</option>" ; 
                    comp_select.append(opcion);
                    for (var i = 0; i< data.length; i++) {

                          var opcion  = "<option value='"+data[i]['id_componente']+"'>" +data[i]['descripcion']+ "</option>" ; 
                          comp_select.append(opcion);
                    }                                     
                },
                'error': function(data){
                  console.log("No hay componentes asociados en BD");
                }
          });          
    }
  ); 



////////////////////////////////////////////////////////////////////

   $('#componente').change(
       
     function(){   
           //$("#componente").val('');
          

           var id_eq = $("#equipo").val();   
           //alert('ide de equipo: '+ id_eq);
           var comp_select= $("#componente"); 
           $.ajax({
                 'data' : {id_equipo : id_eq },
                 'async': true,
                 'type': "POST",
                 'global': false,
                 'dataType': 'json',
                 'url': "Trazacomp/getCompEquipo",
                 'success': function (data) {
                                                      
                 },
                 'error': function(data){
                   console.log("No hay componentes asociados en BD");
                 }
           });          
     }
   ); 


////////////////////////////////////////////////////////////////////////////////////////////








</script>
<!-- / Trae equipos y componentes s/ equipos-->

<!-- Trae Estanterias-->
<script>

  // $(function(){  

  //     $.ajax({
             
  //             type: 'POST',
  //             url: 'index.php/Trazacomp/getEstanteria', 
              
  //             success: function(data){
                     
  //                     var opcion  = "<option value='-1'>Seleccione...</option>" ; 
  //                     var sel_estant = $('#estanteria');
  //                     sel_estant.append(opcion); 
  //                     //select.append(opcion); 
  //                     for(var i=0; i < data.length ; i++){ 

  //                       var opcion  = "<option value='"+data[i]['id_estanteria']+"'>" + data[i]['descripcion'] + "</option>" ; 
  //                       sel_estant.append(opcion);                                   
  //                     }
  //                   },
  //             error: function(result){
                    
  //                   console.log(result);
  //                 },
  //             dataType: 'json'
  //     });
   
  // })();
</script>
<!-- / Trae Estanterias-->

<!--  Arma tabla y elimina filas-->
<script>
  // TAREAS
  
  // var regTar = 0;                  // variable incrementable en func, para diferenciar los inputs
  // function armarTabla(){    // inserta valores de inputs en la tabla 

  //   var $equipo = $("select#equipo option:selected").html();
  //   var $id_equipo = $("#equipo").val();
  //   console.log('Vaores de tabla: ');
  //   console.log($equipo);
  //   console.log($id_equipo);


  //   var $componente = $("select#componente option:selected").html();
  //   var $id_componente = $("#componente").val();
  //   console.log($componente);
  //   console.log($id_componente);
    
  //   var $estanteria = $("select#estanteria option:selected").html();
  //   var $id_estanteria = $("#estanteria").val();    // muestra e id de componente
    
  //   var $fila = $("#fila").val();
    
    
  //    $("#tablaequipos tbody").append(
  //      '<tr>'+
  //       '<td><i class="fa fa-ban elirow" style="color: #f39c12; cursor: pointer; margin-left: 15px;"></i></td>'+

  //       '<td class="equip"><input type="text" class="equipo" id="equipo" value=" '+ $equipo +' " placeholder=""></td>'+ 
  //       '<td class="hidden id_eq" name="id_equipo" id="id_equipo">'+ $id_equipo +'</td>'+      

  //       '<td class="comp" id="comp"><input type="text" class="componente" id="componente" value=" '+ $componente +' " placeholder=""></td>'+
  //       '<td class="hidden id_comp" id="id_comp"><input type="text" name="comp_id'+ '['+ regTar+']' +'" class="comp_id" id="comp_id" value=" '+ $id_componente +' " placeholder=""></td>'+

  //       '<td class="est"><input type="text" class="estanteria" id="estanteria" value=" '+ $estanteria +' " placeholder=""></td>'+ 
  //       '<td class="hidden id_est" name="id_estanteria" id="id_estanteria">'+ $id_estanteria +'</td>'+   


  //       '<td class="fi" id="fi"><input type="text" name="fi'+ '['+ regTar+']' +'" class="fila" id="fila" value=" '+ $fila +' " placeholder=""></td>');

  //   $("#equipo").val("Seleccione...");
  //   $("#componentes").val("");
  //   $("#componente").html("Seleccione...");
  //   $("#estanteria").html("Seleccione...");
  //   $("#estanteria").val("");
  //   $("#fila").html("");
  //   llenarFilas(); 

  //   regTar++;
  // }
  // // Evento que selecciona la fila y la elimina 
  // $(document).on("click",".elirow",function(){
  //     var parent = $(this).closest('tr');
  //     $(parent).remove();
  //});
</script>
<!-- / Arma tabla y elimina filas-->

<!-- Validacion de campos y Envio form -->
<script>

// function enviarOrden() {  

    
//   /////  VALIDACIONES

//   var hayError = false;
    
//   // if ($('#numSolic').val() == '') {
//   //         hayError = true;
//   //     }

//   // if(hayError == true){
//   //    $('#error').fadeIn('slow');
//   //    return;
//   // }
//   // else{
//   //     $('#error').fadeOut('slow');
//       var id_equipo = $("#numSolic").val();
//       var datos = $("#form_order").serializeArray();
//       // console.log("Orden array serializado");
//       // console.log(datos);






//       WaitingOpen('Guardando cambios');
//       $.ajax({    
//                   data: datos,
//                   type: 'POST',             
//                   dataType: 'json',
//                   url: 'index.php/Ordenservicio/setOrdenServ',                
//                   success: function(result){
                                                    
//                           WaitingClose();
//                           setTimeout("cargarView('Ordenservicio', 'index', '"+$('#permission').val()+"');",0);
//                   },
//                   error: function(result){
//                           WaitingClose();
                                                    
//                           alert("Error en guardado...");
//                   },
//             });
          
// }
</script>
<!-- / Validacion de campos y Envio form -->
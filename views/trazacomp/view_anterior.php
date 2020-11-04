<input type="hidden" id="permission" value="<?php echo $permission;?>">
<div class="row">
  <div class="col-xs-12">
    <div class="alert alert-danger alert-dismissable" id="error" style="display: none">
          <h4><i class="icon fa fa-ban"></i> Error!</h4>
          Revise que todos los campos obligatorios esten completos
      </div>
  </div>
</div>

<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h2 class="box-title ">Entrega - Recepción de Componentes</h2>
        </div><!-- /.box-header -->
        <div class="box-body">
        <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>
          <div class="row" >
            <div class="col-xs-12">

              <div class="panel panel-default"> 
                <div class="panel-heading">
                  <h2 class="panel-title "><span class="fa fa-th-large"></span> Datos del Componente</h2>
                </div><!-- / panel-heading --> 

                <div class="panel-body">
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#entrega" id="entr" aria-controls="entrega" role="tab" data-toggle="tab">Entrega de componente</a></li>

                    <li role="presentation"><a href="#recibe" id="recepcion" aria-controls="recibe" role="tab" data-toggle="tab">Recibo de componente</a></li>

                    <li role="presentation"><a href="#nuevaest" id="nuevaesteria" aria-controls="nuevaest" role="tab" data-toggle="tab">Nueva Estanteria</a></li>
                  </ul>
                  <!-- /  Nav tabs -->

                  <!-- Tab panes -->                            
                  <div class="tab-content">
                                  
                    <!-- tabpanel  ENTREGA -->  
                    <div role="tabpanel" class="tab-pane active" id="entrega">
                      <div class="row">
                        <br>
                        <div class="col-xs-12 col-sm-6">
                          <label for="resp_entrega">Responsable Pañol: </label>
                          <input type="text" class="form-control limp_entrega" id="resp_entrega" placeholder="Responsable Pañol">
                        </div>
                        <div class="col-xs-12 col-sm-6">
                          <label for="recib_entrega">Recibe: </label>
                          <input type="text" class="form-control limp_entrega" id="recib_entrega" placeholder="Operario o Personal Externo">
                        </div>
                        <div class="col-xs-12">
                          <br>
                          <label class="radio-inline">
                            <input type="radio" name="radioOpcion" id="interno" value="interno" checked>Interno
                          </label>
                          <label class="radio-inline">
                            <input type="radio" name="radioOpcion" id="externo" value="externo">Externo
                          </label>
                          <br><br>
                        </div>  

                        <div class="col-xs-12 col-sm-6">
                          <label>Equipo <strong style="color: #dd4b39">*</strong></label>  
                          <select id="equipo" name="equipo" class="form-control select2 equipo" />
                          <input type="hidden" id="id_equipo" name="id_equipo">
                        </div>
                        <div class="col-xs-12 col-sm-6">
                          <label>Componente <strong style="color: #dd4b39">*</strong></label> 
                          <select  id="componente" name="componente" class="form-control" />
                        </div>
                        <div class="col-xs-12">
                          <br>
                          <label>Observaciones:</label>
                          <textarea class="form-control limp_entrega" id="descrip" name="descrip"></textarea>
                        </div>                                     
                        <div class="col-xs-12">
                          <br>
                          <button type="button" class="btn btn-primary" id="addcompo" onclick="javascript:armarTabla()"><i class="fa fa-check"></i></button>
                        </div>
                        <!-- tabla-->

                        <!-- form  -->
                        <form  id="form_order" action="" accept-charset="utf-8">
                          <div class="col-xs-12">
                            <br>
                            <table class="table table-bordered" id="tablaEntrega" border="1px">
                              <thead>
                                <tr>                       
                                  <th></th>
                                  <th>Equipo</th>
                                  <th>Componente</th>
                                  <th>Observaciones</th>
                                </tr>
                              </thead>
                              <tbody>
                              </tbody>
                            </table>
                          </div>
                        </form>
                        <!-- / tabla-->
                      </div>
                    </div>
                    <!-- / tabpanel  ENTREGA -->  

                    <!--  tabpanel  RECIBE -->
                    <div role="tabpanel" class="tab-pane" id="recibe">
                      <div class="row">
                        <br>
                        <form class="">
                          <div class="col-xs-12 col-sm-6">  
                            <label for="resp_recibe">Responsable Pañol: </label>
                            <input type="text" class="form-control limp_recibe" id="resp_recibe" placeholder="Responsable Pañol">
                          </div>
                          <div class="col-xs-12 col-sm-6">
                            <label for="entrega_recibe">Entrega: </label>
                            <input type="text" class="form-control limp_recibe" id="entrega_recibe" placeholder="Operario o Personal Externo">
                          </div>                                  
                        </form>
                        <div class="col-xs-12 col-sm-6">
                          <label>Equipo</label> <strong style="color: #dd4b39">*</strong> : 
                          <select id="equiporec" name="equiporec" class="form-control select2 equipo" />
                          <input type="hidden" id="id_equipo" name="id_equipo">
                        </div>
                        <div class="col-xs-12 col-sm-6">
                          <label>Componente</label> <strong style="color: #dd4b39">*</strong> :  
                          <select  id="componenterec" name="componenterec" class="form-control" />
                        </div> 

                        <div class="col-xs-12 col-sm-6">
                          <label>Estanteria</label> <strong style="color: #dd4b39">*</strong> :  
                          <select  id="estanteria" name="estanteria" class="form-control estanteria" />
                        </div>

                        <div class="col-xs-12 col-sm-6">
                          <label>Fila</label><strong style="color: #dd4b39">*</strong> :
                          <select class="form-control" id="fila" style="width: 100%;"></select> 
                        </div><br><br>

                        <div class="col-xs-12">
                          <label>Observaciones:</label>
                          <textarea class="form-control limp_recibe" id="obser" name="descrip"></textarea>
                        </div><br>                                    

                        <div class="col-xs-12">
                          <br>                                      
                          <button type="button" class="btn btn-primary" id="addcompo" onclick="armarTablaRecibe()"><i class="fa fa-check"></i></button>
                        </div><br><br>

                        <!-- tabla-->
                        <form class="" id="">
                          <div class="col-xs-12">
                            <br>
                            <table class="table table-bordered" id="tablarecibe" border="1px"> 
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
                            </table><!-- / tabla-->
                          </div><!-- </div> -->
                        </form>
                      </div>
                    </div>
                    <!--  / tabpanel  RECIBE --> 
                                    
                    <!-- tabpanel  NUEVA ESTANTERIA --> 
                    <div role="tabpanel" class="tab-pane" id="nuevaest">
                      <br>
                        <form id="est">
                          <div class="col-xs-12 col-md-6">
                            <label for="numestanteria">Cód. Estanteria <strong style="color: #dd4b39">*</strong></label> 
                            <input type="" class="form-control cleanEst" id="numestanteria" name="codigo" placeholder=" Ingrese código...">
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <label for="numfila">Cantidad de Filas<strong style="color: #dd4b39">*</strong></label> 
                            <input type="" class="form-control cleanEst" id="numfila" name="fila" placeholder="Ingrese cantidad...">
                          </div>
                          <div class="col-xs-12">
                            <label for="descripcion">Descripción:</label>
                            <textarea class="form-control cleanEst" id="descripcion" name="descripcion"></textarea>
                          </div>
                          <div class="col-xs-12">
                            <br>
                            <button type="button" id="estNueva" class="botones btn btn-primary" onclick="guardarEstanteria()">Guardar Estanteria</button>
                          </div>
                        </form>
                      </div>
                    </div> 
                    <!-- / tabpanel  NUEVA ESTANTERIA --> 

                  </div><!-- / tab-content -->
                  <!-- / Tab panes --> 
                             
                </div><!-- / panel-body -->  

              </div><!-- / panel panel-default --> 

            </div><!-- / col-xs-12 -->
          </div><!-- / row --> 

          <div class="modal-footer">              
            <button type="button" id="guardar" class="botones btn btn-primary" onclick="enviarOrden()">Guardar</button>
          </div>  <!-- /.modal footer -->            

        </div><!-- / box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->

<style> .celda{border:none;}</style>

<!-- Trae equipos y componentes s/ equipos y llena estanterias-->
<script>    
// limpia los select, inputs y tabla al cambiar el tab 
$(function(){  
  $("#recepcion").click(function(){
    $("#equipo").val("-1");
    $("#componente").val("-1");
    $(".limp_entrega").val("");
    $(".registro").remove();
  });
});

$(function(){  
  $("#entr").click(function(){
    $("#equiporec").val("-1");
    $("#componenterec").val("-1");
    $("#estanteria").val("-1");
    $("#fila").val("-1");
    $(".limp_recibe").val("");
    $(".registro_rec").remove();
  });
});

// Equipos llena select equipos (Entrega - Equipos en estanterias)
$(function(){  
  $.ajax({
    type: 'POST',
    url: 'index.php/Trazacomp/getEquipEstanteria', 
    success: function(data){               
      var opc  = "<option value='-1'>Seleccione...</option>" ; 
      $('#equipo').append(opc);                 
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
});

// Equipos llena select equipos (Recepcion - Todos)
$(function(){  
  $.ajax({
    type: 'POST',
    url: 'index.php/Trazacomp/getEquipo', 
    success: function(data){               
      var opcion  = "<option value='-1'>Seleccione...</option>" ; 
      $('#equiporec').append(opcion);
      for(var i=0; i < data.length ; i++){ 
        var nombre = data[i]['codigo'];
        var opcion  = "<option value='"+data[i]['id_equipo']+"'>" +nombre+ "</option>" ; 
        $('#equiporec').append(opcion);                                   
      }
    },
    error: function(result){              
      console.log(result);
    },
    dataType: 'json'
  });
});

// llena select fila
$(function(){
  var opcion  = "<option value='-1'>Seleccione...</option>" ;
  $('#fila').append(opcion); 
  for(var i=1; i < 10 ; i++){           
    var opcion  = "<option value='"+i+"'>" +i+ "</option>" ; 
    $('#fila').append(opcion);                                   
  }
});

// llena Estanterias
llenarEstant();   
function llenarEstant(){  
  $.ajax({
    type: 'POST',
    url: 'index.php/Trazacomp/getEstanteria', 
    success: function(data){               
      var opcion  = "<option value='-1'>Seleccione...</option>" ; 
      $('.estanteria').append(opcion);                 
      for(var i=0; i < data.length ; i++){ 
        var nombre = data[i]['codigo'];
        var opcion  = "<option value='"+data[i]['id_estanteria']+"'>" +nombre+ "</option>" ; 
        $('#estanteria').append(opcion);                                   
      }
    },
    error: function(result){              
      console.log(result);
    },
    dataType: 'json'
  });
}

// llena select componente segun id de equipo
$('#estanteria').change(function(){       
  $("#fila").val('');
  $("#fila").html('');
  var id_est = $("#estanteria").val();
  var fila_select= $("#fila");
  $.ajax({
    'data' : {id_estanteria : id_est },
    'async': true,
    'type': "POST",
    'global': false,
    'dataType': 'json',
    'url': "Trazacomp/getFila",
    'success': function (data) {                  
      var opcion  = "<option value='-1'>Seleccione...</option>" ; 
      fila_select.append(opcion);
      for (var i = 0; i< data[0]['fila']; i++) {
        var cant = i+1;
        var opcion  = "<option value='"+cant+"'>" +cant+ "</option>" ; 
        fila_select.append(opcion);
      }                                     
    },
    'error': function(data){
      console.log("Error en Filas...");
    }
  });          
}); 

// llena select componente segun id de equipo
$('#equipo').change(function(){       
  $("#componente").val('');
  $("#componente").html('');
  var id_eq = $("#equipo").val();
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
}); 

$('#equiporec').change(function(){  
  $("#componenterec").val('');
  $("#componenterec").html('');
  var id_eq = $("#equiporec").val();
  var comp_select= $("#componenterec"); 
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
});
</script>
<!-- / Trae equipos y componentes s/ equipos-->


<!-- NUEVA ESTANTERIA -->
<script>
function guardarEstanteria(){   
  $('#estNueva').attr("disabled", true);
  WaitingOpen();
  var data = $('#est').serializeArray();
  $.ajax({
    'data' : data,
    'async': true,
    'type': "POST",
    'global': false,
    'dataType': 'json',
    'url': "Trazacomp/setEstantNueva",
    'success': function (data) {
     WaitingClose();
     $('#estNueva').attr("disabled", false);
       llenarEstant(); // actualiza estanerias nuevas
       $('.cleanEst').val(''); // limpio los campos de estanterianueva
     },
     'error': function(data){
      WaitingClose();
    }
  });    
} 
</script>
<!-- NUEVA ESTANTERIA -->

<!-- ENTREGA COMPONENTES -->
<script>
// Arma tabla y elimina filas en ENTREGA
function armarTabla(){           // inserta valores de inputs en la tabla 
  var $equipo        = $("select#equipo option:selected").html();
  var $id_equipo     = $("#equipo").val(); 
  var $componente    = $("select#componente option:selected").html();
  var $id_componente = $("#componente").val();
  var $observaciones = $("#descrip").val();       
  $("#tablaEntrega tbody").append(
    '<tr class="registro">'+
    '<td><i class="fa fa-ban elirow" style="color: #f39c12; cursor: pointer; margin-left: 15px;"></i></td>'+
    '<td class="equip">'+ $equipo +'</td>'+
    '<td class="hidden id_eq" id="id_equipo"> '+ $id_equipo +'</td>'+
    '<td class="comp" id="comp"><input type="text" class="componente celda" id="component" value=" '+ $componente +' " placeholder=""></td>'+
    '<td class="hidden id_comp" id="id_comp">   '+ $id_componente +'</td>'+
    '<td class="observ" id="observ">'+ $observaciones +'</td>'+
    '</tr>');

    $("#equipo").val("-1");
    $("#componente").val("");
    $("#descrip").val("");
  }
  //Evento que selecciona la fila y la elimina 
  $(document).on("click",".elirow",function(){
    var parent = $(this).closest('tr');
    $(parent).remove();
  });
      
  // Arma array y serializa para guardar
  function tableToArray(){
    var arrayTable = []; // array para devolver
    var tabla      = $("#tablaEntrega  tbody tr");
    tabla.each(function(i){
      var id_equipo     = $(this).find("td.id_eq ").html();
      var id_componente = $(this).find("td.id_comp").html();
      var observaciones = $(this).find("td.observ").html();
      item                  = {};
      item["id_equipo"]     = id_equipo;
      item["id_componente"] = id_componente;
      item["observaciones"] = observaciones;           
      arrayTable.push(item);
    });  

    var receptor         = {};
    receptor['receptor'] = $('input:radio[name=radioOpcion]:checked').val();
    arrayTable.push(receptor);

    var res_pañol          = {};        
    res_pañol['res_pañol'] = $("input#resp_entrega").val();
    arrayTable.push(res_pañol);

    var recibe       = {};        
    recibe['recibe'] = $("input#recib_entrega").val();
    arrayTable.push(recibe);

    var tipo     = {};        
    tipo['tipo'] = 'entrega';
    arrayTable.push(tipo);

    INFO  = new FormData();
    aInfo = JSON.stringify(arrayTable);
    INFO.append('data', aInfo);
    return INFO;
  }
</script>  
<!-- / ENTREGA COMPONENTES -->

<!-- RECEPCION COMPONENTES -->
<script>
function armarTablaRecibe(){           // inserta valores de inputs en la tabla 
  var $equipo        = $("select#equiporec option:selected").html();
  var $id_equipo     = $("#equiporec").val();
  var $componente    = $("select#componenterec option:selected").html();
  var $id_componente = $("#componenterec").val();
  var $observaciones = $("#obser").val();
  var $estanteria    = $("select#estanteria option:selected").html();
  var $id_estanteria = $("#estanteria").val();    // muestra e id de componente
  var $fila          = $("#fila").val();      
  $("#tablarecibe tbody").append(
    '<tr class="registro_rec">'+
    '<td><i class="fa fa-ban elirow" style="color: #f39c12; cursor: pointer; margin-left: 15px;"></i></td>'+

    '<td class="equip">'+ $equipo +'</td>'+ 
    '<td class="hidden id_equipo" name="id_equipo" id="id_equipo">'+ $id_equipo +'</td>'+      

    '<td class="comp" id="comp">'+ $componente +'</td>'+
    '<td class="hidden id_comp" id="id_comp">'+ $id_componente +'</td>'+

    '<td class="est">'+ $estanteria +'</td>'+ 
    '<td class="hidden id_estanteria" name="id_estanteria" id="id_estanteria">'+ $id_estanteria +'</td>'+ 

    '<td class="fi" id="fi">'+ $fila +'</td>'+

    '<td class="observ_rec" id="observ_rec">'+ $observaciones +'</td>'+
    '</tr>');

  $("#equiporec").val("-1");
  $("#componentes").val("-1");    
  $("#estanteria").val("-1");
  $("#fila").val("-1");
  $("#obser").val("");
}

//Evento que selecciona la fila y la elimina 
$(document).on("click",".elirow",function(){
  var parent = $(this).closest('tr');
  $(parent).remove();
});

function tableToArrayRecibe(){
  var arrayTable = []; // array para devolver
  var tabla      = $("#tablarecibe  tbody tr");
  tabla.each(function(i){
    var id_equipo     = $(this).find("td.id_equipo ").html();
    var id_componente = $(this).find("td.id_comp").html();
    var id_estanteria = $(this).find("td.id_estanteria").html();
    var fila          = $(this).find("td.fi").html();
    var observaciones = $(this).find("td.observ_rec").html();  

    item                  = {};
    item["id_equipo"]     = id_equipo;
    item["id_componente"] = id_componente;
    item["id_estanteria"] = id_estanteria;
    item["fila"]          = fila;
    item["observaciones"] = observaciones;  

    arrayTable.push(item);
  });  

  var res_pañol          = {};        
  res_pañol['res_pañol'] = $("input#resp_recibe").val();
  arrayTable.push(res_pañol);

  var recibe        = {};        
  recibe['entrega'] = $("input#entrega_recibe").val();
  arrayTable.push(recibe);

  var tipo     = {};        
  tipo['tipo'] = 'recepcion';
  arrayTable.push(tipo);

  INFO  = new FormData();
  aInfo = JSON.stringify(arrayTable);
  INFO.append('data', aInfo);
  return INFO;
}
</script>
<!-- / RECEPCION COMPONENTES -->

<!-- VALIDACION Y ENVIO DE DATOS -->
<script>
function enviarOrden() {  
  $('#guardar').attr("disabled", false);//deshabilito boton enviar  
  /////  VALIDACIONES
  var hayError   = false; 
  var entrega    = $("#resp_entrega").val();
  var recepcion  = $("#resp_recibe").val();
  var op_rec_ent = $("#recib_entrega").val();
  var op_ent_rec = $("#entrega_recibe").val();
  var datos      = "";
  if( (entrega == "") && (recepcion == "") ){   // vacio resp pañol
    hayError = true;
  } 
  if( (op_rec_ent == "") && (op_ent_rec == "")){  // vacio receptor
    hayError = true;
  }  
  if(hayError == true){
    $('#error').fadeIn('slow');
    return;
  }
  else{
    $('#error').fadeOut('slow');
    if(entrega == ""){
      datos = tableToArrayRecibe();
    }else{
      datos = tableToArray();
    }     
      
    WaitingOpen('Guardando cambios');
    $.ajax({    
      data: datos,
      type: 'POST', 
      contentType: false,
      processData: false,           
      dataType: 'json',
      url: 'index.php/Trazacomp/setEstantComponente',                
      success: function(result){                                                      
        WaitingClose();
        setTimeout("cargarView('Trazacomp', 'index', '"+$('#permission').val()+"');",0);
      },
      error: function(result){
        WaitingClose();                                                      
        alert("Error en guardado...");
        $('#guardar').attr("disabled", true);//habilito boton enviar
      },
    });
  }        
}
</script>
<!-- / VALIDACION Y ENVIO DE DATOS -->

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
          <h3 class="box-title">Vale de Salida Herramientas</h3>
          <?php
          //if (strpos($permission,'Add') !== false) {
            //echo '<button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>';
          //}
          ?>
        </div><!-- /.box-header -->

        <div class="box-body">
          <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>
          <!-- form  -->
          <form class="form-horizontal" role="form" id="form_order" action="" accept-charset="utf-8">

            <div class="row">
              <div class="col-xs-12 col-sm-6">
                <label for="comprobante">Comprobante</label>
                <input type="text" name="comprobante" class="form-control comprobante" id="comprobante">
              </div>
              <div class="col-xs-12 col-sm-6">
                <label for="fecha">Fecha</label>
                <input type="text" name="fecha" class="form-control fecha" id="fechaOrden">
              </div>
            </div>

            <div class="row">
              <div class="col-xs-12 col-sm-6">
                <label for="comprobante">Responsable</label>
                <input type="text" name="respons" class="form-control respons" id="respons" value="" placeholder="">
              </div>
              <div class="col-xs-12 col-sm-6">
                <label for="fecha">Destino</label>
                <input type="text" name="dest" class="form-control dest" id="dest" value="" placeholder="">
              </div>
            </div><br>

            <!--  ORDEN DE HERRAMIENTAS   -->
            <div class="panel panel-default" id="herramientas">
              <div class="panel-heading"><span class="fa fa-file-text-o icotitulo" aria-hidden="true"></span> Orden de Herramientas</div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-xs-12">
                    <label>Detalle</label>

                    <div class="row">
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="comprobante">Herramienta</label>
                        <input type="text" class="form-control herramienta" id="herramienta" value="" placeholder="Buscar código...">
                        <input type="hidden" name="herrId" class="form-control herrId" id="herrId">
                        <input type="hidden" name="herrcodigo" class="form-control herrcodigo" id="herrcodigo">
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="fecha">Descripción</label>
                        <input type="text" class="form-control herrdescrip" id="herrdescrip" value="" disabled>
                      </div>
                      <div class="col-xs-12 col-sm-6 col-md-4">
                        <label for="comprobante">Marca</label>
                        <input type="text" class="form-control herrmarca" id="herrmarca" value="" disabled>
                      </div>
                    </div><br>

                    <div class="row">
                      <div class="col-xs-12">
                        <button type="button" class="botones btn btn-primary" onclick="javascript:armartablistherr()">Agregar</button>
                      </div>
                    </div><br>

                    <table class="table table-condensed table-responsive tablalistherram" id="tablalistherram">
                      <thead>
                        <tr>
                          <th></th>
                          <th>Herramienta</th>
                          <th>Marca</th>
                          <th>Código</th>
                        </tr>
                      </thead>
                      <tbody>
                        <!-- -->                    
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

            <div class="pull-right">
              <button type="button" class="botones btn btn-primary" onclick="javascript:enviarOrden()">Guardar</button> 
            </div>           
          </form>      
          
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->


<!-- Carga vista Orden de Servicio -->
<script>
$('#listado').click( function cargarVista(){
    WaitingOpen();
    $('#content').empty();
    $("#content").load("<?php echo base_url(); ?>index.php/Order/index/<?php echo $permission; ?>");
    WaitingClose();
  });
</script>
<!-- / Carga vista Orden de Servicio -->

<!-- Datepicker -->
<script>     
$("#fechaOrden").datepicker({
  dateFormat: 'dd/mm/yy',
  firstDay: 1
}).datepicker("setDate", new Date());
</script>
<!-- / Datepicker -->

<!-- Trae Herrammientas -->
<script>
$(function() {

  var dataF = function () {
    var tmp = null;
    $.ajax({
      'async': false,
      'type': "POST",
      'global': false,
      'dataType': 'json',
      'url': "Order/getHerramienta",
      'success': function (data) {
        tmp = data;
      }
    });
    return tmp;
  }();

  $(function() {
    $(".herramienta").autocomplete({
      source: dataF,
      delay: 100,
      minLength: 1,
      focus: function(event, ui) {
        // prevent autocomplete from updating the textbox
        event.preventDefault();
        // manually update the textbox
        $(this).val(ui.item.label);
      },
      select: function(event, ui) {
        // prevent autocomplete from updating the textbox
        event.preventDefault();
        // manually update the textbox and hidden field
        $(this).val(ui.item.label);
        $(".herrdescrip").val(ui.item.value);
        $(".herrcodigo").val(ui.item.codherram);
        $(".herrmarca").val(ui.item.herrmarca);
        $(".herrId").val(ui.item.herrId);
        console.log("id de herramienta: ");
        console.log(ui.item.herrId);
      }
    });
  });

});
</script>
<!-- Trae Herrammientas -->

<!-- Tablas armado -->
<script>
// HERRAMIENTAS
var regHerr = 0;                // variable incrementable en func, para diferenciar los inputs
function armartablistherr(){   // inserta valores de inputs en la tabla 
  var $herramienta = $("#herrdescrip").val();
  var $marcaherram = $("#herrmarca").val();
  var $codherram = $("#herrcodigo").val(); 
  var $herrId = $("#herrId").val();
  $(".tablalistherram tbody").append(
    '<tr>'+ 
    '<td><i class="fa fa-ban eliminrow text-light-blue" style="cursor: pointer; margin-left: 15px;"></i></td>'+
    '<td>'+ $herramienta +'</td>'+
    '<td>'+ $marcaherram +'</td>'+
    '<td>'+ $codherram +'</td>'+
    '<td class="hidden" id=""><input type="text" name="herrid'+ '['+ regHerr+']' +'" class="herrid" id="herrid" value=" '+ $herrId +' " placeholder=""></td>'+
    '<tr>');
  $("#herramienta").val("");
  $("#marcaherram").val("");
  $("#codherram").val("");
  $("#herrId").val(); 
  regHerr++;
}
   
// Evento que selecciona la fila y la elimina 
$(document).on("click",".eliminrow",function(){
  var parent = $(this).closest('tr');
  $(parent).remove();
});
</script>

<!-- Validacion de campos y Envio form -->
<script>
function enviarOrden() {  
  /////  VALIDACIONES
  var hayError = false;    

  if(hayError == true){
   $('#error').fadeIn('slow');
   return;
 }
 else{
  $('#error').fadeOut('slow');
  var id_equipo = $("#numSolic").val();
  var datos = $("#form_order").serializeArray();
  // console.log("Orden array serializado");
  // console.log(datos);

  WaitingOpen('Guardando cambios');
  $.ajax({    
    data: datos,
    type: 'POST',             
    dataType: 'json',
    url: 'index.php/Order/setHerramienta',        
    success: function(result){
      alert("Guardado con exito...");
      $('#content').empty();
      $("#content").load("<?php echo base_url(); ?>index.php/Order/index/<?php echo $permission; ?>");
      WaitingClose();
      },
      error: function(result){
        WaitingClose();
        //setTimeout("cargarView('Ordenservicio', 'index', '"+$('#permission').val()+"');",0);
        //cargarView('Ordenservicio', 'index', '"+$('#permission').val()+"');
        alert("Error en guardado...");
      },
    });
  }    
}
</script>
<!-- / Validacion de campos y Envio form -->
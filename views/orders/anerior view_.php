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
        </div><!-- /.box-header -->

        <div class="box-body">
          <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="listado">Ver Listado</button>
          <!-- form  -->
          <form class="form-horizontal" id="form_order">

            <div class="row">
              <div class="col-xs-12 col-sm-6">
                <label for="comprobante">Responsable</label>
                <input type="text" name="usuario" class="form-control respons" id="usuario_app" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']?>" readonly>
                <input type="text" name="usuario_id" class="form-control hidden" id="responsable" value="<?php echo $this->session->userdata['id']?>" readonly>
              </div>

              <div class="col-xs-12 col-sm-6">
                <label for="pano_id">Pañol</label>
                <select type="text" id="pano_id" name="panol_id" class="form-control" >
                  <option value="" disabled selected>-Seleccione opcion-</option>
                  <?php
                      foreach ($panoles as $panol) {
                          echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                      }
                  ?>
                </select>
              </div>
            </div>

            <div class="row">
              <div class="col-xs-12 col-sm-6">
                <label for="comprobante">Comprobante</label>
                <input type="text" name="comp" class="form-control comprobante" id="comprobante"
                placeholder="Ingrese Comprobante...">
              </div>
              <div class="col-xs-12 col-sm-6">
                <label for="destino">Destino</label>
                <input type="text" name="dest" class="form-control dest" id="destino" value="" placeholder="Ingrese Destino...">
              </div>
              <div class="col-xs-12">
                <label for="observ" class="disabledTextInput">Observaciones:</label>
                <textarea class="form-control" id="observ" name="observaciones" rows="3" placeholder="Ingrese alguna observacionn si lo desea...."></textarea>
              </div>
            </div>
            <br>
          </form>
            <!--  ORDEN DE HERRAMIENTAS   -->
            <div class="panel panel-default" id="herramientas">
              <div class="panel-heading"><span class="fa fa-file-text-o icotitulo" aria-hidden="true"></span> Orden de Herramientas</div>
              <div class="panel-body">
                <div class="row">
                  <div class="col-xs-12">
                    <label>Detalle</label>

                    <div class="row">
                      <div class="col-xs-12">
                        <label for="tools">Herramientas<strong style="color: #dd4b39">*</strong>:</label>
                        <select type="text" id="tools" name="tools" class="form-control selec_habilitar" >
                          <option value="" disabled selected>-Seleccione opcion-</option>
                          <?php
                              foreach ($items as $item) {
                                  echo '<option  value="'.$item['herrId'].'">Codigo: '.$item['herrcodigo'].' - Descripción: '.$item['herrdescrip'].' - Marca: '.$item['herrmarca'].'</option>';
                              }
                          ?>
                        </select>
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
                          <th>Borrar</th>
                          <th>Herramienta</th>
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

          
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->



<script>
// Carga vista Orden de Servicio
  $('#listado').click( function cargarVista(){
      WaitingOpen();
      $('#content').empty();
      $("#content").load("<?php echo base_url(); ?>index.php/Order/index");
      WaitingClose();
  });
// Evento que selecciona la fila y la elimina
// sino hay herramientas en la tabla, habilita nuevamente select pañol
  $(document).on("click",".btnEliminar",function(){
    var parent = $(this).closest('tr');
    $(parent).remove();

    if( ! $('#tablalistherram').DataTable().data().any() ) {
      $('#panol_id').prop("disabled", false);
    }
  });
// Habilita select de herramientas al cambiar de pañol
  $("#pano_id").change(function(){
      wo();
      $('#tools').find('option').remove().trigger('change');
      var opc = 'Seleccione una herramienta';
      $('#tools').append(opc).trigger('change');
      var pano_id = $(this).val();

      $.ajax({
          type: 'POST',
          data:{pano_id: pano_id},
          url: 'index.php/Order/obtenerHerramientasPanol',
          success: function(result) {

          //FIXME: VER CUANDO NO TRAE NADA
              var herram = JSON.parse(result);

              $.each(herram, function(i,h){
                //alert('herr: ' + h.herrId);
                //opc = '<option  value="'+ h.herrId +'">Codigo: '+ h.herrcodigo +' - Descripción: '+ h.herrdescrip +' - Marca: '+ h.herrmarca +'</option>';
                var texto = 'Codigo: '+ h.herrcodigo +' - Descripción: '+ h.herrdescrip +' - Marca: '+ h.herrmarca;
                var opc = new Option(texto, h.herrId, false, false); //crea nueva opcion sin seleccionarla
                $('#tools').val(null).trigger('change');
                $('#tools').append(opc).trigger('change');
              });
              $('#tools').prop("disabled", false);
              wc();
          },
          //"":"2","herrdescrip
          error: function(result){
            wc();
          },
          complete: function(){
            wc();
          }
      });
  });

// Agregar Herramientas
  function armartablistherr(){   // inserta valores en la tabla
      $("#pano_id").attr('disabled', 'disabled');
      var $herramienta = $("#tools").find(':selected').text();
      var $herrId = $("#tools").find(':selected').val();
      $('#tools').val(null).trigger('change');

      $(".tablalistherram tbody").append(
        '<tr>'+
        '<td><button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button></td>'+
        '<td>'+ $herramienta +'</td>'+
        '<td class="herram hidden" id="">'+ $herrId +'</td>'+
        '<tr>');
  }

// Guarda la orden de salida
function enviarOrden() {

  // si la tabla esta vacia, corta ejecucion
  // if( ! $('#tablalistherram').DataTable().data().any() ) {

  //     alert("Agregue alguna herramienta a la tabla por favor");
  //     hayError = true;
  //     return;
  // }else{
    debugger;
    var form = new FormData($('#form_order')[0]);
    data = formToObject(form);
    data.usuario_app = $("#usuario_app").val();
    data.responsable = $("#responsable").val();
    data.pano_id = $("#pano_id").val();
    data.comprobante = $("#comprobante").val();
    data.destino = $("#destino").val();
    data.observaciones = $("#observaciones").val();





      var herr = "";
      var herramientas = [];
      $('#tablalistherram td.herram').each(function() {
          var herr = $(this).html();
          herramientas.push(herr);
      });

      // var salidaHerram = new FormData($('#form_order'));
			// salidaHerram = formToObject(salidaHerram);
      // console.table(salidaHerram);
  //}



    /////  VALIDACIONES
    // var hayError = false;

    // if(hayError == true){
    //   $('#error').fadeIn('slow');
    //   return;
    // }
    // else{
    //   $('#error').fadeOut('slow');
    //   var id_equipo = $("#numSolic").val();
    //   var datos = $("#form_order").serializeArray();

      //WaitingOpen('Guardando cambios');
      $.ajax({
          data: { data,herramientas},
          type: 'POST',
          dataType: 'json',
          url: 'index.php/Order/guardar',
          success: function(result){

                  //alertify.success("Vale guardado con Exito....");
            },
          error: function(result){
                // WaitingClose();
                // //setTimeout("cargarView('Ordenservicio', 'index', '"+$('#permission').val()+"');",0);
                // //cargarView('Ordenservicio', 'index', '"+$('#permission').val()+"');
                // alert("Error en guardado...");
                //alertify.success("Vale guardado con Exito....");
            }
      });

    //}

}

// Datatable
//DataTable($('#tablalistherram'));

// Configuracion del select2
$(document).ready(function() {
  $('#tools').select2({
    placeholder: 'Seleccione una herramienta',
    allowClear: true,
    disabled: true
  });
});
</script>
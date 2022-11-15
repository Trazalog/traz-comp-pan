<!-- ______ TABLA PRINCIPAL DE PANTALLA ______ -->
<table id="tabla_herramientas" class="table table-bordered table-striped">
		<thead class="thead-dark" bgcolor="#eeeeee">
      <th>Acciones</th>
      <th>Codigo</th>
      <th>Modelo</th>
      <th>Descripcion</th>
      <th>Marca</th>
      <th>Deposito</th>
      <th>Estado</th>
		</thead>
		<tbody >
			<?php
				if($list)
				{
					foreach($list as $value)
          {
            echo "<tr data-json='".json_encode($value)."'>";
            echo '<td>';
                echo '<button  type="button" title="Editar"  class="btn btn-primary btn-circle btnEditar" data-toggle="modal" data-target="#modaleditar" id="btnEditar"  ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>&nbsp
                <button type="button" title="Info" class="btn btn-primary btn-circle btnInfo" data-toggle="modal" data-target="#modaleditar" ><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></button>&nbsp
                <button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button>&nbsp';
            echo '</td>';
            echo '<td>'.$value->codigo.'</td>';
            echo '<td>'.$value->modelo.'</td>';
            echo '<td>'.$value->descripcion.'</td>';
            echo '<td>'.$value->marca.'</td>';
            echo '<td>'.$value->pan_descrip.'</td>';
            echo '<td>'.($value->estado  == 'ACTIVO' ? '<small class="label pull-left bg-green" >Activa</small>' :'<small class="label pull-left bg-blue">Transito</small>').'</td>';
            echo '</tr>';
          }
				}
			?>
		</tbody>
</table>
<!--_______ FIN TABLA PRINCIPAL DE PANTALLA ______-->


<script>

  // extrae datos de la tabla
  $(".btnEditar").on("click", function(e) {
    $(".modal-header h4").remove();
    //guardo el tipo de operacion en el modal
    $("#operacion").val("Edit");
    //pongo titlo al modal
    $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil"></span> Editar Herramienta </h4>');
    data = $(this).parents("tr").attr("data-json");
    datajson = JSON.parse(data);
    habilitarEdicion();
    llenarModal(datajson);
  });

  // extrae datos de la tabla
  $(".btnInfo").on("click", function(e) {
    $(".modal-header h4").remove();
    //guardo el tipo de operacion en el modal
    $("#operacion").val("Info");
    //pongo titlo al modal
    $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil"></span> Info Herramienta </h4>');
    data = $(this).parents("tr").attr("data-json");
    datajson = JSON.parse(data);
    blockEdicion();
    llenarModal(datajson);
  });

  //cambia encabezado para agregar una herramienta
  $("#btnAdd").on("click", function(e) {
    $("#operacion").val("Add");
    $(".modal-header h4").remove();
    $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil text-light-blue"></span> Agregar Herramienta </h4>');
    ///FIXME: LIMPIAR LOS CAMPOS Y SELECTS
  });

  // llena modal paa edicio y muestra
  function llenarModal(datajson){
    $('#herr_id').val(datajson.herr_id);
    //$('#pano_id').val(datajson.pano_id);
    $('#codigo_edit').val(datajson.codigo);
    $('#descripcion_edit').val(datajson.descripcion);
    $('#modelo_edit').val(datajson.modelo);
    $('#tipo_edit').val(datajson.tipo);
    $('#marca_id_edit option[value="'+ datajson.marca_id +'"]').attr("selected",true);
    $('#pano_id_edit option[value="'+ datajson.pano_id +'"]').attr("selected",true);
  }

  // deshabilita botones, selects e inputs de modal
  function blockEdicion(){
    $(".habilitar").attr("readonly","readonly");
    $("#marca_id_edit").attr('disabled', 'disabled');
    $('#btnsave_edit').hide();
  }

  // habilita botones, selects e inputs de modal
  function habilitarEdicion(){
    $('.habilitar').removeAttr("readonly");//
    $("#marca_id_edit").removeAttr("disabled");
    $('#btnsave_edit').show();
  }

  // Levanta modal prevencion eliminar herramienta
  $(".btnEliminar").on("click", function() {
    $(".modal-header h4").remove();
    $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-times text-light-blue"></span> Eliminar Herramienta </h4>');
    datajson = $(this).parents("tr").attr("data-json");
    data = JSON.parse(datajson);
    var herr_id = data.herr_id;
    // guardo herr_id en modal para usar en funcion eliminar
    $("#id_herr").val(herr_id);
    //levanto modal
    $("#modalaviso").modal('show');
  });

  //Valida si la herramienta se encuentra en "Estado: Tránsito antes de eliminarla
  function validarEstado(){
    // var barcode = $("#artBarCode").val();
    var herr_id = $("#id_herr").val();
    $.ajax({
      type: "POST",
      url: "<?php echo PAN; ?>Herramienta/validarEstado",
      data: {herr_id},
      dataType: "JSON",
      success: function (rsp) {
        if(rsp != null){
          if(rsp.existe == 'true'){
            error("Error","La herramienta se encuentra en TRANSITO por lo que no puede ser eliminada");
          }else{
            eliminar(herr_id);
          }
        }else{
          error("Error","Se produjo un error validando el estado de la herramienta!");
        }
      }
    });
  }

  // Elimina herramienta
  function eliminar(herr_id){
    // var herr_id = $("#id_herr").val();
    // validarEstado(herr_id);
    wo();
    $.ajax({
        type: 'POST',
        data:{herr_id: herr_id},
        url: 'index.php/<?php echo PAN ?>Herramienta/borrarHerramienta',
        success: function(result) {

              $("#cargar_tabla").load("<?php echo base_url(PAN); ?>/Herramienta/listarHerramientas");
              wc();
              $("#modalaviso").modal('hide');

        },
        error: function(result){
          wc();
          $("#modalaviso").modal('hide');
          alertify.error('Error en eliminado de Herramientas...');
        }
    });
  }
  // Config Tabla
  DataTable($('#tabla_herramientas'));

</script>

<!-- Modal aviso eliminar -->
  <div class="modal fade" id="modalaviso">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-trash text-light-blue"></span> Eliminar Herramienta</h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-xs-12">
              <h4>¿Desea realmente eliminar esta Herramienta?</h4>
              <input type="text" id="id_herr" class="hidden">
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="validarEstado()">Aceptar</button>
        </div>
      </div>
    </div>
  </div>
<!-- /  Modal aviso eliminar -->



<!-- ______ TABLA PRINCIPAL DE PANTALLA ______ -->
<table id="tabla_circuitos" class="table table-bordered table-striped">
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
  $("#operacion").val("Edit");
  $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil text-light-blue"></span> Editar Herramienta </h4>');
  data = $(this).parents("tr").attr("data-json");
  datajson = JSON.parse(data);
  habilitarEdicion();
  llenarModal(datajson);
});
// extrae datos de la tabla
$(".btnInfo").on("click", function(e) {
  $(".modal-header h4").remove();
  $("#operacion").val("Info");
  $(".modal-header").append('<h4 class="modal-title"  id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil text-light-blue"></span> Info Herramienta </h4>');
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

  $('#codigo_edit').val(datajson.codigo);
  $('#descripcion_edit').val(datajson.descripcion);
  $('#modelo_edit').val(datajson.modelo);
  $('#tipo_edit').val(datajson.tipo);
  $("#marca_id_edit option[value="+ datajson.marca_id +"]").attr("selected",true);
  $("#pano_id_edit option[value="+ datajson.pano_id +"]").attr("selected",true);
  //FIXME: REVISAR EL SELECT
}
// deshabilita botones, selects e inputs de modal
function blockEdicion(){
  $(".habilitar").attr("readonly","readonly");
  $(".selec_habilitar").attr('disabled', 'disabled');
}
// habilita botones, selects e inputs de modal
function habilitarEdicion(){
  $('.habilitar').removeAttr("readonly");//
  $(".selec_habilitar").removeAttr("disabled");
}
// Levanta modal prevencion eliminar herramienta
$(".btnEliminar").on("click", function() {
  datajson = $(this).parents("tr").attr("data-json");
  data = JSON.parse(datajson);
  var herr_id = data.herr_id;
  // guardo herr_id en modal para usar en funcion eliminar
  $("#id_herr").val(herr_id);
  //levanto modal
  $("#modalaviso").modal('show');
});
// Elimina herramienta
function eliminar(){

  var herr_id = $("#id_herr").val();
  wo();
  $.ajax({
      type: 'POST',
      data:{herr_id: herr_id},
      url: "Herramienta/borrarHerramienta",
      success: function(result) {
            // if(result == "ok"){
               wc();
            //   $("#modalaviso").modal('hide');
            //   alertify.success("Circuito Eliminado con exito");
            //   $("#cargar_tabla").load("<?php// echo base_url(); ?>index.php/general/Estructura/Circuito/Listar_Circuitos");

            // }else{
            //   wc();
               $("#modalaviso").modal('hide');
            //   alertify.success("Error al Eliminar Circuito");
            // }
      },
      error: function(result){
        $("#modalaviso").modal('hide');
      }
  });
}

function guardar(){
  
    //FIXME: HACER VALIDACION DE CAMPOS

    var operacion = $("#operacion").val();
    var recurso = "";
    if (operacion == "Edit") {

      alert("editar");
      recurso = 'index.php/Herramienta/editar';
    } else {

      alert("agregar");
      recurso = 'index.php/Herramienta/guardar';
    }
    debugger;
    var herramientas = new FormData($("form#frm_herramienta")[0]);
    console.table(herramientas);
    herramientas = formToObject(herramientas);


    $.ajax({
        type: 'POST',
        data:{ herramientas },
        url: recurso,
        success: function(result) {
              // if(result == ''){

              // }
        },
        error: function(result){

        },
        complete: function(){

        }
    });

}
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
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="eliminar()">Aceptar</button>
        </div>
      </div>
    </div>
  </div>
<!-- /  Modal aviso eliminar -->



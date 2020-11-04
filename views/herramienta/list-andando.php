<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border ">
          <h3 class="box-title">Herramienta</h3>
        </div><!-- /.box-header -->
        <div class="box-body">

          <button class="btn btn-block btn-primary" style="width: 100px; margin: 10px;" data-toggle="modal" data-target="#modaleditar" id="btnAdd">Agregar</button>

          <table id="deposito" class="table table-bordered table-hover">
            <thead>
              <tr>
                <th>Acciones</th>
                <th>Codigo</th>
                <th>Modelo</th>
                <th>Descripcion</th>
                <th>Marca</th>
                <th>Deposito</th>
                <th>Estado</th>
              </tr>
            </thead>
            <tbody>
              <?php
                foreach($list as $z)
                {
                  $id=$z['herrId'];

                  echo "<tr data-json='".json_encode($z)."'>";
                  echo '<td>';
                      echo    '<button  type="button" title="Editar"  class="btn btn-primary btn-circle btnEditar" data-toggle="modal" data-target="#modaleditar" id="btnEditar"  ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>&nbsp
                      <button type="button" title="Info" class="btn btn-primary btn-circle btnInfo" data-toggle="modal" data-target="#modaleditar" ><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></button>&nbsp
                      <button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button>&nbsp';
                  echo '</td>';
                  echo '<td>'.$z['herrcodigo'].'</td>';
                  echo '<td>'.$z['modelo'].'</td>';
                  echo '<td>'.$z['herrdescrip'].'</td>';
                  echo '<td>'.$z['herrmarca'].'</td>';
                  echo '<td>'.$z['depositodescrip'].'</td>';
                  echo '<td>'.($z['estado']  == 'ACTIVO' ? '<small class="label pull-left bg-green" >Activa</small>' :'<small class="label pull-left bg-blue">Transito</small>').'</td>';
                  echo '</tr>';
                }
              ?>
            </tbody>
          </table>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->


<!-- Modal editar-->
<div class="modal" id="modaleditar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
  
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <input type="text" id="operacion" class="form-control habilitar hidden" >
      </div> <!-- /.modal-header  -->

      <div class="modal-body" id="modalBodyArticle">
          <div class="row">
            <div class="col-xs-12">
              <div class="alert alert-danger alert-dismissable" id="errorDe" style="display: none">
                <h4><i class="icon fa fa-ban"></i> Error!</h4>
                Revise que todos los campos esten completos
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12">
              <div class="alert alert-danger alert-dismissable" id="errorExisteDe" style="display: none">
                La herramienta que intenta Agregar ya existe!
              </div>
            </div>
          </div>
          <div class="row" >
            <form class="frm_herramienta" id="frm_herramienta">
              <div class="col-xs-12">
                <div class="form-group">
                  <label for="codigo">Codigo <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="codigo" name="codigoe" class="form-control habilitar" placeholder="Ingrese Codigo...">
                </div>
              </div>

              <div class="col-xs-12">
                <div class="form-group">
                  <label for="descripcion">Descripción <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="descripcion" name="descripcione" class="form-control habilitar" placeholder="Ingrese Descripcion...">
                </div>
              </div>

              <div class="col-xs-12">
                <div class="form-group">
                  <label for="modelo">Modelo <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="modelo" name="modeloe" class="form-control habilitar">
                </div>
              </div>

              <div class="col-xs-12">
                <div class="form-group">
                  <label for="marca">Marca <strong style="color: #dd4b39">*</strong>:</label>
                    <select type="text" id="marca" name="marcae" class="form-control selec_habilitar" >
                      <option value="" disabled selected>-Seleccione opcion-</option>
                      <?php
                          foreach ($marcas as $mar) {
                              echo '<option  value="'.$mar->tabl_id.'">'.$mar->valor.'</option>';
                          }
                      ?>
                    </select>
                </div>
              </div>

              <div class="col-xs-12">
                <div class="form-group">
                  <label for="pano_id">Pañol<strong style="color: #dd4b39">*</strong>:</label>
                  <select type="text" id="pano_id" name="pano_ide" class="form-control selec_habilitar" >
                      <option value="" disabled selected>-Seleccione opcion-</option>
                      <?php
                          foreach ($panoles as $panol) {
                              echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                          }
                      ?>
                  </select>
                  </select>
                </div>
              </div>
            </form>
          </div>
      </div>  <!-- /.modal-body -->

      <!--_________________SEPARADOR_________________-->
        <div class="col-md-12 col-sm-12 col-xs-12"><hr></div>
      <!--_________________SEPARADOR_________________-->

      <div class="col-md-12">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-primary" onclick="guardar()" >Guardar</button>
      </div>  <!-- /.modal footer -->

    </div> <!-- /.modal-content -->
  </div>  <!-- /.modal-dialog modal-lg -->
</div>  <!-- /.modal -->
<!-- / Modal -->






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
  $('#codigo').val(datajson.herrcodigo);
  $('#descripcion').val(datajson.herrdescrip);
  $('#modelo').val(datajson.modelo);
  $("#marca option[value="+ datajson.marca_id +"]").attr("selected",true);
  $("#pano_id option[value="+ datajson.depositoId +"]").attr("selected",true);
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
  var herrId = data.herrId;
  // guardo herrId en modal para usar en funcion eliminar
  $("#id_herr").val(herrId);
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
      <div class="modal-header">
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



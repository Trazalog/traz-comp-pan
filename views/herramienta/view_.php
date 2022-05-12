<!-- /// ---- HEADER ----- /// -->
<div class="box box-primary animated fadeInLeft">
			<div class="box-header with-border">
					<h4>Herramientas</h4>
			</div>
			<div class="box-body">
					<div class="row">
							<div class="col-md-2 col-lg-1 col-xs-12">
									<button type="button" id="botonAgregar" class="btn btn-primary" aria-label="Left Align">
											Agregar
									</button><br>
							</div>
							<div class="col-md-10 col-lg-11 col-xs-12"></div>
					</div>
			</div>
	</div>
<!-- /// ----- HEADER -----/// -->

<!---///--- BOX 1 ---///----->
<div class="box box-primary animated bounceInDown" id="boxDatos" hidden>
    <div class="box-header with-border">
        <div class="box-tittle">
            <h4>Detalle de Herramienta</h4>
        </div>
        <div class="box-tools pull-right border ">
            <button type="button" id="btnclose" title="cerrar" class="btn btn-box-tool" data-widget="remove"
                data-toggle="tooltip" title="" data-original-title="Remove">
                <i class="fa fa-times"></i>
            </button>
        </div>
    </div>
    <!--_____________________________________________-->
    <div class="box-body">
        <form class="formHerramientas" id="formHerramientas">
            <!--Establecimientos-->
            <div class="col-md-6 col-sm-6 col-xs-12">
              <div class="form-group">
              <label for="esta_id">Establecimientos<strong style="color: #dd4b39">*</strong>:</label>
              <select type="text" id="esta_id" name="" class="form-control selec_habilitar requerido" >
                  <option value="-1" disabled selected>-Seleccione opcion-</option>
                  <?php
                      foreach ($establecimientos as $establec) {
                          echo '<option  value="'.$establec->esta_id.'">'.$establec->nombre.'</option>';
                      }
                  ?>
              </select>
              </div>
            </div>
            <!--________________-->
            <!--Pañol-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="pano_id">Pañol<strong style="color: #dd4b39">*</strong>:</label>
                <select type="text" id="pano_id" name="pano_id" class="form-control selec_habilitar requerido" >
                    <option value="-1" disabled selected>-Seleccione opcion-</option>
                    <?php
                        foreach ($panoles as $panol) {
                            echo '<option  value="'.$panol->pano_id.'">'.$panol->nombre.'</option>';
                        }
                    ?>
                </select>
                </div>
            </div>
            <!--________________-->
            <!--Código-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="codigo">Código <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="codigo" name="codigo" class="form-control requerido" placeholder="Ingrese Código...">
                </div>
            </div>
            <!--________________-->
            <!--Descripcion-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="descripcion">Descripción <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="descripcion" name="descripcion" class="form-control requerido" placeholder="Ingrese Descripcion...">
                </div>
            </div>
            <!--________________-->
            <!--Modelo-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="modelo">Modelo <strong style="color: #dd4b39">*</strong>:</label>
                <input type="text" id="modelo" name="modelo" class="form-control requerido">
                </div>
            </div>
            <!--________________-->
            <!--Tipo-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="tipo">Tipo <strong style="color: #dd4b39">*</strong>:</label>
                <input type="text" id="tipo" name="tipo" class="form-control requerido">
                </div>
            </div>
            <!--________________-->
            <!--Marca-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="marca">Marca <strong style="color: #dd4b39">*</strong>:</label>
                  <select type="text" id="marca" name="marca" class="form-control selec_habilitar requerido" >
                    <option value="-1" disabled selected>-Seleccione opcion-</option>
                    <?php
                        foreach ($marcas as $mar) {
                            echo '<option  value="'.$mar->tabl_id.'">'.$mar->valor.'</option>';
                        }
                    ?>
                  </select>
                </div>
            </div>
            <!--________________-->
        </form>
        </div>
        <!--_________________ GUARDAR_________________-->
        <div class="modal-footer">
					<div class="form-group text-right">
          <button type="button" class="btn btn-primary" onclick="guardar('nueva')" >Guardar</button>
				</div>                
        <!--__________________________________-->
    </div>
</div>
<!---///--- FIN BOX 1 ---///----->

<!---/////---BOX 2 DATATBLE ---/////----->
<div class="box box-primary">
		<div class="box-body">
				<div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">						
					<div class="row">
								<div class="col-sm-6"></div>
								<div class="col-sm-6"></div>
						</div>
						<div class="row">
								<div class="col-sm-12 table-scroll" id="cargar_tabla">
								</div>
						</div>						
				</div>
		</div>
</div>
<!---/////--- FIN BOX 2 DATATABLE---//////----->

<!---///////--- MODAL EDICION E INFORMACION ---///////--->
  <div class="modal fade bs-example-modal-lg" id="modaleditar" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue">
                <button type="button" class="close close_modal_edit" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" style="color:white;">&times;</span>
                </button>
            </div>
            <div class="modal-body ">
              <form class="formEdicion" id="formEdicion">
                <div class="form-horizontal">
                  <div class="row">
                    <form class="frm_circuito_edit" id="frm_circuito_edit">
                    <input type="text" class="form-control habilitar hidden" name="herr_id" id="herr_id">
                      <div class="col-sm-6">
                        <!--_____________ CODIGO _____________-->
                          <div class="form-group">
                            <label for="codigo_edit" class="col-sm-4 control-label">Código:</label>
                            <div class="col-sm-8">
                              <input type="text" class="form-control habilitar requerido" name="codigo" id="codigo_edit">
                            </div>
                          </div>
                        <!--___________________________-->
                        <!--_____________ DESCRIPCION _____________-->                            <div class="form-group">
                              <label for="descripcion_edit" class="col-sm-4 control-label">Descripcion:</label>
                              <div class="col-sm-8">
                                <input type="text" class="form-control habilitar requerido" name="descripcion" id="descripcion_edit">
                              </div>
                          </div>
                        <!--__________________________-->
                        <!--_____________ MODELO _____________-->
                            <div class="form-group">
                              <label for="modelo_edit" class="col-sm-4 control-label">Modelo:</label>
                              <div class="col-sm-8">
                                <input type="text" class="form-control habilitar requerido" name="modelo" id="modelo_edit">
                              </div>
                          </div>
                        <!--__________________________-->
                      </div>
                      <div class="col-sm-6">
                        <!--_____________ TIPO _____________-->
                          <div class="form-group">
                            <label for="tipo_edit" class="col-sm-4 control-label">Tipo:</label>
                            <div class="col-sm-8">
                              <input type="text" class="form-control habilitar requerido" name="tipo" id="tipo_edit">
                            </div>
                          </div>
                        <!--___________________________-->
                        <!--_____________ MARCA _____________-->
                          <div class="form-group">
                            <label for="marca_id_edit" class="col-sm-4 control-label">Marca:</label>
                            <div class="col-sm-8">
                              <!-- <input type="text" class="form-control habilitar" id="vehiculo_edit">  -->
                              <select class="form-control select2 select2-hidden-accesible habilitar requerido" name="marca" id="marca_id_edit">
                                <option value="" disabled selected>-Seleccione opcion-</option>	
                                <?php
                                  foreach ($marcas as $mar) {
                                    echo '<option  value="'.$mar->tabl_id.'">'.$mar->valor.'</option>';
                                  }
                                ?>
                              </select>
                            </div>
                          </div>
                        <!--__________________________-->
                        <!--_____________ PAÑOL _____________-->
                          <!-- <div class="form-group">
                            <label for="pano_id_edit" class="col-sm-4 control-label">Pañol:</label>
                            <div class="col-sm-8">
                              <select class="form-control select2 select2-hidden-accesible selec_habilitar" name="" id="pano_id_edit">
                                <option value="" disabled selected>-Seleccione opcion-</option>
                                <?php
                                // foreach ($panoles as $panol) {
                                //   echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                                // }
                                ?>
                              </select>
                            </div>
                          </div> -->
                        <!--__________________________-->
                      </div>
                    </form>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
                <div class="form-group text-right">
                    <button type="" class="btn btn-primary habilitar" data-dismiss="modal" id="btnsave_edit" onclick="guardar('editar')">Guardar</button>
                    <button type="button" class="btn btn-default cerrarModalEdit" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
      </div>

  </div>
<!---///////--- FIN MODAL EDICION E INFORMACION ---///////--->

<script>
  // carga tabla genaral de circuitos
  $("#cargar_tabla").load("<?php echo base_url(PAN); ?>/Herramienta/listarHerramientas");

  // muestra box de datos al dar click en boton agregar
  $("#botonAgregar").on("click", function() {

      $("#botonAgregar").attr("disabled", "");
      //$("#boxDatos").removeAttr("hidden");
      $("#boxDatos").focus();
      $("#boxDatos").show();
  });

	// muestra box de datos al dar click en X
	$("#btnclose").on("click", function() {

      $("#boxDatos").hide(500);
      $("#botonAgregar").removeAttr("disabled");
      //$('#formDatos').data('bootstrapValidator').resetForm();
      $("#formDatos")[0].reset();
  });

  // al cambiar de establecimiento llena select con pañoles
  $("#esta_id").change(function(){
      wo();
      //limpia las opciones de pañol
      $('#pano_id').empty();
      var esta_id = $(this).val();
      $.ajax({
          type: 'POST',
          data:{esta_id:esta_id },
          url: 'index.php/<?php echo PAN ?>Herramienta/obtenerPanoles',
          success: function(result) {
            $('#pano_id').empty();
            panol = JSON.parse(result);
            var html = "";
            if (panol == null) {
              html = html + '<option value="-1" disabled selected>- El Establecimiento no tiene Pañol Asociado -</option>';
            }else{
              html = html + '<option value="-1" disabled selected>-Seleccione Pañol-</option>';
              $.each(panol, function(i,h){
                html = html + "<option data-json= '" + JSON.stringify(h) + "'value='" + h.pano_id + "'>" + h.nombre + "</option>";
              });
            }
            $('#pano_id').append(html);
            wc();
          },
          error: function(result){
                wc();
                alert('No hay Pañoles asociados a este Establecimiento...');
          }
      });
  });

  // valida campos obligatorios
  function validarCampos(form){
    var mensaje = "";
    var ban = true;
    $('#' + form).find('.requerido').each(function() {
      if (this.value == "" || this.value=="-1") {
          ban = ban && false;
          return;
      }
    });
    if (!ban){
        if(!alertify.errorAlert){
          alertify.dialog('errorAlert',function factory(){
            return{
                    build:function(){
                        var errorHeader = '<span class="fa fa-times-circle fa-2x" '
                        +    'style="vertical-align:middle;color:#e10000;">'
                        + '</span>Error...!!';
                        this.setHeader(errorHeader);
                    }
                };
            },true,'alert');
        }
        alertify.errorAlert("Por favor complete los campos Obligatorios(*)..." );
    }
    return ban;
  }

  // Da de alta una herramienta nueva en pañol
  function guardar(operacion){

    var recurso = "";
    if (operacion == "editar") {

      if( !validarCampos('formEdicion') ){
        return;
      }
      var form = $('#formEdicion')[0];
      var datos = new FormData(form);
      var datos = formToObject(datos);
      recurso = 'index.php/<?php echo PAN ?>Herramienta/editar';
    } else {

      if( !validarCampos('formHerramientas') ){
        return;
      }
      var form = $('#formHerramientas')[0];
      var datos = new FormData(form);
      var datos = formToObject(datos);
      recurso = 'index.php/<?php echo PAN ?>Herramienta/guardar';
    }
    wo();
    $.ajax({
        type: 'POST',
        data:{ datos },
        //dataType: 'JSON',
        url: recurso,
        success: function(result) {

          $("#cargar_tabla").load("<?php echo base_url(PAN); ?>Herramienta/listarHerramientas");
          wc();
          $("#boxDatos").hide(500);
          $("#formHerramientas")[0].reset();
          $("#botonAgregar").removeAttr("disabled");
          if (operacion == "editar") {
            alertify.success("Herramienta Editada Exitosamente");
          }else{
            alertify.success("Herramienta Agregada con Exito");
          }
        },
        error: function(result){
          wc();
          alertify.error("Error agregando Herramienta");
        }
    });
  }
</script>
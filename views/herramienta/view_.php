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
            <h5>Detalle Herramienta</h5>
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

        <form class="formCircuitos" id="formCircuitos">

            <!--Codigo-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="codigo">Codigo <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="codigo" name="codigoe" class="form-control habilitar" placeholder="Ingrese Codigo...">
                </div>
            </div>
            <!--________________-->

            <!--Descripcion-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                  <label for="descripcion">Descripción <strong style="color: #dd4b39">*</strong>:</label>
                  <input type="text" id="descripcion" name="descripcione" class="form-control habilitar" placeholder="Ingrese Descripcion...">
                </div>
            </div>
            <!--________________-->

            <!--Modelo-->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="modelo">Modelo <strong style="color: #dd4b39">*</strong>:</label>
                <input type="text" id="modelo" name="modeloe" class="form-control habilitar">
                </div>
            </div>
            <!--________________-->

            <!--Marca-->
            <div class="col-md-6 col-sm-6 col-xs-12">
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
            <!--________________-->

            <!--Pañol-->
            <div class="col-md-6 col-sm-6 col-xs-12">
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
                </div>
            </div>
            <!--________________-->
        </form>
        </div>
        <!--_________________ GUARDAR_________________-->
        <div class="modal-footer">
					<div class="form-group text-right">
          <button type="button" class="btn btn-primary" onclick="guardar()" >Guardar</button>
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
                        <span aria-hidden="true">&times;</span>
                </button>
            </div>

            <div class="modal-body ">
              <div class="form-horizontal">
                <div class="row">
                  <form class="frm_circuito_edit" id="frm_circuito_edit">

                    <div class="col-sm-6">
                      <!--_____________ CODIGO _____________-->
                        <div class="form-group">
                          <label for="codigo_edit" class="col-sm-4 control-label">Código:</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control habilitar" name="codigo" id="codigo_edit">	
                          </div>
                        </div>
                      <!--___________________________-->

                      <!--_____________ DESCRIPCION _____________-->
                          <div class="form-group">
                            <label for="descripcion_edit" class="col-sm-4 control-label">Descripcion:</label>
                            <div class="col-sm-8">
                              <input type="text" class="form-control habilitar" name="descripcion" id="descripcion_edit">
                            </div>
                        </div>
                      <!--__________________________-->

                      <!--_____________ MODELO _____________-->
                          <div class="form-group">
                            <label for="modelo_edit" class="col-sm-4 control-label">Modelo:</label>
                            <div class="col-sm-8">
                              <input type="text" class="form-control habilitar" name="modelo" id="modelo_edit">
                            </div>
                        </div>
                      <!--__________________________-->

                    </div>

                    <div class="col-sm-6">

                      <!--_____________ MODELO _____________-->
                        <div class="form-group">
                          <label for="tipo_edit" class="col-sm-4 control-label">Tipo:</label>
                          <div class="col-sm-8">
                            <input type="text" class="form-control habilitar" name="tipo" id="tipo_edit">
                          </div>
                        </div>
                      <!--___________________________-->


                      <!--_____________ MARCA _____________-->
                        <div class="form-group">
                          <label for="marca_id_edit" class="col-sm-4 control-label">Marca:</label>
                          <div class="col-sm-8">
                            <!-- <input type="text" class="form-control habilitar" id="vehiculo_edit">  -->
                            <select class="form-control select2 select2-hidden-accesible selec_habilitar" name="marca_id" id="marca_id_edit">
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
                        <div class="form-group">
                          <label for="pano_id_edit" class="col-sm-4 control-label">Pañol:</label>
                          <div class="col-sm-8">
                            <select class="form-control select2 select2-hidden-accesible selec_habilitar" name="pano_id" id="pano_id_edit">
                              <option value="" disabled selected>-Seleccione opcion-</option>
                              <?php
                              foreach ($panoles as $panol) {
                                echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                              }
                              ?>
                            </select>
                          </div>	
                        </div>
                      <!--__________________________-->
                    </div>

                  </form>
                </div>
              </div>
            </div>

            <div class="modal-footer">

                <div class="form-group text-right">
                    <button type="" class="btn btn-primary" data-dismiss="modal" id="btnsave_edit">Guardar</button>
                    <button type="" class="btn btn-default cerrarModalEdit" id="" data-dismiss="modal">Cerrar</button>
                </div>

            </div>

        </div>
      </div>

  </div>
<!---///////--- FIN MODAL EDICION E INFORMACION ---///////--->



<script>
  // carga tabla genaral de circuitos
  $("#cargar_tabla").load("<?php echo base_url(); ?>index.php/Herramienta/listarHerramientas");

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






</script>
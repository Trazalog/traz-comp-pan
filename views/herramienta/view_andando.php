<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->
<div class="box box-primary animated fadeInLeft">
			<div class="box-header with-border">
					<h4>Salida de Herramientas</h4>
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
<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->

<!---/////--- BOX 1 ---/////--->
<div class="box box-primary animated bounceInDown" id="boxDatos" hidden>
			<div class="box-header with-border">
					<div class="box-tittle">
							<h4>Detalle</h4>
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

					<form class="formsalida registerForm" id="Frm_salida" method="POST" autocomplete="off">

							<!--Responsable-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="Codigo">Responsable:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <input type="text" class="form-control" name="" id="respons" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']?>" readonly>
                          <input type="text" class="form-control hidden" name="responsable" id="resp" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']?>">
                          <input type="text" class="form-control hidden" name="usuario_app" id="usr_app" value="<?php echo $this->session->userdata['usernick']?>">

											</div>
									</div>
							</div>
							<!--_____________________________________________-->
							<!-- Pañol-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="pano_id">Pañol:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <select class="form-control select3" data-placeholder="Seleccione tipo residuo"  style="width: 100%;"  id="pano_id" name="pano_id">
                            <option value="" disabled selected>-Seleccione opcion-</option>
															<?php
																	foreach ($panoles as $panol) {
                                    echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                                }
															?>
													</select>
											</div>
									</div>
							</div>
							<!--_____________________________________________-->

              <!--Comprobante-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="comprobante">Comprobante:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <input type="text" class="form-control" name="comprobante" id="comp" value="">
											</div>
									</div>
							</div>
              <!--_____________________________________________-->
              <!--Destino-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="destino">Destino:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <input type="text" class="form-control" name="destino" id="dest" value="">
											</div>
									</div>
							</div>
							<!--_____________________________________________-->

              <!--Observaciones-->
              <div class="col-md-12 col-sm-12 col-xs-12">
                  <label for="observ" class="disabledTextInput">Observaciones:</label>
                  <textarea class="form-control" id="observ" name="observaciones" rows="3" placeholder="Ingrese alguna observacionn si lo desea...."></textarea>
              </div>
              <!--_____________________________________________-->
          </form>
               <!--_________________SEPARADOR_________________-->
                  <div class="col-md-12">
                  <br>
                  </div>
              <!--_________________SEPARADOR_________________-->

              <!--Herramientas-->

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

              <!--_____________________________________________-->

              <!--_________________SEPARADOR_________________-->
                <div class="col-md-12">
                  <hr>
                </div>
              <!--_________________SEPARADOR_________________-->

              <!--_________________Tabla_________________-->
              <div class="col-md-12 col-sm-12 col-xs-12">
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
              <!--_____________________________________________-->


          <!--_________________SEPARADOR_________________-->
          <div class="col-md-12">
            <hr>
          </div>
          <!--_________________SEPARADOR_________________-->

					<!--_________________ GUARDAR_________________-->
					<div class="col-md-12">
							<button type="submit" class="btn btn-primary pull-right" onclick="guardar()">GUARDAR</button>
					</div>
					<!--__________________________________-->

			</div>


	</div>
<!---/////--- FIN BOX 1---////----->


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
<!---/////--- FIN BOX 2 DATATABLE---/////----->


<script>

// muestra box de datos al dar click en boton agregar
$("#botonAgregar").on("click", function() {
    var aux = "";
    $("#botonAgregar").attr("disabled", "");
    //$("#boxDatos").removeAttr("hidden");
    $("#boxDatos").focus();
    $("#boxDatos").show();
});
	
// muestra box de datos al dar click en X
$("#btnclose").on("click", function() {

    //para borrar tabla;
    // var table = $('#datos').DataTable();
    // table.clear().draw();
    //fin borrar tabla

    // $('#formPuntos_edit').data('bootstrapValidator').resetForm();
    // $('#formCircuitos').data('bootstrapValidator').resetForm();
    // $("#formCircuitos")[0].reset();
    // $('#formPuntos').data('bootstrapValidator').resetForm();
    // $("#formPuntos")[0].reset();
    $("#boxDatos").hide(500);
    $("#botonAgregar").removeAttr("disabled");
    // $('#formDatos').data('bootstrapValidator').resetForm();
    // $("#formDatos")[0].reset();
    // $('#selecmov').find('option').remove();
    

});


//////////////////////////////////////////////////////////////

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
      $("#pano").attr('disabled', 'disabled');
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

// Evento que selecciona la fila y la elimina
// sino hay herramientas en la tabla, habilita nuevamente select pañol
$(document).on("click",".btnEliminar",function(){
    var parent = $(this).closest('tr');
    $(parent).remove();

    if( ! $('#tablalistherram').DataTable().data().any() ) {
      $('#pano').prop("disabled", "");
    }
});




/////////////////////////////////////////////////////////
function guardar(){


  var form = $('#Frm_salida')[0];
 // Create an FormData object
  var datos = new FormData(form);
  var datos = formToObject(datos);
  datos.pano_id = $("#pano_id option:selected").val();

  var herr = "";
  var herramientas = [];
  $('#tablalistherram td.herram').each(function() {
      var herr = $(this).html();
      herramientas.push(herr);
  });
  var tools = JSON.stringify(herramientas);

  $.ajax({
      type: 'POST',
      //enctype: 'multipart/form-data',
      data:{datos, tools},
      // processData: false,
      // contentType: false,
      // cache: false,
      //dataType: 'JSON',
      url: 'index.php/Order/guardar',
      success: function(result) {
        alertify.success("Vale de Salida Agregado con Exito");
      },
      error: function(result){
        alertify.error("Error agregando Vale de Salida");
      },
      complete: function(){

      }
  });

}




// Configuracion del select2
$(document).ready(function() {
  $('#tools').select2({
    placeholder: 'Seleccione una herramienta',
    allowClear: true,
    disabled: true
  });
});


</script>
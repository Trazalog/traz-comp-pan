<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->
<div class="box box-primary animated fadeInLeft">
			<div class="box-header with-border">
					<h4>Entrada de Herramientas</h4>
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

					<form class="frm_entrada registerForm" id="frm_entrada" method="POST" autocomplete="off">

              <!--Establecimientos-->
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                <label for="esta_id">Establecimientos<strong style="color: #dd4b39">*</strong>:</label>
                <select type="text" id="esta_id" name="" class="form-control selec_habilitar requerido" >
                    <option value="" disabled selected>-Seleccione Establecimiento-</option>
                    <?php
                        foreach ($establecimientos as $establec) {
                            echo '<option  value="'.$establec->esta_id.'">'.$establec->nombre.'</option>';
                        }
                    ?>
                </select>
                </div>
              </div>
              <!--________________-->
              <!-- Pañol-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="pano_id">Pañol<strong style="color: #dd4b39">*</strong>:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <select class="form-control select3 requerido" data-placeholder="Seleccione tipo residuo"  style="width: 100%;"  id="pano_id" name="pano_id"/>

											</div>
									</div>
							</div>
							<!--_____________________________________________-->
              <!--Encargados-->
							<div class="col-md-12 col-sm-12 col-xs-12">
                <div class="form-group">
                    <label for="Codigo">Encargados:</label>
                    <ul id="listaEncargados">
                      <!-- <li>Datos empleado</li> -->
                    </ul>
                    <!-- <div class="input-group date">
                        <div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                        <input type="text" class="form-control requerido" name="" id="respons" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']?>" readonly>
                        <input type="text" class="form-control hidden" name="responsable" id="resp" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']?>">
                        <input type="text" class="form-control hidden" name="usuario_app" id="usr_app" value="<?php echo $this->session->userdata['usernick']?>">
                    </div> -->
                </div>
            </div>
							<!--_____________________________________________-->	
              <!--Comprobante-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="comprobante">Comprobante<strong style="color: #dd4b39">*</strong>:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <input type="text" class="form-control requerido" name="comprobante" id="comp" value="">
											</div>
									</div>
							</div>
              <!--_____________________________________________-->
              <!--Destino-->
							<div class="col-md-6 col-sm-6 col-xs-12">
									<div class="form-group">
											<label for="destino">Destino<strong style="color: #dd4b39">*</strong>:</label>
											<div class="input-group date">
													<div class="input-group-addon"><i class="glyphicon glyphicon-check"></i></div>
                          <input type="text" class="form-control requerido" name="destino" id="dest" value="">
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
          
               <!--_________________SEPARADOR_________________-->
                  <div class="col-md-12">
                  <br>
                  </div>
              <!--_________________SEPARADOR_________________-->

              <!--Herramientas-->
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <label for="tools">Herramientas<strong style="color: #dd4b39">*</strong>:</label>
                  <select type="text" id="tools" name="tools" class="form-control selec_habilitar" style="width: 100%">
                      <option></option>
                  </select>
                </div>
              <!--_____________________________________________-->
              </form>
              <!--_________________SEPARADOR_________________-->
                  <div class="col-md-12">
                  <br>
                  </div>
              <!--_________________SEPARADOR_________________-->

              <!--Guardar-->
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <button type="button" class="botones btn btn-primary" onclick="javascript:armartablistherr()">Agregar</button>
                </div>
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
							<button type="submit" class="btn btn-primary pull-right enabDisab" onclick="guardar()">GUARDAR</button>
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

$("#cargar_tabla").load("<?php echo base_url(PAN); ?>/Unload/listarEntradas");

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

// al cambiar de establecimiento llena select con pañoles
$("#esta_id").change(function(){

  wo();
  //limpia las opciones de pañol
  $('#pano_id').empty();

  var esta_id = $(this).val();

  $.ajax({
      type: 'POST',
      data:{esta_id:esta_id },
      url: 'index.php/<?php echo PAN ?>Unload/obtenerPanoles',
      success: function(result) {

            $('#pano_id').empty();
            panol = JSON.parse(result);
            var html = "";

            if (panol == null) {

              html = html + '<option value="" disabled selected>- El Establecimiento no tiene Pañol Asociado -</option>';
            }else{

              html = html + '<option value="" disabled selected>-Seleccione Pañol-</option>';
              $.each(panol, function(i,h){
                html = html + "<option data-json= '" + JSON.stringify(h) + "'value='" + h.pano_id + "'>" + h.nombre + "</option>";
              });
            }
            $('#pano_id').append(html);
            wc();
      },
      error: function(result){
        wc();
        alert('Error al traer Pañoles...');
      }
  });
});

// Habilita select de herramientas al cambiar de pañol
$("#pano_id").change(function(){
      wo();
      $('#tools').find('option').remove().trigger('change');
      var opc = 'Seleccione una herramienta';
      $('#tools').append(opc).trigger('change');
      var pano_id = $(this).val();
      cargarEncargados(pano_id);
      $.ajax({
          type: 'POST',
          data:{pano_id: pano_id},
          url: 'index.php/<?php echo PAN ?>Unload/obtenerHerramientasPanol',
          success: function(result) {

              var herram = JSON.parse(result);
              $.each(herram, function(i,h){
                var texto = 'Código: '+ h.herrcodigo +' - Descripción: '+ h.herrdescrip +' - Marca: '+ h.herrmarca;
                var opc = new Option(texto, h.herrId, false, false); //crea nueva opcion sin seleccionarla
                $('#tools').val(null).trigger('change');
                $('#tools').append(opc).trigger('change');
              });
              $('#tools').prop("disabled", false);
              wc();
          },
          error: function(result){
            wc();
          }
      });
});

function cargarEncargados(pano_id) {
  $('#listaEncargados').html('');
  $.ajax({
    type: 'POST',
    data:{pano_id: pano_id},
    url: 'index.php/<?php echo PAN ?>Order/obtenerEncargadosPanol',
    success: function(result) {
    //FIXME: VER CUANDO NO TRAE NADA
      var user = JSON.parse(result);
      if (user == null) {
        $('#listaEncargados').html($('#listaEncargados').html()+`
          <li style="list-style:none";> - El Pañol no tiene Encargados Asociados - </li>
        `);
      }else{
        $.each(user, function(i,h){
          $('#listaEncargados').html($('#listaEncargados').html()+`
          <li> ${h.first_name} ${h.last_name} </li>
          `);
        });
      }
      // $('#tools').prop("disabled", false);
      wc();
      // error: function(){
      //   $('#listaEncargados').html($('#listaEncargados').html()+`
      //     <li> echo("No hay encargados"); </li>
      //     `);
      //   wc();
      // }
    },
    error: function(){
      wc();
    },
    complete: function(){
      wc();
    }
  });
}


// Agregar Herramientas
function armartablistherr(){   // inserta valores en la tabla

    //verifico que haya seleccionada una herramienta
    var seleccionado = $("#tools").find(':selected').val();
    if ( seleccionado == undefined){
      return;
    }
    //habilito btn guardar
    $(".enabDisab").removeAttr("disabled");

    $("#pano").attr('disabled', 'disabled');
    var $herramienta = $("#tools").find(':selected').text();
    var $herrId = $("#tools").find(':selected').val();
    $('#tools').val(null).trigger('change');

    $(".tablalistherram tbody").append(
      '<tr>'+
      '<td><button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button></td>'+
      '<td>'+ $herramienta +'</td>'+
      '<td class="herram hidden" id="">'+ $herrId +'</td>'+
      '<tr>'
    );
}

// Evento que selecciona la fila y la elimina
// sino hay herramientas en la tabla, deshabilita boton guardar
$(document).on("click",".btnEliminar",function(){

    $('#tablalistherram').DataTable().row( $(this).closest('tr') ).remove().draw();
    if( ! $('#tablalistherram').DataTable().data().any() ) {
      //deshabilito el boton guardar
      $(".enabDisab").attr('disabled', 'disabled');
    }
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
                        + '</span> Error...!!';
                        this.setHeader(errorHeader);
                    }
                };
            },true,'alert');
        }
        alertify.errorAlert("Por favor complete los campos Obligatorios(*)..." );
    }
    return ban;
}

function guardar(){
  if( !validarCampos('frm_entrada') ){
    return;
  }
  wo();
  var form = $('#frm_entrada')[0];
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
      data:{datos, tools},
      url: 'index.php/<?php echo PAN ?>Unload/guardar',
      success: function(result) {
        $("#cargar_tabla").load("<?php echo base_url(PAN); ?>Unload/listarEntradas");
        $("#boxDatos").hide(500);
        // $("#frm_salida")[0].reset();
        $("#frm_entrada")[0].reset();
        $("#botonAgregar").removeAttr("disabled");
        wc();
        alertify.success("Vale de Entrada Agregada con Exito");
      },
      error: function(result){
        alertify.error("Error agregando Vale de Entrada");
        wc();
      },
      complete: function(){
        wc();
      }
  });

}


// DataTable($('#tablalistherram'));
// configuracion select2
$("#tools").select2({
    placeholder: "Seleccione una herramienta...",
    width: 'resolve', // need to override the changed default
    allowClear: true
});


</script>
<style>
.frm-save {
    display: none;
}
/* Estilos para alinear el formulario dinámico con los bordes principales */
#form-dinamico .frm {
    margin: 0;
}
#form-dinamico fieldset {
    padding: 0;
    margin: 0;
    border: none;
}
/* Quitar la sangría de los bordes externos (izq de la 1ra col y der de la última col) */
#form-dinamico [class*="col-"]:first-child {
    padding-left: 0;
}
#form-dinamico [class*="col-"]:last-child {
    padding-right: 0;
}
</style>
<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->
<!-- Eliminado para el modal -->
<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->

<!---/////--- BOX 1 ---/////--->
<div class="box box-primary animated bounceInDown" id="boxDatos">
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
             
              </form>

              <!-- Formulario Dinámico de Recepción -->
              <div class="col-md-12 col-sm-12 col-xs-12">
                  <br>
                  <div id="form-dinamico" class="frm-new" data-form="<?php echo isset($form_id) ? $form_id : '' ?>"></div>
              </div>

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

<script>
$(document).ready(function() {
    if (typeof detectarForm === "function") {
        detectarForm();
    }
    if (typeof initForm === "function") {
        initForm();
    }
});

// Botones agregar y cerrar eliminados para modal

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
          data:{},
          url: 'index.php/<?php echo PAN ?>Unload/obtenerHerramientasPanol',
          success: function(result) {

              var herram = JSON.parse(result);
              $.each(herram, function(i,h){
                var texto = 'Código: '+ h.herrcodigo +' - Descripción: '+ h.herrdescrip +' - Marca: '+ h.herrmarca;
                var opc = new Option(texto, h.herrId, false, false); //crea nueva opcion sin seleccionarla
                $(opc).attr('data-pano_id', h.pano_id);
                $(opc).attr('data-pan_descrip', h.depositodescrip);
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

    $(this).closest('tr').remove();
    if( $('#tablalistherram tbody tr').length === 0 ) {
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

async function guardar(){
  if( !validarCampos('frm_entrada') ){
    return;
  }
  wo();

  // 1. Guardar Formulario Dinámico
  var info_id = null;
  var idFormDinamico = "#" + $('.frm-new').find('form').attr('id');
  if (idFormDinamico != "#undefined") {
      if (!frm_validar(idFormDinamico)) {
          wc();
          alertify.error("Por favor, complete los campos obligatorios del formulario dinámico");
          return;
      }
      info_id = await frmGuardarConPromesa($(idFormDinamico));
      if (!info_id) {
          wc();
          alertify.error("Error al guardar el formulario dinámico");
          return;
      }
  }

  var form = $('#frm_entrada')[0];
  var datos = new FormData(form);
  var datos = formToObject(datos);
  datos.pano_id = $("#pano_id option:selected").val();
  datos.info_id = info_id;
  datos.observaciones = $("#observ").val();
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
        $("#frm_entrada")[0].reset();
        $("#observ").val("");
        wc();
        $('#mdl-back').modal('hide');
        Swal.fire({
            title: 'Éxito',
            text: "Vale de Entrada agregado con éxito. ¿Desea imprimir el comprobante?",
            type: 'success',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Sí, imprimir',
            cancelButtonText: 'No'
        }).then((res) => {
            if (res === true || res.value || res.isConfirmed) {
                var enpa_id = (typeof result === 'string') ? result.replace(/"/g, '') : result;
                wo();
                $.ajax({
                    type: 'GET',
                    url: '<?php echo base_url(PAN); ?>Movimientoherramientas/printVale/' + enpa_id + '/ENTRADA',
                    success: function(data) {
                        wc();
                        $('#mdl-back').html(data);
                        $('#mdl-back').modal('show');
                    },
                    error: function() {
                        wc();
                        alertify.error("Error al cargar el vale");
                    }
                });
            }
        });
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

$("#tools").on('select2:select', function(e) {
    var tool_pano_id = $(this).find(':selected').data('pano_id');
    var tool_pan_descrip = $(this).find(':selected').data('pan_descrip') || 'el Pañol de Origen';
    var selected_pano_id = $('#pano_id').val();
    var selected_pano_descrip = $('#pano_id option:selected').text();

    if(tool_pano_id && selected_pano_id && tool_pano_id != selected_pano_id) {
        Swal.fire({
            title: 'Atención',
            text: 'Esta herramienta fue Entregada en ' + tool_pan_descrip + '. ¿Esta seguro que desea recepcionarla en ' + selected_pano_descrip + '?',
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Aceptar',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.value || result.isConfirmed === true || result === true) {
                // Permite agregar
            } else {
                $('#tools').val(null).trigger('change');
            }
        });
    }
});

</script>
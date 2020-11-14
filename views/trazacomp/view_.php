<!-- /// ---- HEADER ----- /// -->
<div class="box box-primary animated fadeInLeft">
			<div class="box-header with-border">
					<h4>Entrega - Recepción de Componentes</h4>
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
          <h5>Entrega - Recepción de Componentes</h5>
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

    <div class="row" >
      <div class="col-xs-12">

        <div class="panel panel-primary">
          <div class="panel-heading">
            <h2 class="panel-title "><span class="fa fa-th-large"></span> Datos del Componente</h2>
          </div><!-- / panel-heading --> 

          <div class="panel-body">
            <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#recibe" id="recepcion" aria-controls="recibe" role="tab" data-toggle="tab">Recibo de componente</a></li>
                <li role="presentation"><a href="#entrega" id="entr" aria-controls="entrega" role="tab" data-toggle="tab">Entrega de componente</a></li>
                <li role="presentation"><a href="#nuevaest" id="nuevaesteria" aria-controls="nuevaest" role="tab" data-toggle="tab">Nueva Estanteria</a></li>
              </ul>
            <!-- /  Nav tabs -->

            <!-- Tab panes -->
              <div class="tab-content">

                <!--  tabpanel  RECIBE -->
                <div role="tabpanel" class="tab-pane active" id="recibe">
                  <div class="row">
                    <br>

                    <div class="col-xs-12 col-sm-8">
                      <label for="pano_id">Seleccione Pañol<strong style="color: #dd4b39">*</strong>:</label>
                      <select type="text" id="pano_id_rec" name="pano_ide" class="form-control selec_habilitar" >
                          <option value="" disabled selected>-Seleccione opcion-</option>
                          <?php
                              foreach ($panoles as $panol) {
                                  echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                              }
                          ?>
                      </select>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label for="resp_recibe">Responsable Pañol: </label>
                      <input type="text" class="form-control limp_recibe" id="resp_recibe" placeholder="Responsable Pañol">
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label for="entrega_recibe">Entrega: </label>
                      <input type="text" class="form-control limp_recibe" id="entrega_recibe" placeholder="Operario o Personal Externo">
                    </div>

                    <div class="col-xs-12 col-sm-6">
                      <label for="equi_id">Equipo<strong style="color: #dd4b39">*</strong>:</label>
                      <select type="text" id="equiporec" name="equi_id" class="form-control selec_habilitar" >
                          <option value="" disabled selected>-Seleccione opcion-</option>
                          <?php
                              foreach ($equipos as $eq) {
                                  echo '<option  value="'.$eq->equi_id.'">'.$eq->descripcion.'</option>';
                              }
                          ?>
                      </select>
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label>Componente</label> <strong style="color: #dd4b39">*</strong> :  
                      <select  id="componenterec" name="componenterec" class="form-control" />
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label>Estanteria</label> <strong style="color: #dd4b39">*</strong> :  
                      <select  id="estanteria_rec" name="estanteria" class="form-control estanteria" />
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label>Fila</label><strong style="color: #dd4b39">*</strong> :
                      <select class="form-control" id="fila_rec" name="fila" style="width: 100%;" />
                    </div><br><br>
                    <div class="col-xs-12">
                      <br>
                      <label>Observaciones:</label>
                      <textarea class="form-control limp_entrega" id="observaciones_rec" name="observaciones"></textarea>
                    </div>
                    <div class="col-xs-12">
                      <br>
                      <button type="button" class="btn btn-primary" id="addcompo" onclick="armarTablaRecibe()"><i class="fa fa-check"></i></button>
                    </div><br><br>

                    <!-- tabla-->
                    <form class="" id="">
                      <div class="col-xs-12">
                        <br>
                        <table class="table table-bordered" id="tablarecibe" border="1px"> 
                          <thead>
                            <tr>                       
                              <th></th>
                              <th>Equipo</th>
                              <th>Componente</th>
                              <th>Estanteria</th>
                              <th>Fila</th>
                              <th>Observaciones</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                        </table><!-- / tabla-->
                      </div><!-- </div> -->
                    </form>

                    <div class="col-xs-12">
                      <div class="text-right">
                        <button class="btn btn-primary estadoTarea" id="noAcepta" onclick="guardaRecibe()" style="margin-left:20px;">Guardar Recepcion</button>
                      </div>
                    </div>


                  </div>
                </div>
                <!--  / tabpanel  RECIBE -->

                              
                <!-- tabpanel  ENTREGA -->
                  <div role="tabpanel" class="tab-pane" id="entrega">
                    <div class="row">
                      <br>


                      <div class="col-xs-12 col-sm-6">
                        <!-- <br> -->
                        <label>Personal que recibe: </label><br>
                        <label class="radio-inline">
                          <input type="radio" name="radioOpcion" id="interno" value="interno" checked>Interno
                        </label>

<!-- <div class="clearfix"></div> -->

                        <label class="radio-inline">
                          <input type="radio" name="radioOpcion" id="externo" value="externo">Externo
                        </label>
                        <br><br>
                      </div>

                      <div class="col-xs-12 col-sm-6">
                        <label for="recib_entrega">Nombre Receptor: </label>
                        <input type="text" class="form-control limp_entrega" id="recib_entrega" placeholder="Operario o Personal Externo">
                      </div>


 <!--_________________SEPARADOR_________________-->
 <div class="col-md-12"><br></div>
                      <!--_________________SEPARADOR_________________-->



                      <div class="col-xs-12 col-sm-6">
                        <label for="pano_id_ent">Seleccione Pañol<strong style="color: #dd4b39">*</strong>:</label>
                        <select type="text" id="pano_id_ent" name="pano_id" class="form-control selec_habilitar" >
                            <option value="" disabled selected>-Seleccione opcion-</option>
                            <?php
                                foreach ($panoles as $panol) {
                                    echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                                }
                            ?>
                        </select>
                      </div>

                      <div class="col-xs-12 col-sm-6">
                        <label for="resp_entrega">Responsable Pañol: </label>
                        <input type="text" class="form-control limp_entrega" id="resp_entrega" placeholder="Responsable Pañol">
                      </div>

                      <!--_________________SEPARADOR_________________-->
                          <div class="col-md-12"><br></div>
                      <!--_________________SEPARADOR_________________-->

                      <div class="col-xs-12 col-sm-6">
                        <label>Componente <strong style="color: #dd4b39">*</strong></label>
                        <select  id="componente_ent" name="componente_ent" class="form-control" />
                        <input type="text" class="form-control hidden" id="coeq_id">
                      </div>

                      <div class="col-xs-12 col-sm-6">
                        <label>Equipo</label>
                        <input type="text" class="form-control limp_entrega" id="equipo_entrega" placeholder="">
                      </div>

                      <!--_________________SEPARADOR_________________-->
                      <div class="col-md-12"><br></div>
                      <!--_________________SEPARADOR_________________-->



                      <div class="col-xs-12">
                        <!-- <br> -->
                        <label>Observaciones:</label>
                        <textarea class="form-control limp_entrega" id="descrip" name="descrip"></textarea>
                      </div>
                      <div class="col-xs-12">
                        <br>
                        <button type="button" class="btn btn-primary" id="addcompo" onclick="javascript:armarTablaEntrega()"><i class="fa fa-check"></i></button>
                      </div>
                      <!-- tabla-->

                      <!-- form  -->
                      <form  id="form_order" action="" accept-charset="utf-8">
                        <div class="col-xs-12">
                          <br>
                          <table class="table table-bordered" id="tablaEntrega" border="1px">
                            <thead>
                              <tr>                       
                                <th></th>
                                <th>Equipo</th>
                                <th>Componente</th>
                                <th>Observaciones</th>
                              </tr>
                            </thead>
                            <tbody>
                            </tbody>
                          </table>
                        </div>
                      </form>
                      <!-- / tabla-->

                      <div class="col-xs-12">
                      <div class="text-right">
                        <button class="btn btn-primary estadoTarea" id="noAcepta" onclick="guardaEntrega()" style="margin-left:20px;">Guardar Entrega</button>
                      </div>
                    </div>

                    </div>
                  </div>
                <!-- / tabpanel  ENTREGA -->  


                                
                <!-- tabpanel  NUEVA ESTANTERIA -->
                  <div role="tabpanel" class="tab-pane" id="nuevaest">
                    <br>
                      <form id="est">

                        <div class="col-xs-12 col-sm-8">
                          <label for="pano_id">Seleccione Pañol<strong style="color: #dd4b39">*</strong>:</label>
                          <select type="text" id="pano_id" name="pano_id" class="form-control selec_habilitar" >
                              <option value="" disabled selected>-Seleccione opcion-</option>
                              <?php
                                  foreach ($panoles as $panol) {
                                      echo '<option  value="'.$panol->pano_id.'">'.$panol->descripcion.'</option>';
                                  }
                              ?>
                          </select>
                        </div>

                        <!--_________________SEPARADOR_________________-->
                          <div class="col-md-12"><br></div>
                        <!--_________________SEPARADOR_________________-->

                        <div class="col-xs-12 col-md-6">
                          <label for="numestanteria">Cód. Estanteria <strong style="color: #dd4b39">*</strong></label> 
                          <input type="" class="form-control cleanEst" id="numestanteria" name="codigo" placeholder=" Ingrese código...">
                        </div>
                        <div class="col-xs-12 col-md-6">
                          <label for="filas">Cantidad de Filas<strong style="color: #dd4b39">*</strong></label>
                          <input type="" class="form-control cleanEst" id="filas" name="filas" placeholder="Ingrese cantidad...">
                        </div>
                        <!--_________________SEPARADOR_________________-->
                          <div class="col-md-12"><br></div>
                        <!--_________________SEPARADOR_________________-->
                        <div class="col-xs-12">
                          <label for="descripcion">Descripción:</label>
                          <textarea class="form-control cleanEst" id="descripcion" name="descripcion"></textarea>
                        </div>
                        <div class="col-xs-12">
                          <br>
                          <button type="button" id="estNueva" class="botones btn btn-primary" onclick="guardarEstanteria()">Guardar Estanteria</button>
                        </div>
                      </form>
                    </div>
                  </div>
                <!-- / tabpanel  NUEVA ESTANTERIA --> 

              </div><!-- / tab-content -->
            <!-- / Tab panes --> 
                        
          </div><!-- / panel-body -->  

        </div><!-- / panel panel-default --> 

      </div><!-- / col-xs-12 -->
    </div><!-- / row -->

  </div> <!--box-body-->

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



<script>
  // carga tabla genaral de circuitos
  // $("#cargar_tabla").load("<?php //echo base_url(PAN); ?>index.php/Trazacomp/listar");
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
  //Evento que selecciona la fila y la elimina
  $(document).on("click",".btnEliminar",function(){
      var parent = $(this).closest('tr');
      $(parent).remove();
    });

  ////------ RECEPCION ------///

    // llena select componente segun id de equipo
    $('#equiporec').change(function(){
      wo();
      $("#componenterec").val('');
      $("#componenterec").html('');
      var id_eq = $("#equiporec").val();
      var comp_select= $("#componenterec");
      $.ajax({
        'data' : {id_equipo : id_eq },
        'async': true,
        'type': "POST",
        'global': false,
        'dataType': 'json',
        'url': 'index.php/<?php echo PAN ?>Trazacomp/getComponente',
        'success': function (data) {
          var opcion  = "<option value='-1'>Seleccione componente...</option>" ;
          comp_select.append(opcion);
          for (var i = 0; i< data.length; i++) {
            var opcion  = "<option value='"+data[i]['comp_id']+"'>" +data[i]['descripcion']+ "</option>" ;
            comp_select.append(opcion);
          }
          wc();
        },
        'error': function(data){
          wc();
          console.log("No hay componentes asociados en BD");
        }
      });
    });
    // al cambiar de pañol llena select con las estanterias propias del mismo
    $("#pano_id_rec").change(function(){

      wo();
      //limpia las estanterias del pañol
      $('#estanteria_rec').empty();
      $('#fila_rec').empty();
      var pano_id = $(this).val();

      $.ajax({
          type: 'POST',
          data:{pano_id:pano_id },
          url: 'index.php/<?php echo PAN ?>Trazacomp/obtenerEstanterias',
          success: function(result) {

                $('#estanteria_rec').empty();
                estanteria = JSON.parse(result);
                var html = "";
                html = html + '<option value="" disabled selected>-Seleccione Estanteria-</option>';
                $.each(estanteria, function(i,h){
                  html = html + "<option data-json= '" + JSON.stringify(h) + "'value='" + h.estan_id + "'>" + h.descripcion + "</option>";
                });
                $('#estanteria_rec').append(html);
                wc();
          },
          error: function(result){
            alert('error');
          }
      });
    });
    // al elegir estanteria llena select de filas
    $('#estanteria_rec').change(function(){

      $('#fila_rec').empty();
      // busco la cantidad de filas que tiene cada estanteria
      var estanteria = JSON.parse($(this).find(':selected').attr('data-json'));
      var filas = estanteria.filas;
      // agrega lasfilas de cada estanterias
      var html = "";
      html = html + '<option value="" disabled selected>-Seleccione fila-</option>';
      for (let index = 1; index <= filas; index++) {
        html = html + "<option value='" + index + "'>" + index + "</option>";
      }
      $('#fila_rec').append(html);
    });
    // inserta valores de inputs en la tabla
    function armarTablaRecibe(){

      var $equipo        = $("select#equiporec option:selected").html();
      var $id_equipo     = $("#equiporec").val();
      var $componente    = $("select#componenterec option:selected").html();
      var $id_componente = $("select#componenterec option:selected").val();
      var $observaciones = $("#observaciones_rec").val();
      var $estanteria    = $("select#estanteria_rec option:selected").html();
      var $id_estanteria = $("#estanteria_rec").val();
      var $fila          = $("#fila_rec").val();

      $("#tablarecibe tbody").append(

        '<tr class="registro_rec">'+
          '<td><button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button></td>'+
          '<td class="equip">'+ $equipo +'</td>'+
          '<td class="hidden id_equipo" name="id_equipo" id="id_equipo">'+ $id_equipo +'</td>'+
          '<td class="comp" id="comp">'+ $componente +'</td>'+
          '<td class="hidden id_comp" id="id_comp">'+ $id_componente +'</td>'+
          '<td class="est">'+ $estanteria +'</td>'+
          '<td class="hidden id_estanteria" name="id_estanteria" id="id_estanteria">'+ $id_estanteria +'</td>'+
          '<td class="fi" id="fi">'+ $fila +'</td>'+
          '<td class="observ_rec" id="observ_rec">'+ $observaciones +'</td>'+
        '</tr>');
    }
    // arma array para enviar a guardar
    function tableToArrayRecibe(){
      var arrayTable = []; // array para devolver
      var tabla      = $("#tablarecibe  tbody tr");
      tabla.each(function(i){

        item                  = {};
        item["equi_id"] = $(this).find("td.id_equipo ").html();;
        item["comp_id"] = $(this).find("td.id_comp").html();
        item["estan_id"] = $(this).find("td.id_estanteria").html();
        item["fila"] = $(this).find("td.fi").html();
        item["observaciones"] = $(this).find("td.observ_rec").html();
        item["pano_id"] = $("#pano_id_rec option:selected").val();
        item["ultimo_recibe"] = $("#resp_recibe").val();
        item["ultimo_entrega"] = $("#entrega_recibe").val();
        arrayTable.push(item);
      });
    }
    // guarda entrega de componente (trazabilidad)
    function guardaRecibe(){

      var table = tableToArrayRecibe();
      wo();
      $.ajax({
          type: 'POST',
          data:{ table },
          url: 'index.php/<?php echo PAN ?>Trazacomp/guardaRecibe',
          success: function(result) {
            wc();
            alertify.success('Recepción guardada con Exito...');
          },
          error: function(result){
            wc();
            alertify.error('Hubo un error al guardar la Recepción...');
          }
      });
    }

  ////------ RECEPCION ------///

  ////------ ENTREGA ------///
    // al cambiar de pañol llena select con las estanterias propias del mismo
    $("#pano_id_ent").change(function(){

        wo();
        //limpia las estanterias del pañol
        $('#componente_ent').empty();
        $('#equipo_entrega').val("");
        var pano_id = $(this).val();

        $.ajax({
            type: 'POST',
            data:{pano_id:pano_id },
            url: 'index.php/<?php echo PAN ?>Trazacomp/obtenerComponentesPanol',
            success: function(result) {

                  $('#componente_ent').empty();
                  componentes = JSON.parse(result);
                  var html = "";
                  html = html + '<option value="" disabled selected>-Seleccione Componente-</option>';
                  $.each(componentes, function(i,h){
                    html = html + "<option data-json= '" + JSON.stringify(h) + "'value='" + h.coeq_id + "'>" + h.compo_desc + "</option>";
                  });
                  $('#componente_ent').append(html);
                  wc();
            },
            error: function(result){
              alert('error');
            }
        });
    });
    // alcambiar de componente llena campo equipo
    $("#componente_ent").change(function(){

      $("#equipo_entrega").val("");
      var dato = JSON.parse($(this).find(':selected').attr('data-json'));
      var texto = 'Código: ' + dato.codigo + '  -  Marca: ' + dato.marca + '  -  Descripción: ' + dato.equipo_desc;
      //muestra info del equipo al que pertenece el componente
      $("#equipo_entrega").val(texto);
      //guarda el coeq_id (ide de relacion componente equipo)
      $("#coeq_id").val(dato.coeq_id);
    });

    // Arma tabla y elimina filas en ENTREGA
    function armarTablaEntrega(){           // inserta valores de inputs en la tabla

      var $equipo        = $("#equipo_entrega").val();
      var $componente    = $("select#componente_ent option:selected").html();
      var $id_componente = $("#coeq_id").val();
      var $observaciones = $("#descrip").val();
      $("#tablaEntrega tbody").append(
        '<tr class="registro">'+
          '<td><button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button></td>'+
          '<td class="equip">'+ $equipo +'</td>'+
          '<td class="comp" id="comp"> '+ $componente +' </td>'+
          '<td class="hidden coeq_id" id="coeq_id">'+$id_componente +'</td>'+
          '<td class="observ" id="observ">'+ $observaciones +'</td>'+
        '</tr>');

    }

    // Arma array y serializa para guardar
    function tableToArrayEntrega(){

      var arrayTable = []; // array para devolver
      var tabla      = $("#tablaEntrega  tbody tr");
      tabla.each(function(i){

        item  = {};
        item["coeq_id"] = $(this).find("td.coeq_id").html();
        item["observaciones"] = $(this).find("td.observ").html();
        item["pano_id"] = $("#pano_id_ent option:selected").val();
        item["ultimo_recibe"] = $("#recib_entrega").val();
        item["ultimo_entrega"] = $("#resp_entrega").val();
        item['receptor'] = $('input:radio[name=radioOpcion]:checked').val();
        arrayTable.push(item);
      });

      return arrayTable;
    }

    // guarda entrega de componente (trazabilidad)
    function guardaEntrega(){

      var table = tableToArrayEntrega();
      wo();
      $.ajax({
          type: 'POST',
          data:{ table },
          url: 'index.php/<?php echo PAN ?>Trazacomp/guardaEntrega',
          success: function(result) {
            wc();
            alertify.success('Recepción guardada con Exito...');
          },
          error: function(result){
            wc();
            alertify.error('Hubo un error al guardar la Recepción...');
          }
      });
    }

  ////------ ENTREGA ------///

  ////------ ESTANTERIAS ------///

    function guardarEstanteria(){

      $('#estNueva').attr("disabled", true);
      wo();
      var data = $('#est').serializeArray();
      $.ajax({
        'data' : data,
        'async': true,
        'type': "POST",
        'global': false,
        'dataType': 'json',
        'url': 'index.php/<?php echo PAN ?>Trazacomp/guardarEstateria',
        'success': function (data) {
            wc();
            $('#estNueva').attr("disabled", false);
            //llenarEstant(); // actualiza estanerias nuevas
            $('.cleanEst').val(''); // limpio los campos de estanterianueva
            // $("#cargar_tabla").load("<?php //echo base_url(PAN); ?>index.php/Trazacomp/listarEstanteriasPorPanol");
            $("#cargar_tabla").load("modules/traza-comp-panol/Trazacomp/listarEstanteriasPorPanol");
        },
        'error': function(data){
            WaitingClose();
        }
      });
    }




  ////------ ESTANTERIAS ------///




  ////------ LISTADOS ------///
    $('a[href="#recibe"]').on('shown.bs.tab', function (e) {
      listar('recibo');
    });
    $('a[href="#entrega"]').on('shown.bs.tab', function (e) {
      listar('entrega');
    });
    $('a[href="#nuevaest"]').on('shown.bs.tab', function (e) {
      listar('estanteria');
    });

    function listar(tabla){

      if (tabla == 'recibo') {
        var recurso = 'index.php/<?php echo PAN ?>Trazacomp/listadoRecepcion';
        //alert(tabla);
      }
      if (tabla == 'entrega') {
        var recurso = 'index.php/<?php echo PAN ?>Trazacomp/listadoEntrega';
        //alert(tabla);
      }
      if (tabla == 'estanteria') {
        var recurso = 'index.php/<?php echo PAN ?>Trazacomp/listadoEstanteria';
        //alert(tabla);
      }




    }

////------ LISTADOS ------///



</script>





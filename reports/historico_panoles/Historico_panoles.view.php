<?php

use \koolreport\widgets\koolphp\Table;
// use \koolreport\widgets\google\BarChart;
use \koolreport\widgets\google\ColumnChart;
use \koolreport\widgets\google\PieChart;
// use \koolreport\inputs\Select2;
use \koolreport\widgets\koolphp\Card;

?>

<body>
  <!--_________________BODY REPORTE___________________________-->
  <div id="reportContent" class="report-content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-solid">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">
                Reporte Histórico de Pañol
              </h3>
            </div>
            <br><br>
            <!--_________________FILTRO_________________-->
            <form id="frm-filtros">
              <div class="col-md-12">
                <!-- DESDE -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <div class="form-group">
                        <label style="padding-left: 20%;">Desde</label>
                        <div class="input-group date">
                            <a class="input-group-addon" id="daterange-btn" title="Más fechas">
                                <i class="fa fa-magic"></i>
                                <span></span>
                            </a>
                            <input type="date" class="form-control pull-right" id="datepickerDesde" name="datepickerDesde" placeholder="Desde">
                        </div>
                    </div>
                </div>
                <!-- /DESDE -->
                <!-- HASTA -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <div class="form-group">
                        <label>Hasta</label>
                        <input type="date" class="form-control" id="datepickerHasta" name="datepickerHasta" placeholder="Hasta">
                    </div>
                </div>
                <!-- /HASTA -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                  <label for="tipoajuste" class="form-label">Tipo Movimiento<strong class="text-danger">*</strong>  :</label>
                  <select class="form-control select2 select2-hidden-accesible" id="tipoajuste" name="tipoajuste">
                      <option value="-1" disabled selected>-Seleccione-</option>
                      <option value="TODOS">Todos</option>
                      <option value="INGRESO">Ingreso</option>
                      <option value="EGRESO">Egreso</option>
                  </select>
                </div>
              </div>
              <div class="col-md-12">
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                  <label for="panol" class="form-label">Pañol <strong class="text-danger">*</strong> :</label>
                  <select onchange="seleccionpano(this)" class="form-control select2 select2-hidden-accesible" id="panol" name="panol" />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                  <label for="herr_id" class="form-label">Herramienta <strong class="text-danger">*</strong> :</label>
                  <select class="form-control select2 select2-hidden-accesible" id="herr_id" name="herr_id" />
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                  <label for="responsable" class="form-label">Responsable:</label>
                  <select class="form-control select2 select2-hidden-accesible" id="responsable" name="responsable" />
                  <!-- <select onchange="seleccionrespo(this)" class="form-control select2 select2-hidden-accesible" id="responsable" name="responsable" /> -->
                </div>

                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <div style="float:right; padding-top: 24px" class="form-group">
                        <button type="button" class="btn btn-success btn-flat" onclick="filtrar()">Filtrar</button>
                        <button style="margin-left: 5px" type="button" class="btn btn-danger btn-flat flt-clear">Limpiar</button>
                        <input type="hidden" value="<?php echo $op ?>" id="op" hidden="true">
                    </div>
                </div>
              </div>
            </form>
            <div class="col-md-12">
                <hr>
            </div>
            <!--_________________TABLA_________________-->

            <div class="box-body">

              <div class="col-md-12">

                <?php
                Table::create(array(
                  "dataStore" => $this->dataStore('data_produccion_table'),
                  // "themeBase" => "bs4",
                  // "showFooter" => true, // cambiar true por "top" para ubicarlo en la parte superior
                  "headers" => array(
                    array(
                      "Reporte Histórico de Pañol" => array("colSpan" => 6),
                      // "Other Information" => array("colSpan" => 2),
                    )
                  ), // Para desactivar encabezado reemplazar "headers" por "showHeader"=>false
                  "columns" => array(
                    "panol" => array(
                      "label" => "Pañol"
                    ),
                    "establecimiento" => array(
                      "label" => "Establecimiento"
                    ),
                    "responsable" => array(
                      "label" => "Responsable"
                    ),
                    "codigo" => array(
                      "label" => "Código"
                    ),
                    "herramienta" => array(
                      "label" => "Herramienta"
                    ),
                    "tipo" => array(
                      "label" => "Tipo"
                    ),
                    array(
                      "label" => "Fecha",
                      "value" => function($row) {
                        $aux = explode("T",$row["fec_alta"]);
                        $row["fec_alta"] = date("d-m-Y",strtotime($aux[0]));
                        return $row["fec_alta"];
                      },
                      "type" => "date"
                    )
                  ),
                  // "columns" => array(
                  //   "batch_id" => array(
                  //     "label" => "Batch"
                  //   ),
                  //   array(
                  //     "label" => "Fecha",
                  //     "value" => function($row) {
                  //       $aux = explode("+",$row["fecha"]);
                  //       $row["fecha"] = date("d-m-Y",strtotime($aux[0]));
                  //       return $row["fecha"];
                  //     },
                  //     "type" => "date"
                  //   ),
                  //   "producto" => array(
                  //     "label" => "Producto"
                  //   ),
                  //   "lote_id" => array(
                  //     "label" => "Lote"
                  //   ),
                  //   "cantidad" => array(
                  //     "label" => "Cantidad"
                  //   ),
                  //   "unidad_medida" => array(
                  //     "label" => "Unidad Medida"
                  //   ),
                  //   "etapa" => array(
                  //     "label" => "Etapa"
                  //   ),
                  //   "equipo" => array(
                  //     "label" => "Operario/Equipo"
                  //   )
                  // ),
                  "cssClass" => array(
                    // "table" => "table-bordered table-striped table-hover dataTable",
                    "table" => "table-striped table-scroll table-hover  table-responsive dataTables_wrapper form-inline table-scroll table-responsive dt-bootstrap dataTable",
                    "th" => "sorting"
                    // "tr" => "cssItem"
                    // "tf" => "cssFooter"
                  )
                ));
                ?>

              </div>
            </div>
            <!--_________________FIN TABLA_________________-->
            <div class="col-md-12">
              <br>
              <div class="box box-primary">
              </div>
            </div>            
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>
    filtroProduccion();
    fechaMagic();
    //Funcion de datatable para extencion de botones exportar
    //excel, pdf, copiado portapapeles e impresion
    $(document).ready(function() {
      getPanoles();
      getResponsables();
      $('.select2').select2();
      $('.dataTable').DataTable({
        responsive: true,
        language: {
        url: '<?php base_url() ?>lib/bower_components/datatables.net/js/es-ar.json' //Ubicacion del archivo con el json del idioma.
        },
        dom: 'lBfrtip',
        buttons: [{
          //Botón para Excel
          extend: 'excel',
          exportOptions: {
          columns: [0, 1, 2, 3, 4, 5]
          },
          footer: true,
          title: 'Reporte de Producción',
          filename: 'reporte_produccion',
          //Aquí es donde generas el botón personalizado
          text: '<button class="btn btn-success ml-2 mb-2 mb-2 mt-3">Exportar a Excel <i class="fa fa-file-excel-o"></i></button>'
        },
        // //Botón para PDF
        {
          extend: 'pdf',
          exportOptions: {
              columns: [0, 1, 2, 3, 4, 5]
          },
          footer: true,
          title: 'Reporte de Producción',
          filename: 'reporte_produccion',
          text: '<button class="btn btn-danger ml-2 mb-2 mb-2 mt-3">Exportar a PDF <i class="fa fa-file-pdf-o mr-1"></i></button>'
        },
        {
          extend: 'copy',
          exportOptions: {
              columns: [0, 1, 2, 3, 4, 5]
          },
          footer: true,
          title: 'Reporte de Producción',
          filename: 'reporte_produccion',
          text: '<button class="btn btn-primary ml-2 mb-2 mb-2 mt-3">Copiar <i class="fa fa-file-text-o mr-1"></i></button>'
        },
        {
          extend: 'print',
          exportOptions: {
              columns: [0, 1, 2, 3, 4, 5]
          },
          footer: true,
          title: 'Reporte de Producción',
          filename: 'reporte_produccion',
          text: '<button class="btn btn-default ml-2 mb-2 mb-2 mt-3">Imprimir <i class="fa fa-print mr-1"></i></button>'
        }]
      });
    });

    $('tr > td').each(function() {
      if ($(this).text() == 0) {
        $(this).text('-');
        $(this).css('text-align', 'center');
      }
    });
    
    // $('#panel-derecho-body').load('<?php echo base_url() ?>index.php/Reportes/filtroProduccion');

    $('.flt-clear').click(function() {
      $('#frm-filtros')[0].reset();
      // $('#tipoajuste').val(0);
      // $('#producto').val(null).trigger('change');
      $('#tipoajuste').val(null).trigger('change');
      // $('#panol').val(null).trigger('change');
      // $('#panol').attr("selected", "selected");
      // $("#panol").val('-1');
      // $("#panol").prop("selectedIndex", 0);
      // $('#panol').val(-1).trigger('change');
      $('#herr_id').val(null).trigger('change');
      $('#responsable').val(null).trigger('change');
    });

    function filtrar() {
      var data = new FormData($('#frm-filtros')[0]);
      data = formToObject(data);
      wo();
      var url = 'produccion';
      $.ajax({
        type: 'POST',

        data: {
          data
        },
        url: '<?php echo base_url(PRD) ?>Reportes/' + url,
        success: function(result) {
          $('#reportContent').empty();
          $('#reportContent').html(result);
        },
        error: function() {
          alert('Error');
        },
        complete: function(result) {
          wc();
        }
      });
    }

    function filtroProduccion() {
      wo();
      $.ajax({
        type: "GET",
        dataType: "JSON",
        url: "<?php echo base_url(PRD) ?>Reportes/filtroProduccion",
        success: function(rsp) {

          if (_isset(rsp.articulos)) {
            var opcArticulos = '<option value="" selected>TODOS</option>';

            rsp.articulos.forEach(element => {
                opcArticulos += "<option value=" + element.arti_id + ">" + element.descripcion + "</option>";
            });
            $('#producto').html(opcArticulos);

          }

          if (_isset(rsp.etapas)) {
            var opcEtapas = '<option value="" selected>TODOS</option>';

            rsp.etapas.forEach(element => {
                opcEtapas += "<option value=" + element.id + ">" + element.titulo + "</option>";
            });

            $('#etapa').html(opcEtapas);
          }

        },
        error: function(rsp) {
          alert('Error tremendo');
        },
        complete: function() {
          wc();
        }
      })
    }

    // llena select Panoles
  function getPanoles(){
    $.ajax({
        type: 'POST',
        dataType: 'json',
        data: {},
        url: 'index.php/<?php echo PAN?>Reportes/getPanoles',
        success: function(data) {
            $('#panol').empty();
            $("#panol").append("<option value='-1' disabled selected>-Seleccione Pañol...-</option");
            if(data != null){
                for(var i=0; i<data.length; i++)
                {
                  $('#panol').append("<option value='" + data[i].pano_id + "'>" +data[i].nombre+"</option");
                }
                //$("#panol").removeAttr('readonly');
            }else{
                $("#panol").append("<option value=''>-Sin Pañoles-</option");
            }
            WaitingClose();
        },
        error: function(data) {
            alert('Error');
        }
    });
  }

  // llena select Responsables
  function getResponsables(){
    $.ajax({
        type: 'POST',
        dataType: 'json',
        data: {},
        url: 'index.php/<?php echo PAN?>Reportes/cargaResponsables',
        success: function(data) {
            $('#responsable').empty();
            $("#responsable").append("<option value='-1' disabled selected>-Seleccione Responsable...-</option");
            if(data != null){
                for(var i=0; i<data.length; i++)
                {
                  $('#responsable').append("<option value='" + data[i].id + "'>" +data[i].last_name+" "+data[i].first_name + "</option>");
                }
                //$("#responsable").removeAttr('readonly');
            }else{
                $("#responsable").append("<option value=''>-Sin Responsables-</option");
            }
            WaitingClose();
        },
        error: function(data) {
            alert('Error');
        }
    });
  }

  // carga los depositos de acuerdo a panol
	function seleccionpano(opcion){

    $(".habilitado").show();

    wo();
    var id_panol = $("#panol").val();
    $.ajax({
        type: 'POST',
        data: {id_panol},
        url: 'index.php/<?php echo PAN?>Reportes/traerHerramientas',
        success: function(data) {
            var resp = JSON.parse(data);
            $('#herr_id').empty();
            $("#herr_id").append("<option value='TODOS'>Todos</option");
            if(data != null){
                for(var i=0; i<resp.length; i++)
                {
                  $('#herr_id').append("<option value='" + resp[i].herr_id + "'>" +resp[i].codigo+"</option");
                }
                $("#herr_id").removeAttr('readonly');
            }else{
                $("#herr_id").append("<option value=''>-Sin Herramientas para este Pañol-</option");
            }
            wc();
        },
        error: function(data) {
          wc();
            alert('Error');
        }
    });
  }
  </script>
</body>

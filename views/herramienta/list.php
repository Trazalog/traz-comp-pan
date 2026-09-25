<!-- ______ TABLA PRINCIPAL DE PANTALLA ______ -->
<table id="tabla_herramientas" class="table table-bordered table-striped">
	<thead>
		<tr>
			<th>Acciones</th>
			<th>Código</th>
			<th>Tipo</th>
			<th>Descripción</th>
			<th>Modelo</th>
      <th>Marca</th>
			<th>Establecimiento/Pañol</th>
			<th>Estado</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<!--_______ FIN TABLA PRINCIPAL DE PANTALLA ______-->

<style>

  /* estilos certificaciones */
.badge-tooltip {
  position: relative;
  display: inline-block;
  cursor: pointer;
}
.badge-tooltip .badge-tooltip-text {
  visibility: hidden;
  opacity: 0;
  width: max-content;
  background-color: #222;
  color: #fff;
  text-align: center;
  border-radius: 4px;
  padding: 6px 10px;
  position: absolute;
  z-index: 99999;
  bottom: 125%;
  left: 50%;
  transform: translateX(-50%);
  transition: opacity 0.3s;
  font-size: 12px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: normal;
  box-shadow: 0px 2px 4px rgba(0,0,0,0.2);
}
.badge-tooltip .badge-tooltip-text::after {
  content: "";
  position: absolute;
  top: 100%;
  left: 50%;
  margin-left: -5px;
  border-width: 5px;
  border-style: solid;
  border-color: #222 transparent transparent transparent;
}
.badge-tooltip:hover .badge-tooltip-text {
  visibility: visible;
  opacity: 1;
}
</style>

<script>
  $('#tabla_herramientas').DataTable({
      "processing": true,
      "serverSide": true,
      "ajax": {
          "url": "<?php echo base_url(PAN) ?>Herramienta/listarHerramientasPaginado",
          "type": "POST",
          "data": function (d) {
              var esta_id = $('#filtro_esta_id').val();
              var pano_id = $('#filtro_pano_id').val();
              var tipo = $('#filtro_tipo').val();
              var cert_vencer = $('#filtro_cert_vencer').is(':checked') ? 1 : 0;
              if (esta_id) d.esta_id = esta_id;
              if (pano_id) d.pano_id = pano_id;
              if (tipo) d.tipo = tipo;
              if (cert_vencer) d.cert_vencer = cert_vencer;
          }
      },
      "columns": [
          {
              "data": null,
              "orderable": false,
              "searchable": false,
              "render": function (data, type, row) {
                  var estaActivaOTransito = (row.estado === 'ACTIVO' || row.estado === 'TRANSITO');
                  var toggleIcon = estaActivaOTransito
                      ? '<i class="fa fa-fw fa-toggle-on text-light-blue btnCambioEstado" title="Inhabilitar" style="cursor: pointer; margin-left: 5px;"></i>'
                      : '<i class="fa fa-fw fa-toggle-off text-light-blue btnCambioEstado" title="Habilitar" style="cursor: pointer; margin-left: 5px;"></i>';

                  return '<i class="fa fa-search text-light-blue btnInfo" style="cursor: pointer;margin: 3px;" data-toggle="modal" title="Info" data-target="#modaleditar"></i>'
                       + '<i class="fa fa-fw fa-pencil text-light-blue btnEditar"  style="cursor: pointer;margin: 3px;" data-toggle="modal" title="Editar" data-target="#modaleditar"></i>'
                       + '<i class="fa fa-check-circle-o text-light-blue btnChecklist"  style="cursor: pointer;margin: 3px;" data-toggle="modal" title="Checklist" data-target="#modalchecklist"></i>'
                       + '<i class="fa fa-fw fa-thumbs-up text-light-blue btnCertificar" style="cursor: pointer;margin: 3px;" data-toggle="modal" title="Certificar" data-target="#modalcertificar"></i>'
                       + '<i class="fa fa-fw fa-qrcode text-light-blue btnQR" style="cursor: pointer;margin: 3px;" title="Código QR"></i>'
                       + '<i class="fa fa-fw fa-trash text-light-blue btnEliminar"  style="cursor: pointer;margin: 3px;" title="Eliminar" ></i>'
                       + toggleIcon;
              }
          },
          { "data": "codigo" },
          {
              "data": "tipoHerramienta",
              "render": function (data, type, row) {
                  if (type !== 'display') return data;

                  var tipos = (data || '').split('-').filter(function (t) { return t !== ''; });
                  var colores = (row.colorTipo || '').split('-').filter(function (c) { return c !== ''; });

                  if (tipos.length === 0) return '';

                  var html = '';
                  tipos.forEach(function (tipoNombre, i) {
                      var color = colores[i] || '#999999';
                      html += '<small class="label pull-left" style="'
                            + 'background-color:' + color + ';'
                            + 'color:#000;'
                            + 'display: inline-block;'
                            + 'border-radius:10px;'
                            + 'font-size: 90%;'
                            + 'padding:3px 10px;'
                            + 'margin-right:4px;'
                            + '">'
                            + tipoNombre
                            + '</small>';
                  });
                  return html;
              }
          },
          { 
              "data": "descripcion",
              "render": function (data, type, row) {
                  var texto = data;
                  if (type === 'display' && row.estado_certificacion) {
                      if (row.estado_certificacion === 'VENCIDO') {
                          texto += ' <span class="badge-tooltip pull-right btnInfo btnTabCertificaciones" data-toggle="modal" data-target="#modaleditar" style="margin-top:2px;">' +
                                   '  <i class="fa fa-exclamation-triangle text-red" style="font-size: 1.5em;"></i>' +
                                   '  <span class="badge-tooltip-text"><span class="text-red" style="font-size: 1.1em;"><i class="fa fa-exclamation-triangle fa-pulse"></i> Certificado Vencido</span></span>' +
                                   ' </span>';
                      } else if (row.estado_certificacion === 'POR_VENCER') {
                          texto += ' <span class="badge-tooltip pull-right btnInfo btnTabCertificaciones" data-toggle="modal" data-target="#modaleditar" style="margin-top:2px;">' +
                                   '  <i class="fa fa-exclamation-triangle text-yellow" style="font-size: 1.5em;"></i>' +
                                   '  <span class="badge-tooltip-text"><span class="text-yellow" style="font-size: 1.1em;"><i class="fa fa-exclamation-triangle fa-pulse"></i> Certificado por Vencer</span></span>' +
                                   ' </span>';
                      }
                  }
                  return texto;
              }
          },
          { "data": "modelo" },
          { "data": "marca" },
          {
              "data": "pan_descrip",
              "render": function (data, type, row) {
                  var establecimiento = row.esta_descrip || row.establecimiento || '';
                  var panol = data || '';
                  if (establecimiento && panol) {
                      return establecimiento + ' / ' + panol;
                  }
                  return panol || establecimiento || '';
              }
          },
          {
              "data": "estado",
              "render": function (data, type, row) {
                  if (data === 'ACTIVO') {
                      return '<small class="label pull-left bg-green">Activa</small>';
                  } else if (data === 'TRANSITO') {
                      return '<small class="label pull-left bg-primary">Transito</small>';
                  } else if (data === 'INHABILITADO') {
                      return '<small class="label pull-left bg-red">Inhabilitada</small>';
                  } else {
                      return '<small class="label pull-left bg-gray">' + (data || '-') + '</small>';
                  }
              }
          }
      ],
      dom: 'lBfrtip',
      buttons: [
          {
              // Botón para Excel
              extend: 'excel',
              exportOptions: {
                  columns: [1, 2, 3, 4, 5, 6, 7]
              },
              footer: true,
              title: 'Reporte de Herramientas',
              filename: 'Reporte_Herramientas',
              className: 'btn btn-success btn-flat ml-1',
              text: 'Exportar a Excel <i class="fa fa-file-excel-o"></i>',
              action: function (e, dt, button, config) {
                  var self = this;
                  var oldLength = dt.page.len();
                  dt.page.len(1000000);
                  dt.one('draw', function () {
                      $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config);
                      setTimeout(function() {
                          dt.page.len(oldLength).draw();
                      }, 100);
                  });
                  dt.draw();
              },
              messageTop: function () {
                  var f = new Date();
                  var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();
                  return "Fecha de reporte: " + fecha;
              }
          },
          // Botón para PDF
          {
              extend: 'pdf',
              orientation: 'landscape',
              pageSize: 'A4',
              exportOptions: {
                  columns: [1, 2, 3, 4, 5, 6, 7]
              },
              footer: true,
              title: 'Reporte de Herramientas',
              filename: 'Reporte_Herramientas',
              className: 'btn btn-danger btn-flat ml-1',
              text: 'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',
              action: function (e, dt, button, config) {
                  var self = this;
                  var oldLength = dt.page.len();
                  dt.page.len(1000000);
                  dt.one('draw', function () {
                      $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config);
                      setTimeout(function() {
                          dt.page.len(oldLength).draw();
                      }, 100);
                  });
                  dt.draw();
              },
              messageTop: function () {
                  var f = new Date();
                  var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();
                  return "Fecha de reporte: " + fecha;
              },
              customize: function (doc) {
                  // Remover el título original
                  var title = doc.content[0].text;
                  doc.content.splice(0, 1);

                  // Agregar Cabecera: Título Izquierda, Logo Derecha
                  var headerColumns = [
                      {
                          text: title,
                          fontSize: 22,
                          bold: true,
                          alignment: 'left',
                          margin: [0, 10, 0, 0]
                      }
                  ];

                  <?php if (!empty($logo)) { ?>
                  headerColumns.push({
                      image: '<?php echo $logo; ?>',
                      width: 100,
                      alignment: 'right',
                      margin: [0, 0, 0, 0]
                  });
                  <?php } ?>

                  doc.content.splice(0, 0, {
                      columns: headerColumns,
                      margin: [0, 0, 0, 20]
                  });

                  // Ajustar messageTop (Fecha)
                  doc.content[1].alignment = 'left';
                  doc.content[1].margin = [0, 0, 0, 10];

                  // Estilo general
                  doc.defaultStyle.fontSize = 9;

                  // Estilo de la cabecera de la tabla
                  doc.styles.tableHeader.fillColor = '#dd4b39';
                  doc.styles.tableHeader.color = 'white';
                  doc.styles.tableHeader.alignment = 'center';
                  doc.styles.tableHeader.fontSize = 10;

                  // Anchos proporcionales para 7 columnas exportadas
                  var tableIndex = doc.content.length - 1;
                  doc.content[tableIndex].table.widths = ['12%', '14%', '20%', '12%', '12%', '18%', '12%'];
              }
          },
          // Botón Copiar
          {
              extend: 'copy',
              exportOptions: {
                  columns: [1, 2, 3, 4, 5, 6, 7]
              },
              footer: true,
              title: 'Reporte de Herramientas',
              filename: 'Reporte_Herramientas',
              className: 'btn btn-primary btn-flat ml-1',
              text: 'Copiar <i class="fa fa-file-text-o"></i>',
              action: function (e, dt, button, config) {
                  var self = this;
                  var oldLength = dt.page.len();
                  dt.page.len(1000000);
                  dt.one('draw', function () {
                      $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
                      setTimeout(function() {
                          dt.page.len(oldLength).draw();
                      }, 100);
                  });
                  dt.draw();
              }
          },
          // Botón Imprimir
          {
              extend: 'print',
              exportOptions: {
                  columns: [1, 2, 3, 4, 5, 6, 7]
              },
              footer: true,
              title: 'Reporte de Herramientas',
              filename: 'Reporte_Herramientas',
              className: 'btn btn-default btn-flat ml-1',
              text: 'Imprimir <i class="fa fa-print"></i>',
              action: function (e, dt, button, config) {
                  var self = this;
                  var oldLength = dt.page.len();
                  dt.page.len(1000000);
                  dt.one('draw', function () {
                      $.fn.dataTable.ext.buttons.print.action.call(self, e, dt, button, config);
                      setTimeout(function() {
                          dt.page.len(oldLength).draw();
                      }, 100);
                  });
                  dt.draw();
              },
              messageTop: function () {
                  var f = new Date();
                  var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();
                  return "Fecha de reporte: " + fecha;
              },
              customize: function (win) {
                  // Remover links y scripts vacíos o rotos que causan error 404 /index en CodeIgniter
                  $(win.document.head).find('link[href=""], link[href="#"], link:not([href])').remove();
                  $(win.document.head).find('script[src=""], script[src="#"]').remove();

                  $(win.document.body).find('tr[data-json]').removeAttr('data-json');

                  // Remover el título original H1
                  $(win.document.body).find('h1').remove();

                  // Cabecera estilizada
                  var cabecera = '<div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; border-bottom: 2px solid #dd4b39; padding-bottom: 10px;">' +
                                 '  <h1 style="margin: 0; font-size: 22pt; font-weight: bold; color: #333;">Reporte de Herramientas</h1>' +
                                 '</div>';
                  $(win.document.body).prepend(cabecera);

                  // Estilizar bloque de filtros/fecha
                  $(win.document.body).find('div').each(function() {
                      if ($(this).text().indexOf('Fecha de reporte:') !== -1) {
                          $(this).css({
                              'white-space': 'pre-line',
                              'font-size': '10pt',
                              'margin-bottom': '15px',
                              'line-height': '1.5',
                              'background-color': '#f9f9f9',
                              'padding': '10px',
                              'border': '1px solid #ddd',
                              'border-radius': '4px'
                          });
                      }
                  });

                  $(win.document.body).css('font-size', '9pt');
                  $(win.document.body).find('table')
                      .addClass('compact')
                      .css('font-size', '9pt')
                      .css('width', '100%');

                  $(win.document.body).find('th').css({
                      'background-color': '#dd4b39',
                      'color': 'white',
                      'text-align': 'center',
                      'font-size': '10pt',
                      'padding': '8px'
                  });
              }
          }
      ],
      "createdRow": function(row, data, dataIndex) {
          $(row).attr('data-json', JSON.stringify(data));
      }
  });

  // Genera y muestra el código QR de la herramienta (link a vista pública)
  $(document).off("click", ".btnQR").on("click", ".btnQR", async function() {
    var tr = $(this).closest("tr");
    var data = tr.attr("data-json");
    var rowData = data ? JSON.parse(data) : $('#tabla_herramientas').DataTable().row(tr).data();
    if (!rowData) {
      alertify.error("No se pudo obtener la herramienta");
      return;
    }

    if (typeof wo === 'function') wo();
    $("#contenedorCodigoQr").empty();
    $("#infoQrHerramienta").empty();
    $("#tiposQrHerramienta").empty();

    var esc = function(txt) { return $('<div>').text(txt == null ? '' : txt).html(); };

    var config = {};
    config.titulo = "Herramienta_" + (rowData.codigo || rowData.herr_id);
    config.pixel = <?php echo json_encode(isset($qr_herramienta_pixel) ? $qr_herramienta_pixel : '7'); ?>;
    config.level = <?php echo json_encode(isset($qr_herramienta_level) ? $qr_herramienta_level : 'L'); ?>;
    config.framSize = <?php echo json_encode(isset($qr_herramienta_framsize) ? $qr_herramienta_framsize : '2'); ?>;

    var dataQR = {};
    try {
      dataQR.link = await crearUrlQr(rowData.herr_id);
    } catch (err) {
      alertify.error("No se pudo generar el link de la herramienta");
      if (typeof wc === 'function') wc();
      return;
    }

    // Codigo - Descripcion - Marca
    $("#infoQrHerramienta").html('<div>'
        + esc(rowData.codigo) + ' - ' + esc(rowData.descripcion) + ' - ' + esc(rowData.marca)
        + '</div>');

    // Tipos con color (misma logica que columna Tipo de la tabla y modal de edicion)
    var tiposHtml = '';
    var tipos = (rowData.tipoHerramienta || '').split('-').filter(function (t) { return t !== ''; });
    var colores = (rowData.colorTipo || '').split('-').filter(function (c) { return c !== ''; });
    for (var i = 0; i < tipos.length; i++) {
      var color = colores[i] || '#808080';
      tiposHtml += '<small class="label" style="'
                   + 'background-color:' + color + ';'
                   + 'color:#000;'
                   + 'display: inline-block;'
                   + 'border-radius:10px;'
                   + 'font-size: 90%;'
                   + 'padding:3px 10px;'
                   + 'margin-right:4px;'
                   + 'margin-bottom:4px;'
                   + '">'
                   + esc(tipos[i])
                   + '</small>';
    }
    $("#tiposQrHerramienta").html(tiposHtml);

    setDatosQrHerramienta(config, dataQR, 'codigosQR/traz-comp-pan/herramientas');

    verModalImpresionHerramienta();
    if (typeof wc === 'function') wc();
  });

  // Crea el link con token que apunta a la vista pública de la herramienta
  function crearUrlQr(herr_id) {
    return new Promise(function(resolve, reject) {
      var datos = {};
      datos.id = herr_id;
      datos.funcion = 'PAN.herramienta';

      $.ajax({
        type: 'POST',
        data: datos,
        url: '<?php echo COD ?>Url/generarLink',
        success: function(data) {
          var url = JSON.parse(data);
          resolve(url.url);
        },
        error: function(err) {
          reject(err);
        }
      });
    });
  }

  // extrae datos de la tabla
  $(document).off("click", ".btnEditar").on("click", ".btnEditar", function(e) {
    $(".modal-header h4").remove();
    $("#operacion").val("Edit");
    $(".modal-header").append('<h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-pencil"></span> Editar Herramienta </h4>');
    var data = $(this).parents("tr").attr("data-json");
    var datajson = JSON.parse(data);
    habilitarEdicion();
    llenarModal(datajson);
  });

  // extrae datos de la tabla
  $(document).off("click", ".btnInfo").on("click", ".btnInfo", function(e) {
    $(".modal-header h4").remove();
    $("#operacion").val("Info");
    $(".modal-header").append('<h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-search"></span> Info Herramienta </h4>');
    var data = $(this).parents("tr").attr("data-json") || $(this).closest("tr").attr("data-json");
    var datajson = JSON.parse(data);
    blockEdicion();
    llenarModal(datajson);
    
    // Por defecto aseguramos que se abra la primer pestaña de trazabilidad
    // a menos que vengamos del boton de certificaciones
    if (!$(this).hasClass('btnTabCertificaciones')) {
        $('.nav-tabs a[href="#tab_trazabilidad"]').tab('show');
    }
  });

  // Handler especifico para abrir el tab de certificaciones
  $(document).off("click", ".btnTabCertificaciones").on("click", ".btnTabCertificaciones", function() {
    setTimeout(function() {
      $('.nav-tabs a[href="#tab_certificaciones"]').tab('show');
    }, 250);
  });

  // Levanta modal prevencion eliminar herramienta
  $(document).off("click", ".btnEliminar").on("click", ".btnEliminar", function() {
    $(".modal-header h4").remove();
    $(".modal-header").append('<h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-times text-light-blue"></span> Eliminar Herramienta </h4>');
    var data = $(this).parents("tr").attr("data-json");
    var datajson = JSON.parse(data);
    var herr_id = datajson.herr_id;
    $("#id_herr").val(herr_id);
    $("#modalaviso").modal('show');
  });

  // Evento para cambiar estado (Habilitar / Inhabilitar)
  $(document).off("click", ".btnCambioEstado").on("click", ".btnCambioEstado", function() {
    var tr = $(this).closest("tr");
    var data = tr.attr("data-json");
    var rowData = data ? JSON.parse(data) : $('#tabla_herramientas').DataTable().row(tr).data();
    var estado = rowData.estado;
    var codigo = rowData.codigo || '';

    if (estado === 'TRANSITO') {
      if (typeof alertify !== 'undefined') {
        alertify.error("La herramienta se encuentra en TRANSITO por lo que no puede ser inhabilitada");
      } else {
        alert("La herramienta se encuentra en TRANSITO por lo que no puede ser inhabilitada");
      }
      return;
    }

    var nuevoEstado = (estado === 'ACTIVO') ? 'INHABILITADO' : 'ACTIVO';
    var accionTexto = (nuevoEstado === 'INHABILITADO') ? 'inhabilitar' : 'habilitar';
    var mensaje = '¿Está seguro que desea ' + accionTexto + ' a la herramienta ' + codigo + '?';

    if (typeof Swal !== 'undefined') {
      Swal.fire({
        title: 'Atención',
        text: mensaje,
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Sí, continuar',
        cancelButtonText: 'Cancelar'
      }).then(function(result) {
        if (result.value) {
          abrirModalInhabilitar(rowData, nuevoEstado);
        }
      });
    } else if (typeof alertify !== 'undefined') {
      alertify.confirm(mensaje, function(e) {
        if (e) {
          abrirModalInhabilitar(rowData, nuevoEstado);
        }
      });
    } else {
      if (confirm(mensaje)) {
        abrirModalInhabilitar(rowData, nuevoEstado);
      }
    }
  });

  // Abre modal para ingresar la justificación (Habilitar / Inhabilitar)
  function abrirModalInhabilitar(rowData, nuevoEstado) {
    nuevoEstado = nuevoEstado || ((rowData && rowData.estado === 'ACTIVO') ? 'INHABILITADO' : 'ACTIVO');
    var esHabilitar = (nuevoEstado === 'ACTIVO');
    var accion = esHabilitar ? 'Habilitar' : 'Inhabilitar';
    var icono = esHabilitar ? 'fa-check' : 'fa-ban';
    var btnClase = esHabilitar ? 'btn-success' : 'btn-warning';
    var placeholder = esHabilitar 
      ? 'Ingrese el motivo por el cual se habilita la herramienta...'
      : 'Ingrese el motivo por el cual se inhabilita la herramienta...';

    $('#modal_inh_herr_id').val(rowData.herr_id);
    $('#modal_inh_codigo').text(rowData.codigo || '');
    $('#modal_inh_justificacion').val('').attr('placeholder', placeholder);
    $('#modalInhabilitarLabel').html('<span class="fa fa-fw ' + icono + '"></span> ' + accion + ' Herramienta: <strong id="modal_inh_codigo">' + (rowData.codigo || '') + '</strong>');
    $('#btnConfirmarInhabilitar').removeClass('btn-warning btn-success btn-primary').addClass(btnClase).text(accion);

    $('#modal_inhabilitar').data('row-data', rowData);
    $('#modal_inhabilitar').data('nuevo-estado', nuevoEstado);
    $('#modal_inhabilitar').modal('show');
  }

  // Confirmar inhabilitación / habilitación desde el modal
  function confirmarInhabilitacion() {
    var justificacion = $.trim($('#modal_inh_justificacion').val());
    if (!justificacion) {
      alertify.error('Debe ingresar una justificación');
      $('#modal_inh_justificacion').focus();
      return;
    }
    var rowData = $('#modal_inhabilitar').data('row-data');
    var nuevoEstado = $('#modal_inhabilitar').data('nuevo-estado') || 'INHABILITADO';
    $('#modal_inhabilitar').modal('hide');
    cambioEstado(rowData, nuevoEstado, justificacion);
  }

  function cambioEstado(rowData, nuevoEstado, justificacion) {
    var herr_id = rowData ? rowData.herr_id : $('#modal_inh_herr_id').val();
    if (!herr_id) {
      alertify.error("No se encontró el identificador de la herramienta");
      return;
    }

    if (typeof wo === 'function') wo();

    var postData = {
      herr_id: herr_id,
      estado: nuevoEstado,
      tipo_movimiento: nuevoEstado
    };
    if (justificacion) {
      postData.justificacion = justificacion;
    }

    $.ajax({
      type: "POST",
      url: "<?php echo base_url(PAN); ?>Herramienta/setEstado",
      data: postData,
      dataType: "JSON",
      success: function(resp) {
        if (typeof wc === 'function') wc();
        if (resp) {
          alertify.success(nuevoEstado === 'INHABILITADO' ? 'Herramienta inhabilitada con éxito' : 'Herramienta habilitada con éxito');
          if ($.fn.DataTable.isDataTable('#tabla_herramientas')) {
            $('#tabla_herramientas').DataTable().ajax.reload(null, false);
          }
        } else {
          alertify.error("No se pudo cambiar el estado de la herramienta");
        }
      },
      error: function(err) {
        if (typeof wc === 'function') wc();
        console.error(err);
        alertify.error("Error en el servidor al cambiar el estado");
      }
    });
  }

  // Valida si la herramienta se encuentra en "Estado: Tránsito antes de eliminarla
  function validarEstado(){
    var herr_id = $("#id_herr").val();
    $.ajax({
      type: "POST",
      url: "<?php echo base_url(PAN); ?>Herramienta/validarEstado",
      data: {herr_id: herr_id},
      dataType: "JSON",
      success: function (rsp) {
        if(rsp != null){
          if(rsp.existe == 'true' || rsp.existe === true){
            alertify.error("La herramienta se encuentra en TRANSITO por lo que no puede ser eliminada");
          }else{
            eliminar(herr_id);
          }
        }else{
          alertify.error("Se produjo un error validando el estado de la herramienta!");
        }
      }
    });
  }

  // Elimina herramienta
  function eliminar(herr_id){
    wo();
    $.ajax({
        type: 'POST',
        data:{herr_id: herr_id},
        url: '<?php echo base_url(PAN); ?>Herramienta/borrarHerramienta',
        success: function(result) {
              if ($.fn.DataTable.isDataTable('#tabla_herramientas')) {
                $('#tabla_herramientas').DataTable().ajax.reload(null, false);
              }
              wc();
              $("#modalaviso").modal('hide');
              alertify.success('Herramienta eliminada con éxito');
        },
        error: function(result){
          wc();
          $("#modalaviso").modal('hide');
          alertify.error('Error en eliminado de Herramientas...');
        }
    });
  }


  $(document).off("click", ".btnChecklist").on("click", ".btnChecklist", function() {
    var tr = $(this).closest("tr");
    var data = tr.attr("data-json");
    var rowData = data ? JSON.parse(data) : $('#tabla_herramientas').DataTable().row(tr).data();
    
    // Guardar el id de la herramienta en el modal
    $("#id_herr_checklist").val(rowData.herr_id);

    // Restaurar modo "Nuevo Checklist"
    $("#modalchecklist #myModalLabel").find("#modalAction")
      .removeClass("fa-search").addClass("fa-check-square-o");
    $("#modalchecklist #myModalLabel").contents().filter(function() {
      return this.nodeType === 3;
    }).first().replaceWith(" Nuevo Checklist");

    $("#modalchecklist .btn-primary").filter(function() {
      return $(this).attr("onclick") && $(this).attr("onclick").indexOf("guardarChecklist") !== -1;
    }).show();
    $("#btnImprimirChecklist").hide();

    // Si #form-dinamico quedó con una instancia (modo vista), recargar la plantilla vacía
    var $frmDin = $("#form-dinamico form");
    if ($frmDin.length && ($frmDin.attr("data-info") || "").length > 0) {
      var formId = $("#form-dinamico").data("form") || $("#form-dinamico").attr("data-form");
      $("#form-dinamico").empty();
      if (formId && typeof frmUrl !== "undefined") {
        $("#form-dinamico").load("index.php/" + frmUrl + "Form/obtenerNuevo/" + formId, function() {
          $(".frm-select").select2();
          if (typeof initForm === "function") initForm();
        });
      }
    } else {
      $("#form-dinamico form").find("input, select, textarea, button").prop("disabled", false);
      if (typeof frmReset === "function") {
        frmReset("#form-dinamico form");
      }
    }
  });

  $(document).off("click", ".btnCertificar").on("click", ".btnCertificar", function() {
    wo();
    var tr = $(this).closest("tr");
    var data = tr.attr("data-json");
    var rowData = data ? JSON.parse(data) : $('#tabla_herramientas').DataTable().row(tr).data();
    
    // Resetear formulario y guardar el id de la herramienta en el modal
    $("#formCertificar")[0].reset();
    $("#preview_adjunto_cert").hide().removeAttr("href download");
    $("#modalcertificar #id_herr").val(rowData.herr_id);

    // Cargar las opciones del select dinámicamente
    var $select = $('#entidad_certificadora');
    $select.empty().append('<option value="">Cargando...</option>');

    $.ajax({
        type: "GET",
        url: "<?php echo base_url(PAN); ?>Herramienta/getEntidadesCertificadoras",
        dataType: "JSON",
        success: function(resp) {
          wc();
            $select.empty().append('<option value="">Seleccione...</option>');
            if (resp && resp.length > 0) {
                $.each(resp, function(index, item) {
                    $select.append('<option value="' + item.tabl_id + '">' + (item.valor || item.descripcion) + '</option>');
                });
            }
        },
        error: function() {
          wc();
          $select.empty().append('<option value="">Error al cargar entidades</option>');
        }
    });
  });

  // Previsualización y descarga local del archivo seleccionado (según skill base64-file-handling)
  $(document).off("change", "#adjunto_certificado").on("change", "#adjunto_certificado", function(e) {
    if (e.target.files && e.target.files[0]) {
      var file = e.target.files[0];
      var blobUrl = URL.createObjectURL(file);
      $("#preview_adjunto_cert").attr({
        download: file.name,
        href: blobUrl
      }).show();
    } else {
      $("#preview_adjunto_cert").hide().removeAttr("href download");
    }
  });

  // Guardar Certificación
  function guardarCertificacion() {
    var herr_id = $("#modalcertificar #id_herr").val();
    var fecha_hora = $("#fecha_hora_certificacion").val();
    var fec_vencimiento = $("#fecha_vencimiento").val();
    var entidad_id = $("#entidad_certificadora").val();

    if (!fecha_hora) {
      alertify.error("Debe ingresar la fecha y hora de certificación");
      $("#fecha_hora_certificacion").focus();
      return;
    }

    if (!fec_vencimiento) {
      alertify.error("Debe ingresar la fecha de vencimiento");
      $("#fecha_vencimiento").focus();
      return;
    }

    if (!entidad_id) {
      alertify.error("Debe seleccionar una entidad certificadora");
      $("#entidad_certificadora").focus();
      return;
    }

    var formData = new FormData();
    formData.append("herr_id", herr_id);
    formData.append("fecha_hora", fecha_hora);
    formData.append("fec_vencimiento", fec_vencimiento);
    formData.append("entidad_id", entidad_id);

    var fileInput = document.getElementById("adjunto_certificado");
    if (fileInput.files.length > 0) {
      formData.append("adjunto_certificado", fileInput.files[0]);
    }

    wo();
    $.ajax({
      type: "POST",
      url: "<?php echo base_url(PAN); ?>Herramienta/guardarCertificacion",
      data: formData,
      processData: false,
      contentType: false,
      dataType: "JSON",
      success: function(resp) {
        wc();
        if (resp) {
          alertify.success("Certificación guardada con éxito");
          $("#modalcertificar").modal("hide");
          $("#formCertificar")[0].reset();
          $("#preview_adjunto_cert").hide().removeAttr("href download");
          if ($.fn.DataTable.isDataTable("#tabla_herramientas")) {
            $("#tabla_herramientas").DataTable().ajax.reload(null, false);
          }
        } else {
          alertify.error("No se pudo guardar la certificación");
        }
      },
      error: function(err) {
        wc();
        console.error(err);
        alertify.error("Error al guardar la certificación");
      }
    });
  }

</script>

<?php $this->load->view('herramienta/modals/modal_eliminar'); ?>

<?php $this->load->view('herramienta/modals/modal_inhabilitar'); ?>


<?php $this->load->view('herramienta/modals/modal_certificar'); ?>
<?php $this->load->view('herramienta/modals/modal_checklist'); ?>

<?php $this->load->view(COD . 'componentes/modalHerramientas'); ?>

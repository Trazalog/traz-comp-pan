<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-body">
          <!-- <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="cargOrden">Cargar Vale</button> -->
          <table id="vales" class="table table-bordered table-hover">
            <thead>
              <tr> 
                <th>Acciones</th>
                <th>Nro Vale</th>
                <th>Tipo</th>
                <th>Fecha y hora</th>
                <th>Establecimiento/Pañol</th>
                <th>Responsable</th>
                <th>Herramientas</th>
              </tr>
            </thead>
            <tbody>
            </tbody>
          </table>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
<script>

// Config Tabla
  $('#vales').DataTable({
      "processing": true,
      "serverSide": true,
      "ajax": {
          "url": "<?php echo base_url(PAN) ?>Movimientoherramientas/listarMovimientosPaginados",
          "type": "POST",
          "data": function (d) {
              // Si se filtra por tipo en la vista, lo enviamos
              var tipo = $('#tipo_movimiento').val();
              d.tipo_movimiento = tipo ? tipo : '';
          }
      },
      "columns": [
          {
              "data": "movimiento_id",
              "render": function (data, type, row) {
                  return '<i class="fa fa-print text-light-blue" style="cursor: pointer; margin: 3px;" title="Imprimir Vale" onclick="imprimirVale(\'' + data + '\', \'' + row.tipo + '\')"></i>';
              },
              "orderable": false
          },
          { "data": "movimiento_id", "orderable": false },
          { "data": "tipo", "orderable": false },
          { "data": "fec_alta" },
          { "data": "establecimiento", "orderable": false },
          { "data": "responsable", "orderable": false },
          { "data": "herramientas", "orderable": false }
      ],
      "order": [[3, "desc"]],
      dom: 'lBfrtip',
      buttons: [{
            //Botón para Excel
            extend: 'excel',
            exportOptions: {
                columns: [1, 2, 3, 4, 5, 6]
            },
            footer: true,
            title: 'Reporte Movimientos Herramientas',
            filename: 'Reporte_Movimientos_Herramientas',
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
        //Botón para PDF
        {
            extend: 'pdf',
            orientation: 'landscape',
            pageSize: 'A4',
            exportOptions: {
                columns: [1, 2, 3, 4, 5, 6]
            },
            footer: true,
            title: 'Reporte Movimientos Herramientas',
            filename: 'Reporte_Movimientos_Herramientas',
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

                // Ajustar messageTop (Fecha) - Ahora está en index 1
                doc.content[1].alignment = 'left';
                doc.content[1].margin = [0, 0, 0, 10];

                // Estilo general para que quepa todo
                doc.defaultStyle.fontSize = 9;

                // Estilo de la tabla
                doc.styles.tableHeader.fillColor = '#dd4b39';
                doc.styles.tableHeader.color = 'white';
                doc.styles.tableHeader.alignment = 'center';
                doc.styles.tableHeader.fontSize = 10;

                // Hacer que la tabla ocupe todo el ancho con anchos proporcionales (6 columnas exportadas)
                var tableIndex = doc.content.length - 1;
                doc.content[tableIndex].table.widths = ['10%', '15%', '15%', '25%', '15%', '20%'];
            }
        },
        {
            extend: 'copy',
            exportOptions: {
                columns: [1, 2, 3, 4, 5, 6]
            },
            footer: true,
            title: 'Reporte Movimientos Herramientas',
            filename: 'Reporte_Movimientos_Herramientas',
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
                
        {
            extend: 'print',
            exportOptions: {
                columns: [1, 2, 3, 4, 5, 6]
            },
            footer: true,
            title: 'Reporte Movimientos Herramientas',
            filename: 'Reporte_Movimientos_Herramientas',
            className: 'btn btn-default btn-flat ml-1',
            text: 'Imprimir <i class="fa fa-print"></i>',
            action: function (e, dt, button, config) {
                var self = this;
                // 1. Guardar la paginación actual
                var oldLength = dt.page.len();
                
                // 2. Cambiar la longitud a un número grande para traer todos los registros del servidor
                dt.page.len(1000000);
                
                // 3. Listener por única vez al terminar de renderizar los datos
                dt.one('draw', function () {
                    // Invocar la acción original de impresión
                    $.fn.dataTable.ext.buttons.print.action.call(self, e, dt, button, config);
                    
                    // 4. Restaurar la longitud de página original tras un pequeño delay
                    setTimeout(function() {
                        dt.page.len(oldLength).draw();
                    }, 100);
                });
                
                // 5. Disparar el dibujado con la nueva longitud
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
                
                // Cabecera solo de texto
                var cabecera = '<div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; border-bottom: 2px solid #dd4b39; padding-bottom: 10px;">' +
                               '  <h1 style="margin: 0; font-size: 22pt; font-weight: bold; color: #333;">Reporte Movimientos Herramientas</h1>' +
                               '</div>';
                $(win.document.body).prepend(cabecera);

                // Estilizar el bloque de filtros (messageTop)
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

                // Estilo general de la página
                $(win.document.body).css('font-size', '9pt');

                // Estilo de la tabla
                $(win.document.body).find('table')
                    .addClass('compact')
                    .css('font-size', '9pt')
                    .css('width', '100%');

                // Estilo de los encabezados para coincidir con el PDF
                $(win.document.body).find('th').css({
                    'background-color': '#dd4b39',
                    'color': 'white',
                    'text-align': 'center',
                    'font-size': '10pt',
                    'padding': '8px'
                });
            }
        } 
    ]
  });

  function imprimirVale(sapa_id, tipo) {
      if(!sapa_id) {
          alertify.error("El comprobante no tiene ID válido.");
          return;
      }
      wo();
      $.ajax({
          type: 'GET',
          url: '<?php echo base_url(PAN) ?>Vales/printVale/' + sapa_id + '/' + tipo,
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

</script>
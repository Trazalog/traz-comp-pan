<style>

  /* Nested modal: levantar z-index para que quede delante de modaleditar */
  #modalchecklist {
      z-index: 2080 !important;
  }
  .modal-backdrop + .modal-backdrop {
      z-index: 2070 !important;
  }

  /* estilos form dinamico */
.frm-save {
    display: none;
}

/* Forzar labels al lado de los inputs en el form dinámico */
#form-dinamico .form-group {
    display: flex !important;
    align-items: center;
    flex-wrap: wrap;
}
#form-dinamico .form-group > label {
    flex: 0 0 33.333333%; 
    max-width: 33.333333%;
    text-align: right;
    padding-right: 15px;
    margin-bottom: 0;
}
#form-dinamico .form-group > div,
#form-dinamico .form-group > input,
#form-dinamico .form-group > select,
#form-dinamico .form-group > .select2-container,
#form-dinamico .form-group > textarea {
    flex: 1;
    max-width: 66.666667%;
}
</style>

<!-- Modal Checklist -->
  <div class="modal fade" id="modalchecklist">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-check-square-o"></span> Nuevo Checklist</h4>
        </div>
        <div class="modal-body">
          <form id="formChecklist" class="form-horizontal">
            <input type="text" id="id_herr_checklist" class="hidden">

            <div class="form-group">
              <label for="fecha_hora_checklist" class="col-xs-4 control-label">Fecha y Hora <strong class="text-danger">*</strong></label>
              <div class="col-xs-8">
                <input type="datetime-local" id="fecha_hora_checklist" name="fecha_hora_checklist" class="form-control" value="<?php echo date('Y-m-d\TH:i:s'); ?>" disabled>
              </div>
            </div>

            <div class="form-group">
              <label for="responsable_checklist" class="col-xs-4 control-label">Responsable <strong class="text-danger">*</strong></label>
              <div class="col-xs-8">
                <input type="text" id="responsable_checklist" name="responsable_checklist" class="form-control" value="<?php echo $this->session->userdata['first_name'].' '.$this->session->userdata['last_name']; ?>" disabled>
              </div>
            </div>

          </form>

        <!-- Formulario Dinámico de Entrega (FUERA del form principal para evitar forms anidados) -->
        <div class="col-md-12 col-sm-12 col-xs-12">
            <br>
            <div id="form-dinamico" class="frm-new" data-form="<?php echo $form_id ?>"></div>
        </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-default" id="btnImprimirChecklist" onclick="imprimirChecklist()" style="display: none;">Imprimir <i class="fa fa-print"></i></button>
          <button type="button" class="btn btn-primary" onclick="guardarChecklist()">Guardar</button>
        </div>
      </div>
    </div>
  </div>
<!-- / Modal Checklist -->

<script>
    $(document).ready(function() {
      detectarForm();
      initForm();
    });

    function imprimirChecklist() {
      // ---- Datos de la herramienta (modal principal) ----
      var codigo  = String($('#codigo_edit').val() || '').trim();
      var descrip = String($('#descripcion_edit').val() || '').trim();
      var modelo  = String($('#modelo_edit').val() || '').trim();
      var marca   = $('#marca_id_edit option:selected').length ? $('#marca_id_edit option:selected').text().trim() : '';

      // ---- Fecha / Responsable desde el modal checklist ----
      var fecha = String($('#fecha_hora_checklist').val() || '');
      if (fecha) {
        var fm = fecha.replace('T', ' ').match(/^(\d{4})-(\d{2})-(\d{2})\s(\d{2}:\d{2})/);
        if (fm) fecha = fm[3] + '-' + fm[2] + '-' + fm[1] + ' ' + fm[4];
      }
      var respons = String($('#responsable_checklist').val() || '').trim();

      function esc(txt) {
        return $('<div>').text(txt).html();
      }

      // ---- Recorrer los grupos del form dinámico ----
      var filas = '';
      $('#form-dinamico form .form-group').each(function () {
        var $g = $(this);
        var label = $.trim($g.children('label').first().text())
                      .replace(/\*.*$/g, '')
                      .replace(/:\s*$/g, '')
                      .trim();
        var valor = '';

        if ($g.find('input[type="checkbox"]').length || $g.find('input[type="radio"]').length) {
          var marcados = [];
          $g.find('input[type="checkbox"]:checked, input[type="radio"]:checked').each(function () {
            var txt = $.trim($(this).closest('label').first().text());
            if (txt === '') txt = $(this).val();
            marcados.push(txt);
          });
          valor = marcados.join(', ');
        } else if ($g.find('select').length) {
          valor = $g.find('select option:selected').map(function () {
            return $.trim($(this).text());
          }).get().join(', ');
        } else if ($g.find('textarea').length) {
          valor = String($g.find('textarea').val() || '');
        } else {
          valor = String($g.find('input').not('[type="checkbox"], [type="radio"], [type="file"], [type="submit"], [type="button"], [type="hidden"]').last().val() || '');
        }

        if (!label && !valor) return;
        if (valor === '') valor = '—';
        filas += '<tr><td class="campo">' + esc(label) + '</td><td>' + esc(valor) + '</td></tr>';
      });

      // ---- Construir ventana de impresión ----
      var logo = '';
      <?php if (!empty($logo)): ?>
      logo = '<img src="<?php echo $logo; ?>" alt="logo" style="height: 60px;" />';
      <?php endif; ?>

      var html = '<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Checklist Herramienta</title>';
      html += '<style>' +
              'body{font-family: Arial, Helvetica, sans-serif; color:#333; font-size: 12px; margin: 30px;}' +
              '.cabecera{display:flex; justify-content:space-between; align-items:center; border-bottom: 2px solid #dd4b39; padding-bottom: 10px; margin-bottom: 15px;}' +
              '.cabecera h1{margin:0; font-size: 20pt; font-weight:bold; color:#333;}' +
              '.info{font-size: 11px; line-height: 1.6; color:#555; margin-bottom: 15px;}' +
              'table{width:100%; border-collapse: collapse;}' +
              'th{background-color:#dd4b39; color:#fff; text-align:center; font-size: 11px; padding: 8px;}' +
              'td{border:1px solid #ddd; padding: 7px; font-size: 11px; vertical-align: top;}' +
              'td.campo{width: 40%; font-weight: bold; background: #f9f9f9;}' +
              '</style></head>';
      html += '<body onload="setTimeout(function(){ window.print(); window.close(); }, 500);">';
      html += '<div class="cabecera"><h1>Checklist Herramienta</h1>' + logo + '</div>';
      html += '<div class="info">' +
              '<b>Código:</b> ' + esc(codigo) + ' &nbsp;|&nbsp; <b>Descripción:</b> ' + esc(descrip) + '<br>' +
              '<b>Modelo:</b> ' + esc(modelo) + ' &nbsp;|&nbsp; <b>Marca:</b> ' + esc(marca) + '<br>' +
              '<b>Fecha y Hora:</b> ' + esc(fecha) + ' &nbsp;|&nbsp; <b>Responsable:</b> ' + esc(respons) +
              '</div>';
      html += '<table><thead><tr><th>Campo</th><th>Valor</th></tr></thead><tbody>' + filas + '</tbody></table>';
      html += '</body></html>';

      var ventana = window.open('', '_blank');
      ventana.document.write(html);
      ventana.document.close();
    }

    async function guardarChecklist() {
        wo();
        // 1. Guardar Formulario Dinámico
        var info_id = null;
        var idFormDinamico = "#" + $('.frm-new').find('form').attr('id');
        if (idFormDinamico != "#undefined" && idFormDinamico != "#") {
            if (!frm_validar(idFormDinamico)) {
                wc();
                alertify.error("Por favor, complete los campos obligatorios del formulario dinámico");
                return;
            }
            // Pasa el elemento jQuery del <form>
            info_id = await frmGuardarConPromesa($(idFormDinamico));
            if (!info_id) {
                wc();
                alertify.error("Error al guardar el formulario dinámico");
                return;
            }
        }

        var herr_id = $('#id_herr_checklist').val();
        var fecha_hora = $('#fecha_hora_checklist').val();

        var datos = {
            herr_id: herr_id,
            fecha_hora: fecha_hora,
            info_id: info_id
        };

        $.ajax({
            type: 'POST',
            data: datos,
            dataType: 'JSON',
            url: '<?php echo base_url(PAN); ?>Herramienta/guardarChecklist',
            success: function(result) {
                wc();
                if (result && result.status !== false && result !== 'false') {
                    alertify.success("Checklist guardado exitosamente");
                    $('#modalchecklist').modal('hide');
                } else {
                    alertify.error("Error al guardar el checklist");
                }
            },
            error: function() {
                wc();
                alertify.error("Error procesando la solicitud");
            }
        });
    }
</script>
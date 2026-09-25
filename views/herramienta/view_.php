<style>
/* ESTILOS SELECT 2 PARA TIPO HERRAMIENTA */
/* Quitar fondo azul de los elementos seleccionados */
.select2-container--default .select2-selection--multiple .select2-selection__choice {
    background-color: transparent !important;
    border: none !important;
    padding: 0 !important;
    margin: 3px 5px 3px 0 !important;
}

/* Color de la X */
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove {
    border: none !important;
    color: #777 !important;
    margin-right: 3px !important;
    padding: 0 3px !important;
}

/* Evitar que al pasar el mouse vuelva a aparecer fondo */
.select2-container--default .select2-selection--multiple .select2-selection__choice__remove:hover {
    background-color: transparent !important;
    color: #333 !important;
}

</style>
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
                        if(isset($panoles) && is_array($panoles)) {
                            foreach ($panoles as $panol) {
                                echo '<option  value="'.$panol->pano_id.'">'.$panol->nombre.'</option>';
                            }
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
            <!-- Tipo -->
            <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="tipo">
                        Tipo <strong style="color: #dd4b39">*</strong>:
                    </label>

                    <select id="tipo" name="tipo[]" class="form-control requerido" multiple>
                        <?php foreach ($tipos_herramienta as $tipo): ?>

                            <?php
                                $color = !empty($tipo->valor2)
                                    ? $tipo->valor2
                                    : '#808080';
                            ?>

                            <option
                                value="<?= htmlspecialchars($tipo->valor) ?>"
                                data-color="<?= htmlspecialchars($color) ?>"
                            >
                                <?= htmlspecialchars($tipo->descripcion) ?>
                            </option>

                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <!--________________-->
            <!-- Forzar nueva fila por fix -->
            <div class="clearfix"></div>
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

<!---/////--- BOX FILTROS ---/////----->
<div class="box box-default animated fadeInDown" id="boxFiltros">
    <div class="box-header with-border">
        <h4><i class="fa fa-filter"></i> Filtros</h4>
    </div>
    <div class="box-body">
        <div class="row">
            <!-- Establecimiento Filtro -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="filtro_esta_id">Establecimiento:</label>
                    <select id="filtro_esta_id" class="form-control">
                        <option value="">-- Todos --</option>
                        <?php
                            foreach ($establecimientos as $establec) {
                                echo '<option value="'.$establec->esta_id.'">'.$establec->nombre.'</option>';
                            }
                        ?>
                    </select>
                </div>
            </div>
            <!-- Pañol Filtro -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="filtro_pano_id">Pañol:</label>
                    <select id="filtro_pano_id" class="form-control">
                        <option value="">-- Todos --</option>
                    </select>
                </div>
            </div>
            <!-- Tipo de Herramienta Filtro -->
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label for="filtro_tipo">Tipo de Herramienta:</label>
                    <select id="filtro_tipo" class="form-control" multiple>
                        <?php foreach ($tipos_herramienta as $tipo): ?>
                            <?php
                                $color = !empty($tipo->valor2) ? $tipo->valor2 : '#808080';
                            ?>
                            <option value="<?= htmlspecialchars($tipo->valor) ?>" data-color="<?= htmlspecialchars($color) ?>">
                                <?= htmlspecialchars($tipo->descripcion) ?>
                            </option>
                        <?php endforeach; ?>
                    </select>
                </div>
            </div>
            <!-- Checkbox Cert. por vencer -->
            <div class="col-md-1 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label>&nbsp;</label>
                    <div class="checkbox" style="margin-top:8px;">
                        <label>
                            <input type="checkbox" id="filtro_cert_vencer">
                            <strong>Cert. por vencer</strong>
                        </label>
                    </div>
                </div>
            </div>
            <!-- Botones Filtrar / Limpiar -->
            <div class="col-md-2 col-sm-6 col-xs-12">
                <div class="form-group">
                    <label>&nbsp;</label>
                    <div style="margin-top:6px;">
                        <button class="btn btn-success" onclick="filtrar()">
                            <i class="fa fa-filter"></i> Filtrar
                        </button>
                        <button class="btn btn-default" onclick="limpiar()">
                            <i class="fa fa-eraser"></i> Limpiar
                        </button>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!---/////--- FIN BOX FILTROS ---/////----->

<!---/////---BOX 2 DATATBLE ---/////----->
<div class="box box-primary">
		<div class="box-body">
				<div class="row">
						<div class="col-sm-12 table-scroll" id="cargar_tabla">
						</div>
				</div>
		</div>
</div>
<!---/////--- FIN BOX 2 DATATABLE---//////----->

<?php $this->load->view('herramienta/modals/modal_editar'); ?>

<?php $this->load->view('herramienta/modals/modal_adjunto'); ?>

<style>
  /* Modal vale (#mdl-back) abierto sobre #modaleditar: subir z-index */
  #mdl-back {
      z-index: 2080 !important;
  }
</style>

<script>
  // Carga la tabla desde list.php
  $("#cargar_tabla").load("<?php echo base_url(PAN); ?>Herramienta/listarHerramientas");

  $(document).ready(function() {
      detectarForm();
      initForm();
  });
  // -------------------------------------------------------
  // Filtrar: recarga DataTable
  // -------------------------------------------------------
  function filtrar() {
    if ($.fn.DataTable.isDataTable('#tabla_herramientas')) {
      $('#tabla_herramientas').DataTable().ajax.reload();
    }
  }

  // -------------------------------------------------------
  // Limpiar filtros y recargar
  // -------------------------------------------------------
  function limpiar() {
    $('#filtro_esta_id').val('');
    $('#filtro_pano_id').empty().append('<option value="">-- Todos --</option>');
    $('#filtro_tipo').val(null).trigger('change');
    $('#filtro_cert_vencer').prop('checked', false);
    if ($.fn.DataTable.isDataTable('#tabla_herramientas')) {
      $('#tabla_herramientas').DataTable().search('').ajax.reload();
    }
  }

  // -------------------------------------------------------
  // Variable global para herr_id activo en modal
  var herr_id_modal = null;

  // -------------------------------------------------------
  // Modal helpers
  function llenarModal(d) {
    $('#herr_id').val(d.herr_id);
    $('#codigo_edit').val(d.codigo);
    $('#descripcion_edit').val(d.descripcion);
    $('#modelo_edit').val(d.modelo);

    // Seleccionar Marca correctamente tanto por ID como por nombre/valor
    var marcaVal = d.marca_id || d.marca || '';
    $('#marca_id_edit').val(null);
    if ($('#marca_id_edit option[value="' + marcaVal + '"]').length > 0) {
      $('#marca_id_edit').val(marcaVal);
    } else {
      $('#marca_id_edit option').filter(function() {
        return $.trim($(this).text()).toLowerCase() === $.trim(d.marca || '').toLowerCase();
      }).prop('selected', true);
    }
    $('#marca_id_edit').trigger('change');

    $('#pano_id_edit option[value="'+ d.pano_id +'"]').prop('selected', true);

    // Renderizar tags de tipoHerramienta con colorTipo (igual a la tabla y modal de agregar)
    var htmlTags = '';
    var tipoHerramienta = d.tipoHerramienta || d.tipo || '';
    var tiposArray = [];
    if (tipoHerramienta) {
      var tipos = tipoHerramienta.split('-').filter(function(t) { return t !== ''; });
      var colores = (d.colorTipo || '').split('-').filter(function(c) { return c !== ''; });
      tipos.forEach(function(tipoNombre, i) {
        var color = colores[i] || '#808080';
        htmlTags += '<small class="label pull-left" style="'
                 + 'background-color:' + color + ';'
                 + 'color:#000;'
                 + 'display: inline-block;'
                 + 'border-radius:10px;'
                 + 'font-size: 90%;'
                 + 'padding:3px 10px;'
                 + 'margin-right:4px;'
                 + 'margin-bottom:4px;'
                 + '">'
                 + tipoNombre
                 + '</small>';

        // Buscar el option correspondiente en #tipo_edit (por valor o por texto)
        $('#tipo_edit option').each(function() {
          if ($(this).val() === tipoNombre || $.trim($(this).text()).toLowerCase() === $.trim(tipoNombre).toLowerCase()) {
            tiposArray.push($(this).val());
          }
        });
      });
    }
    $('#tipo_edit_tags').html(htmlTags);

    // Setear valores seleccionados en el Select2 múltiple de tipo_edit
    $('#tipo_edit').val(tiposArray).trigger('change');

    // Activar primera pestaña por defecto
    $('.nav-tabs a[href="#tab_trazabilidad"]').tab('show');

    // Guardar herr_id global y recargar DataTables de trazabilidad y certificaciones
    herr_id_modal = d.herr_id;
    cargarTablaTrazabilidad();
    cargarTablaCertificaciones();
    cargarTablaChecklists();
  }

  function blockEdicion() {
    $('.habilitar').attr('readonly', 'readonly');
    $('#marca_id_edit').prop('disabled', true);
    $('#tipo_edit').prop('disabled', true);
    $('#btnsave_edit').hide();
    $('#tipo_edit').next('.select2-container').hide();
    $('#tipo_edit_tags').show();
    $('#movimientos_herramientas').show();
  }

  function habilitarEdicion() {
    $('.habilitar').removeAttr('readonly');
    $('#marca_id_edit').prop('disabled', false);
    $('#tipo_edit').prop('disabled', false);
    $('#btnsave_edit').show();
    $('#tipo_edit').next('.select2-container').show();
    $('#tipo_edit_tags').hide();
    $('#movimientos_herramientas').hide();
  }

  // -------------------------------------------------------
  // Boton Agregar
  // -------------------------------------------------------
  $('#botonAgregar').on('click', function() {
    $('#botonAgregar').attr('disabled', '');
    $('#boxDatos').focus();
    $('#boxDatos').show();
  });

  $('#btnclose').on('click', function() {
    $('#boxDatos').hide(500);
    $('#botonAgregar').removeAttr('disabled');
    $('#formDatos')[0].reset();
  });

  // -------------------------------------------------------
  // Panoles en formulario nuevo (al cambiar establecimiento)
  // -------------------------------------------------------
  $('#esta_id').change(function() {
    wo();
    $('#pano_id').empty();
    var esta_id = $(this).val();
    $.ajax({
      type: 'POST',
      data: {esta_id: esta_id},
      url:  '<?php echo base_url(PAN); ?>Herramienta/obtenerPanoles',
      success: function(result) {
        $('#pano_id').empty();
        var panol = JSON.parse(result);
        var html  = '';
        if (panol == null) {
          html += '<option value="-1" disabled selected>- El Establecimiento no tiene Pañol Asociado -</option>';
        } else {
          html += '<option value="-1" disabled selected>-Seleccione Pañol-</option>';
          $.each(panol, function(i, h) {
            html += "<option data-json='" + JSON.stringify(h) + "' value='" + h.pano_id + "'>" + h.nombre + "</option>";
          });
        }
        $('#pano_id').append(html);
        wc();
      },
      error: function() {
        wc();
        alert('No hay Pañoles asociados a este Establecimiento...');
      }
    });
  });

  // -------------------------------------------------------
  // Panoles en panel de filtros
  // -------------------------------------------------------
  $('#filtro_esta_id').change(function() {
    var esta_id = $(this).val();
    $('#filtro_pano_id').empty().append('<option value="">-- Todos --</option>');
    if (esta_id === '') return;
    $.ajax({
      type: 'POST',
      data: {esta_id: esta_id},
      url:  '<?php echo base_url(PAN); ?>Herramienta/obtenerPanoles',
      success: function(result) {
        var panol = JSON.parse(result);
        if (panol != null) {
          $.each(panol, function(i, h) {
            $('#filtro_pano_id').append("<option value='" + h.pano_id + "'>" + h.nombre + "</option>");
          });
        }
      }
    });
  });

  // -------------------------------------------------------
  // Valida campos obligatorios
  // -------------------------------------------------------
  function validarCampos(form) {
    var ban = true;
    $('#' + form).find('.requerido').each(function() {
      if (this.value === '' || this.value === '-1') {
        ban = false;
        return;
      }
    });
    if (!ban) {
      if (!alertify.errorAlert) {
        alertify.dialog('errorAlert', function factory() {
          return {
            build: function() {
              var errorHeader = '<span class="fa fa-times-circle fa-2x" style="vertical-align:middle;color:#e10000;"></span>Error...!!';
              this.setHeader(errorHeader);
            }
          };
        }, true, 'alert');
      }
      alertify.errorAlert('Por favor complete los campos Obligatorios(*)...');
    }
    return ban;
  }

  // -------------------------------------------------------
  // Guardar / Editar herramienta
  // -------------------------------------------------------

function guardar(operacion) {
    var recurso = '';
    var tiposSeleccionados = $('#tipo').val();

    if (operacion === 'editar') {

        if (!validarCampos('formEdicion')) return;

        var datos = formToObject(new FormData($('#formEdicion')[0]));
        datos.tipo = $('#tipo_edit').val();
        recurso = '<?php echo base_url(PAN); ?>Herramienta/editar';

    } else {

        if (!validarCampos('formHerramientas')) return;

        var datos = formToObject(new FormData($('#formHerramientas')[0]));

        // IMPORTANTE: agregar todos los tipos seleccionados
        datos.tipo = tiposSeleccionados;

        recurso = '<?php echo base_url(PAN); ?>Herramienta/guardar';
    }

    wo();

    $.ajax({
        type: 'POST',
        data: { datos: datos },
        dataType: 'JSON',
        url: recurso,

        success: function(result) {

            var resStr = typeof result === 'object'
                ? JSON.stringify(result)
                : String(result);

            if (
                resStr.indexOf('herramientas_unique') !== -1 ||
                resStr.indexOf('duplicate key value') !== -1
            ) {
                wc();
                alertify.error('El código de herramienta ingresado ya existe.');
                return;
            }

            if (result && result.status !== false && result !== 'false') {
                wc();
                var datosQr = null;

                if (operacion === 'nueva') {
                    datosQr = capturarDatosQrNueva(result);
                }

                finalizarGuardado(operacion, datosQr);
            } else {
                wc();
                alertify.error(
                    'Error al ' +
                    (operacion === 'editar' ? 'editar' : 'guardar') +
                    ' Herramienta'
                );
            }
        },

        error: function() {
            wc();
            alertify.error('Error procesando la solicitud');
        }
    });
}

  // Función auxiliar para resetear UI y refrescar tabla
  function finalizarGuardado(operacion, datosQr) {
    if ($.fn.DataTable.isDataTable('#tabla_herramientas')) {
      $('#tabla_herramientas').DataTable().ajax.reload(null, false);
    } else {
      $("#cargar_tabla").load("<?php echo base_url(PAN); ?>Herramienta/listarHerramientas");
    }
    $('#boxDatos').hide(500);
    $('#formHerramientas')[0].reset();
    $('#tipo').val(null).trigger('change'); // Limpia el Select2 múltiple
    $('#botonAgregar').removeAttr('disabled');
    alertify.success(operacion === 'editar' ? 'Herramienta Editada Exitosamente' : 'Herramienta Agregada con Éxito');

    if (datosQr && datosQr.herrId) {
      abrirModalQRGuardado(datosQr);
    }
  }

  // Captura datos del formulario + herr_id de la respuesta para abrir el QR tras guardar
  function capturarDatosQrNueva(result) {
    var nuevoId = null;
    try {
      var body = typeof result.data === 'string' ? JSON.parse(result.data) : (result || {});
      if (body && body.data && typeof body.data === 'string') {
        body = JSON.parse(body.data);
      }
      nuevoId = (body && body.respuesta && body.respuesta.herr_id)
                || (body && body.herr_id)
                || (body && body.herramienta && body.herramienta.herr_id)
                || (body && body.GeneratedKeys && body.GeneratedKeys.Entry)
                || null;
    } catch (e) {
      nuevoId = null;
    }

    if (!nuevoId) return null;

    var tipos = [];
    var tiposSel = ($('#tipo').val() || []);
    for (var i = 0; i < tiposSel.length; i++) {
      var opt = $('#tipo option[value="' + tiposSel[i] + '"]');
      tipos.push({ text: opt.text(), color: opt.data('color') || '#808080' });
    }

    return {
      herrId: nuevoId,
      codigo: $('#codigo').val(),
      descripcion: $('#descripcion').val(),
      marca: $('#marca option:selected').text(),
      tipos: tipos
    };
  }

  // Abre el modal QR con los datos de la herramienta recien guardada
  function abrirModalQRGuardado(datosQr) {
    if (!$('#contenedorCodigoQr').length) {
      setTimeout(function() { abrirModalQRGuardado(datosQr); }, 300);
      return;
    }

    $("#contenedorCodigoQr").empty();
    $("#infoQrHerramienta").empty();
    $("#tiposQrHerramienta").empty();

    var esc = function(txt) { return $('<div>').text(txt == null ? '' : txt).html(); };

    var config = {};
    config.titulo = "Herramienta_" + (datosQr.codigo || datosQr.herrId);
    config.pixel = <?php echo json_encode(isset($qr_herramienta_pixel) ? $qr_herramienta_pixel : '7'); ?>;
    config.level = <?php echo json_encode(isset($qr_herramienta_level) ? $qr_herramienta_level : 'L'); ?>;
    config.framSize = <?php echo json_encode(isset($qr_herramienta_framsize) ? $qr_herramienta_framsize : '2'); ?>;

    var dataQR = {};
    crearUrlQr(datosQr.herrId).then(function(link) {
      dataQR.link = link;

      $("#infoQrHerramienta").html('<div>'
          + esc(datosQr.codigo) + ' - ' + esc(datosQr.descripcion) + ' - ' + esc(datosQr.marca)
          + '</div>');

      var tiposHtml = '';
      for (var i = 0; i < (datosQr.tipos || []).length; i++) {
        var t = datosQr.tipos[i];
        tiposHtml += '<small class="label" style="'
                     + 'background-color:' + (t.color || '#808080') + ';'
                     + 'color:#000;'
                     + 'display: inline-block;'
                     + 'border-radius:10px;'
                     + 'font-size: 90%;'
                     + 'padding:3px 10px;'
                     + 'margin-right:4px;'
                     + 'margin-bottom:4px;'
                     + '">'
                     + esc(t.text)
                     + '</small>';
      }
      $("#tiposQrHerramienta").html(tiposHtml);

      setDatosQrHerramienta(config, dataQR, 'codigosQR/traz-comp-pan/herramientas');
      verModalImpresionHerramienta();
    }).catch(function() {
      alertify.error("No se pudo generar el link de la herramienta");
    });
  }

  // tipos de herramienta select2 (formulario)
  $('#tipo').select2({
    width: '100%',
    placeholder: 'Seleccione uno o más tipos',
    allowClear: true,

    templateResult: function(tipo) {
        if (!tipo.id) {
            return tipo.text;
        }

        var color = $(tipo.element).data('color') || '#808080';

        return $('<span>')
            .css({
                'background-color': color,
                'color': '#000',
                'padding': '3px 8px',
                'border-radius': '10px',
                'display': 'inline-block'
            })
            .text(tipo.text);
    },

    templateSelection: function(tipo) {
      if (!tipo.id) {
          return tipo.text;
      }

      var color = $(tipo.element).data('color') || '#808080';

      return $('<span>')
          .css({
              'background-color': color,
              'color': '#000',
              'padding': '4px 10px',
              'border-radius': '12px',
              'display': 'inline-block',
              'font-size': '13px',
              'font-weight': 'normal'
          })
          .text(tipo.text);
    }
  });

  // tipos de herramienta select2 (panel de filtros)
  $('#filtro_tipo').select2({
    width: '100%',
    placeholder: 'Todos los tipos',
    allowClear: true,

    templateResult: function(tipo) {
        if (!tipo.id) {
            return tipo.text;
        }

        var color = $(tipo.element).data('color') || '#808080';

        return $('<span>')
            .css({
                'background-color': color,
                'color': '#000',
                'padding': '3px 8px',
                'border-radius': '10px',
                'display': 'inline-block'
            })
            .text(tipo.text);
    },

    templateSelection: function(tipo) {
      if (!tipo.id) {
          return tipo.text;
      }

      var color = $(tipo.element).data('color') || '#808080';

      return $('<span>')
          .css({
              'background-color': color,
              'color': '#000',
              'padding': '4px 10px',
              'border-radius': '12px',
              'display': 'inline-block',
              'font-size': '13px',
              'font-weight': 'normal'
          })
          .text(tipo.text);
    }
  });

  // tipos de herramienta select2 (formulario de edición)
  $('#tipo_edit').select2({
    width: '100%',
    placeholder: 'Seleccione uno o más tipos',
    allowClear: true,

    templateResult: function(tipo) {
        if (!tipo.id) {
            return tipo.text;
        }

        var color = $(tipo.element).data('color') || '#808080';

        return $('<span>')
            .css({
                'background-color': color,
                'color': '#000',
                'padding': '3px 8px',
                'border-radius': '10px',
                'display': 'inline-block'
            })
            .text(tipo.text);
    },

    templateSelection: function(tipo) {
      if (!tipo.id) {
          return tipo.text;
      }

      var color = $(tipo.element).data('color') || '#808080';

      return $('<span>')
          .css({
              'background-color': color,
              'color': '#000',
              'padding': '4px 10px',
              'border-radius': '12px',
              'display': 'inline-block',
              'font-size': '13px',
              'font-weight': 'normal'
          })
          .text(tipo.text);
    }
  });

  // Marca en formulario de edición
  $('#marca_id_edit').select2({
    width: '100%',
    placeholder: '-Seleccione opcion-',
    allowClear: true
  });

  // -------------------------------------------------------
  // DataTable de Trazabilidad (movimientos de la herramienta)
  // -------------------------------------------------------
  var tablaTrazabilidad = null;

  // Función auxiliar para armar el encabezado con los datos reales del modal
  function obtenerInfoHerramienta() {
    var f = new Date();
    var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();

    var codigo  = ($('#codigo_edit').val() || '').trim();
    var descrip = ($('#descripcion_edit').val() || '').trim();
    var modelo  = ($('#modelo_edit').val() || '').trim();
    var marca   = $('#marca_id_edit option:selected').val() ? $('#marca_id_edit option:selected').text().trim() : '';

    return "Código: " + codigo + " | Descripción: " + descrip + "\n" +
           "Modelo: " + modelo + " | Marca: " + marca + "\n" +
           "Fecha de reporte: " + fecha;
  }

 function cargarTablaTrazabilidad() {
  // Si ya existe, destruir para reinicializar con nuevo herr_id
  if (tablaTrazabilidad !== null) {
    tablaTrazabilidad.destroy();
    $('#tabla_trazabilidad tbody').empty();
  }

  tablaTrazabilidad = $('#tabla_trazabilidad').DataTable({
    "processing": true,
    "serverSide": true,
    "ajax": {
      "url": "<?php echo base_url(PAN) ?>Herramienta/listarMovimientosHerramientaPaginados",
      "type": "POST",
      "data": function (d) {
        d.herr_id = herr_id_modal;
      }
    },
    "columns": [
      {
        "data": "nro_vale",
        "render": function (data, type, row) {
          var tipo = (row.tipo_movimiento || '').toUpperCase().trim();
          if ((tipo === 'ENTRADA' || tipo === 'SALIDA') && data) {
            return '<i class="fa fa-print text-light-blue" style="cursor: pointer; margin: 3px;" title="Imprimir Vale" onclick="imprimirVale(\'' + data + '\', \'' + tipo + '\')"></i>';
          }
          return '';
        },
        "orderable": false
      },
      { "data": "nro_vale", "orderable": false },
      { "data": "tipo_movimiento", "orderable": false },
      { "data": "fecha_hora" },
      { "data": "responsable", "orderable": false },
      { "data": "establecimiento_panol", "orderable": false },
      { "data": "justificacion_observacion", "orderable": false }
    ],
    "order": [[2, "desc"]],
    "pageLength": 10,
    "lengthMenu": [5, 10, 25, 50],
    dom: 'lBfrtip',
    buttons: [
      // --- BOTÓN EXCEL ---
      {
        extend: 'excel',
        exportOptions: { columns: [1, 2, 3, 4, 5, 6] },
        footer: true,
        title: 'Trazabilidad Herramienta',
        filename: 'Trazabilidad_Herramienta',
        className: 'btn btn-success btn-flat ml-1',
        text: 'Exportar a Excel <i class="fa fa-file-excel-o"></i>',
        action: function (e, dt, button, config) {
          var self = this;
          var oldLength = dt.page.len();
          dt.page.len(1000000);
          dt.one('draw', function () {
            $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config);
            setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
          });
          dt.draw();
        },
        messageTop: function () {
          return obtenerInfoHerramienta();
        }
      },
      // --- BOTÓN PDF ---
      {
        extend: 'pdf',
        orientation: 'landscape',
        pageSize: 'A4',
        exportOptions: { columns: [1, 2, 3, 4, 5, 6] },
        footer: true,
        title: 'Trazabilidad Herramienta',
        filename: 'Trazabilidad_Herramienta',
        className: 'btn btn-danger btn-flat ml-1',
        text: 'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',
        action: function (e, dt, button, config) {
          var self = this;
          var oldLength = dt.page.len();
          dt.page.len(1000000);
          dt.one('draw', function () {
            $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config);
            setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
          });
          dt.draw();
        },
        messageTop: function () {
          return obtenerInfoHerramienta();
        },
        customize: function (doc) {
          var title = doc.content[0].text;
          doc.content.splice(0, 1);
          var headerColumns = [{
            text: title,
            fontSize: 20,
            bold: true,
            alignment: 'left',
            margin: [0, 5, 0, 0]
          }];
          <?php if (!empty($logo)) { ?>
          headerColumns.push({
            image: '<?php echo $logo; ?>',
            width: 100,
            alignment: 'right',
            margin: [0, 0, 0, 0]
          });
          <?php } ?>
          doc.content.splice(0, 0, { columns: headerColumns, margin: [0, 0, 0, 15] });
          doc.content[1].alignment = 'left';
          doc.content[1].margin = [0, 0, 0, 10];
          doc.content[1].fontSize = 9;
          doc.defaultStyle.fontSize = 9;
          doc.styles.tableHeader.fillColor = '#dd4b39';
          doc.styles.tableHeader.color = 'white';
          doc.styles.tableHeader.alignment = 'center';
          doc.styles.tableHeader.fontSize = 10;
        }
      },
      // --- BOTÓN COPIAR ---
      {
        extend: 'copy',
        exportOptions: { columns: [1, 2, 3, 4, 5, 6] },
        footer: true,
        title: 'Trazabilidad Herramienta',
        className: 'btn btn-primary btn-flat ml-1',
        text: 'Copiar <i class="fa fa-file-text-o"></i>',
        action: function (e, dt, button, config) {
          var self = this;
          var oldLength = dt.page.len();
          dt.page.len(1000000);
          dt.one('draw', function () {
            $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
            setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
          });
          dt.draw();
        },
        messageTop: function () {
          return obtenerInfoHerramienta();
        }
      },
      // --- BOTÓN IMPRIMIR ---
      {
        extend: 'print',
        exportOptions: { columns: [1, 2, 3, 4, 5, 6] },
        footer: true,
        title: 'Trazabilidad Herramienta',
        className: 'btn btn-default btn-flat ml-1',
        text: 'Imprimir <i class="fa fa-print"></i>',
        action: function (e, dt, button, config) {
          var self = this;
          var oldLength = dt.page.len();
          dt.page.len(1000000);
          dt.one('draw', function () {
            $.fn.dataTable.ext.buttons.print.action.call(self, e, dt, button, config);
            setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
          });
          dt.draw();
        },
        messageTop: function () {
          return obtenerInfoHerramienta();
        },
        customize: function (win) {
          $(win.document.head).find('link[href=""], link[href="#"], link:not([href])').remove();
          $(win.document.head).find('script[src=""], script[src="#"]').remove();
          $(win.document.body).find('h1').remove();
          
          var f = new Date();
          var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();
          var codigo  = ($('#codigo_edit').val() || '').trim();
          var descrip = ($('#descripcion_edit').val() || '').trim();
          var modelo  = ($('#modelo_edit').val() || '').trim();
          var marca   = $('#marca_id_edit option:selected').val() ? $('#marca_id_edit option:selected').text().trim() : '';

          var cabecera = '<div style="margin-bottom: 20px; border-bottom: 2px solid #dd4b39; padding-bottom: 10px;">' +
                         '  <h1 style="margin: 0 0 10px 0; font-size: 20pt; font-weight: bold; color: #333;">Trazabilidad Herramienta</h1>' +
                         '  <div style="font-size: 10pt; color: #555; line-height: 1.5;">' +
                         '    <b>Código:</b> ' + codigo + ' &nbsp;|&nbsp; <b>Descripción:</b> ' + descrip + '<br>' +
                         '    <b>Modelo:</b> ' + modelo + ' &nbsp;|&nbsp; <b>Marca:</b> ' + marca + '<br>' +
                         '    <b>Fecha de reporte:</b> ' + fecha +
                         '  </div>' +
                         '</div>';
                         
          $(win.document.body).prepend(cabecera);
          $(win.document.body).css('font-size', '9pt');
          $(win.document.body).find('table').addClass('compact').css('font-size', '9pt').css('width', '100%');
          $(win.document.body).find('th').css({ 'background-color': '#dd4b39', 'color': 'white', 'text-align': 'center', 'font-size': '10pt', 'padding': '8px' });
        }
      }
    ]
  });
 }

  // -------------------------------------------------------
  // DataTable de Checklists
  // -------------------------------------------------------
  var tablaChecklists = null;

  function cargarTablaChecklists() {
    if (tablaChecklists !== null) {
      tablaChecklists.destroy();
      $('#tabla_checklists tbody').empty();
    }

    tablaChecklists = $('#tabla_checklists').DataTable({
      "processing": true,
      "serverSide": true,
      "ajax": {
        "url": "<?php echo base_url(PAN) ?>Herramienta/listarChecklistsHerramientaPaginados",
        "type": "POST",
        "data": function (d) {
          d.herr_id = herr_id_modal;
        }
      },
      "columns": [
        {
          "data": "info_id",
          "render": function(data, type, row) {
             if(data) {
                 return '<i class="fa fa-search text-light-blue btnInfoDinamico" data-info="' + data + '" style="cursor: pointer;margin: 3px;" title="Ver Formulario"></i>';
             }
             return '';
          },
          "orderable": false
        },
        { "data": "fecha_hora" },
        { 
          "data": "responsable",
          "render": function(data, type, row) {
             var res = row.responsable_nombre || data || '';
             var usu = row.username ? " (" + row.username + ")" : "";
             return res + usu;
          }
        }
      ],
      "order": [[1, "desc"]],
      "pageLength": 10,
      "lengthMenu": [5, 10, 25, 50],
      dom: 'lBfrtip',
      buttons: [
        // --- BOTÓN EXCEL ---
        {
          extend: 'excel',
          exportOptions: { columns: [1, 2] },
          footer: true,
          title: 'Checklists Herramienta',
          filename: 'Checklists_Herramienta',
          className: 'btn btn-success btn-flat ml-1',
          text: 'Exportar a Excel <i class="fa fa-file-excel-o"></i>',
          action: function (e, dt, button, config) {
            var self = this;
            var oldLength = dt.page.len();
            dt.page.len(1000000);
            dt.one('draw', function () {
              $.fn.dataTable.ext.buttons.excelHtml5.action.call(self, e, dt, button, config);
              setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
            });
            dt.draw();
          },
          messageTop: function () {
            return obtenerInfoHerramienta();
          }
        },
        // --- BOTÓN PDF ---
        {
          extend: 'pdf',
          orientation: 'landscape',
          pageSize: 'A4',
          exportOptions: { columns: [1, 2] },
          footer: true,
          title: 'Checklists Herramienta',
          filename: 'Checklists_Herramienta',
          className: 'btn btn-danger btn-flat ml-1',
          text: 'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',
          action: function (e, dt, button, config) {
            var self = this;
            var oldLength = dt.page.len();
            dt.page.len(1000000);
            dt.one('draw', function () {
              $.fn.dataTable.ext.buttons.pdfHtml5.action.call(self, e, dt, button, config);
              setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
            });
            dt.draw();
          },
          messageTop: function () {
            return obtenerInfoHerramienta();
          },
          customize: function (doc) {
            var title = doc.content[0].text;
            doc.content.splice(0, 1);
            var headerColumns = [{
              text: title,
              fontSize: 20,
              bold: true,
              alignment: 'left',
              margin: [0, 5, 0, 0]
            }];
            <?php if (!empty($logo)) { ?>
            headerColumns.push({
              image: '<?php echo $logo; ?>',
              width: 100,
              alignment: 'right',
              margin: [0, 0, 0, 0]
            });
            <?php } ?>
            doc.content.splice(0, 0, { columns: headerColumns, margin: [0, 0, 0, 15] });
            doc.content[1].alignment = 'left';
            doc.content[1].margin = [0, 0, 0, 10];
            doc.content[1].fontSize = 9;
            doc.defaultStyle.fontSize = 9;
            doc.styles.tableHeader.fillColor = '#dd4b39';
            doc.styles.tableHeader.color = 'white';
            doc.styles.tableHeader.alignment = 'center';
            doc.styles.tableHeader.fontSize = 10;
          }
        },
        // --- BOTÓN COPIAR ---
        {
          extend: 'copy',
          exportOptions: { columns: [1, 2] },
          footer: true,
          title: 'Checklists Herramienta',
          className: 'btn btn-primary btn-flat ml-1',
          text: 'Copiar <i class="fa fa-file-text-o"></i>',
          action: function (e, dt, button, config) {
            var self = this;
            var oldLength = dt.page.len();
            dt.page.len(1000000);
            dt.one('draw', function () {
              $.fn.dataTable.ext.buttons.copyHtml5.action.call(self, e, dt, button, config);
              setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
            });
            dt.draw();
          },
          messageTop: function () {
            return obtenerInfoHerramienta();
          }
        },
        // --- BOTÓN IMPRIMIR ---
        {
          extend: 'print',
          exportOptions: { columns: [1, 2] },
          footer: true,
          title: 'Checklists Herramienta',
          className: 'btn btn-default btn-flat ml-1',
          text: 'Imprimir <i class="fa fa-print"></i>',
          action: function (e, dt, button, config) {
            var self = this;
            var oldLength = dt.page.len();
            dt.page.len(1000000);
            dt.one('draw', function () {
              $.fn.dataTable.ext.buttons.print.action.call(self, e, dt, button, config);
              setTimeout(function() { dt.page.len(oldLength).draw(); }, 100);
            });
            dt.draw();
          },
          messageTop: function () {
            return obtenerInfoHerramienta();
          },
          customize: function (win) {
            $(win.document.head).find('link[href=""], link[href="#"], link:not([href])').remove();
            $(win.document.head).find('script[src=""], script[src="#"]').remove();
            $(win.document.body).find('h1').remove();

            var f = new Date();
            var fecha = (f.getDate() < 10 ? '0' : '') + f.getDate() + "/" + ((f.getMonth() + 1) < 10 ? '0' : '') + (f.getMonth() + 1) + "/" + f.getFullYear();
            var codigo  = ($('#codigo_edit').val() || '').trim();
            var descrip = ($('#descripcion_edit').val() || '').trim();
            var modelo  = ($('#modelo_edit').val() || '').trim();
            var marca   = $('#marca_id_edit option:selected').val() ? $('#marca_id_edit option:selected').text().trim() : '';

            var cabecera = '<div style="margin-bottom: 20px; border-bottom: 2px solid #dd4b39; padding-bottom: 10px;">' +
                           '  <h1 style="margin: 0 0 10px 0; font-size: 20pt; font-weight: bold; color: #333;">Checklists Herramienta</h1>' +
                           '  <div style="font-size: 10pt; color: #555; line-height: 1.5;">' +
                           '    <b>Código:</b> ' + codigo + ' &nbsp;|&nbsp; <b>Descripción:</b> ' + descrip + '<br>' +
                           '    <b>Modelo:</b> ' + modelo + ' &nbsp;|&nbsp; <b>Marca:</b> ' + marca + '<br>' +
                           '    <b>Fecha de reporte:</b> ' + fecha +
                           '  </div>' +
                           '</div>';

            $(win.document.body).prepend(cabecera);
            $(win.document.body).css('font-size', '9pt');
            $(win.document.body).find('table').addClass('compact').css('font-size', '9pt').css('width', '100%');
            $(win.document.body).find('th').css({ 'background-color': '#dd4b39', 'color': 'white', 'text-align': 'center', 'font-size': '10pt', 'padding': '8px' });
          }
        }
      ],
      "drawCallback": function() {
        $("#tabla_checklists tbody").off("click", ".btnInfoDinamico").on("click", ".btnInfoDinamico", function() {
          var info_id = $(this).data("info");
          var rowData = tablaChecklists.row($(this).closest("tr")).data();
          verInfoDinamico(info_id, rowData);
        });
      }
    });
  }

  // -------------------------------------------------------
  // Ver Formulario de un Checklist (modo solo lectura)
  // -------------------------------------------------------
  function verInfoDinamico(info_id, rowData) {
    if (!info_id) {
      alertify.error("El checklist no tiene formulario asociado.");
      return;
    }
    rowData = rowData || {};

    // Modo vista: titulo, ocultar guardar, deshabilitar campos
    $("#modalchecklist #myModalLabel").find("#modalAction")
      .removeClass("fa-check-square-o").addClass("fa-search");
    $("#modalchecklist #myModalLabel").contents().filter(function() {
      return this.nodeType === 3;
    }).first().replaceWith(" Ver Checklist");

    var btnGuardar = $("#modalchecklist .btn-primary").filter(function() {
      return $(this).attr("onclick") && $(this).attr("onclick").indexOf("guardarChecklist") !== -1;
    });
    btnGuardar.hide();
    $("#btnImprimirChecklist").show();

    // Fecha y responsable desde la fila de la tabla
    var fechaStr = rowData.fecha_hora || "";
    var fechaIso = "";
    var match = String(fechaStr).match(/^(\d{2})-(\d{2})-(\d{4})\s(\d{2}):(\d{2})/);
    if (match) {
      fechaIso = match[3] + "-" + match[2] + "-" + match[1] + "T" + match[4] + ":" + match[5];
    } else {
      fechaIso = fechaStr;
    }
    $("#fecha_hora_checklist").val(fechaIso);
    var respons = rowData.responsable_nombre || rowData.responsable || '';
    respons += rowData.username ? " (" + rowData.username + ")" : "";
    $("#responsable_checklist").val(respons);

    // Form dinamico: limpiar y deshabilitar
    var $formDin = $("#form-dinamico form");
    if (typeof frmReset === "function") {
      frmReset("#form-dinamico form");
    }
    $formDin.find("input, select, textarea, button").prop("disabled", true);

    $("#modalchecklist").modal("show");

    // Cargar datos del form dinamico por info_id
    wo();
    $.ajax({
      type: "POST",
      dataType: "JSON",
      url: "<?php echo base_url(PAN) ?>Herramienta/verChecklist",
      data: { info_id: info_id },
      success: function(resp) {
        wc();
        if (resp && resp.status && resp.data && resp.data.length) {
          llenarItemsChecklist(resp.data, $("#form-dinamico form"));
        } else {
          alertify.error("No se encontraron datos del formulario.");
        }
      },
      error: function() {
        wc();
        alertify.error("Error al obtener los datos del formulario.");
      }
    });
  }

  // -------------------------------------------------------
  // Rellena los items del form dinámico según su tipo de dato
  // (no usa fillForm: rompe con textarea/check/radio)
  // -------------------------------------------------------
  function llenarItemsChecklist(items, $form) {
    var checksPorName = {};

    $.each(items || [], function(i, item) {
      if (!item || !item.name) return;
      var name  = item.name;
      var valor = (item.valor == null ? '' : String(item.valor));
      var tipo  = String(item.tipo_dato || '').toUpperCase();

      // Checks: puede haber una fila por valor seleccionado (mismo name)
      if (tipo === 'CHECK') {
        if (!checksPorName[name]) checksPorName[name] = [];
        checksPorName[name].push(valor);
        return;
      }

      // Radios: el input se renderiza con name = "empresa-valo_id",
      // se ubica el grupo por el label del item
      if (tipo === 'RADIO') {
        var $grupo = $form.find('.form-group').filter(function() {
          return $.trim($(this).children('label').first().text()).indexOf(item.label) !== -1;
        }).first();
        if (!$grupo.length) return;
        $grupo.find('input[type="radio"][value="' + valor + '"]').prop('checked', true);
        return;
      }

      // Selects (incluye service / urlConsultor / urlEvaluador)
      if (tipo === 'SELECT' || tipo === 'SERVICE' || tipo === 'URLCONSULTOR' || tipo === 'URLEVALUADOR') {
        $form.find('select[name="' + name + '"]').val(valor).trigger('change');
        return;
      }

      // Resto (input, date, number, textarea, etc.)
      var $el = $form.find('[name="' + name + '"]').first();
      if (!$el.length) return;
      if ($el.prop('tagName').toLowerCase() === 'input' &&
          ($el.attr('type') === 'file' || $el.attr('type') === 'image')) return;
      $el.val(valor);
    });

    // Rellenar checkboxes agrupados
    $.each(checksPorName, function(name, valores) {
      $form.find('input[type="checkbox"][name="' + name + '[]"]').each(function() {
        if (valores.indexOf(String(this.value)) !== -1) {
          this.checked = true;
          if ($(this).data('icheck')) $(this).iCheck('update');
        }
      });
    });
  }



  // -------------------------------------------------------
  // Imprimir vale desde trazabilidad
  // -------------------------------------------------------
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
  function cargarTablaCertificaciones() {
    if ($.fn.DataTable.isDataTable('#tabla_certificaciones')) {
      $('#tabla_certificaciones').DataTable().ajax.reload();
      return;
    }

    $('#tabla_certificaciones').DataTable({
      "processing": true,
      "serverSide": true,
      "ajax": {
        "url": "<?php echo base_url(PAN) ?>Herramienta/listarCertificacionesHerramientaPaginadas",
        "type": "POST",
        "data": function (d) {
          d.herr_id = herr_id_modal;
        }
      },
      "columns": [
        { "data": "fecha_hora" },
        { "data": "fec_vencimiento" },
        { "data": "entidad_nombre" },
        { 
          "data": "adjunto",
          "render": function (data, type, row, meta) {
            if (data && data !== '') {
              var icono = mimeToIcon(data);
              return '<a href="javascript:void(0)" class="btn-ver-adjunto" data-row-index="' + meta.row + '" title="Ver Adjunto"><i class="fa ' + icono + ' text-primary" style="font-size: 20px;"></i></a>';
            }
            return '-';
          },
          "orderable": false
        }
      ],
      "order": [[0, "desc"]],
      dom: 'lBfrtip',
      buttons: [
        // --- BOTÓN EXCEL ---
        {
          extend: 'excel',
          exportOptions: { columns: [0, 1, 2] },
          footer: true,
          title: 'Certificaciones_Herramienta',
          filename: 'Certificaciones_Herramienta',
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
        // --- BOTÓN PDF ---
        {
          extend: 'pdf',
          orientation: 'landscape',
          pageSize: 'A4',
          exportOptions: { columns: [0, 1, 2] },
          footer: true,
          title: 'Certificaciones_Herramienta',
          filename: 'Certificaciones_Herramienta',
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
            var title = doc.content[0].text;
            doc.content.splice(0, 1);
            var headerColumns = [
              {
                text: title,
                fontSize: 22,
                bold: true,
                alignment: 'left',
                margin: [0, 10, 0, 0]
              }
            ];
            doc.content.splice(0, 0, {
              columns: headerColumns,
              margin: [0, 0, 0, 20]
            });
            doc.content[1].alignment = 'left';
            doc.content[1].margin = [0, 0, 0, 10];
            doc.defaultStyle.fontSize = 9;
            doc.styles.tableHeader.fillColor = '#dd4b39';
            doc.styles.tableHeader.color = 'white';
            doc.styles.tableHeader.alignment = 'center';
            doc.styles.tableHeader.fontSize = 10;
          }
        },
        // --- BOTÓN COPIAR ---
        {
          extend: 'copy',
          exportOptions: { columns: [0, 1, 2] },
          footer: true,
          title: 'Certificaciones_Herramienta',
          filename: 'Certificaciones_Herramienta',
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
        // --- BOTÓN IMPRIMIR ---
        {
          extend: 'print',
          exportOptions: { columns: [0, 1, 2] },
          footer: true,
          title: 'Certificaciones_Herramienta',
          filename: 'Certificaciones_Herramienta',
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
            $(win.document.head).find('link[href=""], link[href="#"], link:not([href])').remove();
            $(win.document.head).find('script[src=""], script[src="#"]').remove();
            $(win.document.body).find('tr[data-json]').removeAttr('data-json');
            $(win.document.body).find('h1').remove();
            var cabecera = '<div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; border-bottom: 2px solid #dd4b39; padding-bottom: 10px;">' +
                           '  <h1 style="margin: 0; font-size: 22pt; font-weight: bold; color: #333;">Certificaciones_Herramienta</h1>' +
                           '</div>';
            $(win.document.body).prepend(cabecera);
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
      ]
    });
  }

  // -------------------------------------------------------
  // Convierte base64 a Blob (necesario para que Chrome
  // pueda descargar y previsualizar archivos grandes)
  // -------------------------------------------------------
  function base64ToBlob(b64Data, contentType) {
    contentType = contentType || '';
    var byteCharacters = atob(b64Data);
    var byteArrays = [];
    for (var offset = 0; offset < byteCharacters.length; offset += 512) {
      var slice = byteCharacters.slice(offset, offset + 512);
      var byteNumbers = new Array(slice.length);
      for (var i = 0; i < slice.length; i++) {
        byteNumbers[i] = slice.charCodeAt(i);
      }
      byteArrays.push(new Uint8Array(byteNumbers));
    }
    return new Blob(byteArrays, { type: contentType });
  }

  // -------------------------------------------------------
  // Normaliza un adjunto de certificación.
  // Soporta: Data URI (data:mime;base64,..), base64 de un Data URI
  // (WSO2 devuelve el bytea codificado) y bytea hex de Postgres (\x..).
  // Retorna { b64, mime, nombre }
  // -------------------------------------------------------
  function adjuntoNormalize(r) {
    if (!r.mime) {
      var ext = r.nombre.split('.').pop().toLowerCase();
      var mimeMap = {
        jpg: 'image/jpeg', jpeg: 'image/jpeg', jfif: 'image/jpeg',
        png: 'image/png', webp: 'image/webp', gif: 'image/gif',
        pdf: 'application/pdf',
        doc: 'application/msword',
        docx: 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        xls: 'application/vnd.ms-excel',
        xlsx: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        txt: 'text/plain', csv: 'text/csv'
      };
      r.mime = mimeMap[ext] || 'application/octet-stream';
    }
    var extFromMime = { 'image/jpeg': 'jpg', 'image/png': 'png', 'image/webp': 'webp', 'image/gif': 'gif', 'application/pdf': 'pdf' };
    if (r.nombre.indexOf('.') === -1 && extFromMime[r.mime]) r.nombre += '.' + extFromMime[r.mime];
    return r;
  }

  function parseAdjunto(adjunto, adjuntoNombre) {
    var nombre = adjuntoNombre || 'adjunto';
    var raw = String(adjunto || '').trim();
    var r = { b64: '', mime: '', nombre: nombre };

    // bytea hex de PostgreSQL (\x....)
    if (raw.indexOf('\\x') === 0) {
      var hex = raw.substring(2).replace(/\s+/g, '');
      var texto = '';
      for (var i = 0; i < hex.length; i += 2) {
        var b = parseInt(hex.substr(i, 2), 16);
        if (!isNaN(b)) texto += String.fromCharCode(b);
      }
      return parseAdjunto(texto, nombre);
    }

    // Data URI directo: data:mime;base64,<b64>
    if (raw.indexOf('data:') === 0) {
      var semi = raw.indexOf(';');
      if (semi > 5) r.mime = raw.substring(5, semi);
      var comma = raw.indexOf(',');
      r.b64 = (comma !== -1 ? raw.substring(comma + 1) : raw).replace(/\s+/g, '');
      return adjuntoNormalize(r);
    }

    // base64 de un Data URI (WSO2 devuelve el bytea codificado en base64)
    var decoded = null;
    try { decoded = atob(raw.replace(/\s+/g, '')); } catch (e) {}
    if (decoded && (decoded.indexOf('data:') === 0 || decoded.indexOf('\\x') === 0)) {
      return parseAdjunto(decoded, nombre);
    }

    // base64 puro del archivo
    r.b64 = raw.replace(/\s+/g, '');
    return adjuntoNormalize(r);
  }

  function mimeToIcon(data) {
    if (!data || data === '') return '';
    var mime = parseAdjunto(data, '').mime;
    if (mime.indexOf('image/') === 0) return 'fa-file-image-o';
    if (mime === 'application/pdf') return 'fa-file-pdf-o';
    if (mime.indexOf('video/') === 0) return 'fa-file-video-o';
    if (mime.indexOf('audio/') === 0) return 'fa-file-audio-o';
    if (mime !== 'application/octet-stream') return 'fa-file-o';
    return 'fa-file-text-o';
  }

  // -------------------------------------------------------
  // Abrir Modal de Adjunto
  // -------------------------------------------------------
  // Delegamos el click para los botones generados por DataTable
  $('#tabla_certificaciones').on('click', '.btn-ver-adjunto', function () {
    var table = $('#tabla_certificaciones').DataTable();
    var rowIndex = $(this).data('row-index');
    var rowData = table.row(rowIndex).data();
    if (!rowData || !rowData.adjunto) return;

var infoAdj = parseAdjunto(rowData.adjunto, rowData.adjunto_nombre);
    var b64 = infoAdj.b64;
    var mimeType = infoAdj.mime;
    var nombreArchivo = infoAdj.nombre;

    var blob;
    try {
      blob = base64ToBlob(b64, mimeType);
    } catch (e) {
      alertify.error('No se pudo leer el adjunto.');
      return;
    }
        var blobUrl = URL.createObjectURL(blob);

        $('#btn-descargar-adjunto').attr('href', blobUrl).attr('download', nombreArchivo);

        var previewContainer = $('#preview-adjunto');
        previewContainer.empty();

        if (mimeType.indexOf('image') !== -1) {
          previewContainer.append('<img src="' + blobUrl + '" style="max-width: 100%; height: auto; border: 1px solid #ddd; border-radius: 4px;" />');
        } else if (mimeType === 'application/pdf') {
          previewContainer.append('<iframe src="' + blobUrl + '" width="100%" height="500px" style="border: 1px solid #ddd;"></iframe>');
        } else {
          previewContainer.append('<p><i class="fa fa-file-text-o fa-5x text-muted"></i></p><p>No hay previsualización disponible para este tipo de archivo.<br>Use el botón de descarga.</p>');
        }

        $('#modal-adjunto').modal('show');
  });

  // Limpiar el blobUrl al cerrar el modal para liberar memoria
  $('#modal-adjunto').on('hidden.bs.modal', function () {
    var href = $('#btn-descargar-adjunto').attr('href');
    if (href && href.indexOf('blob:') === 0) {
      URL.revokeObjectURL(href);
    }
    $('#preview-adjunto').empty();
    $('#btn-descargar-adjunto').attr('href', '#').removeAttr('download');
  });
</script>
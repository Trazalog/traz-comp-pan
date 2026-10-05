<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TRAZALOG | TOOLS</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<?php echo base_url();?>lib/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>lib/bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>lib/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="<?php echo base_url();?>lib/dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="<?php echo base_url()?>lib/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700">
    <!-- jQuery -->
    <script src="<?php echo base_url();?>lib/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="<?php echo base_url();?>lib/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- DataTables + Buttons -->
    <script src="<?php echo base_url() ?>lib/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables1/Buttons-1.6.1/js/dataTables.buttons.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables1/Buttons-1.6.1/js/buttons.html5.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables1/Buttons-1.6.1/js/buttons.print.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables.net-bs/extensions/Buttons/js/jszip.min.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables.net-bs/extensions/Buttons/js/pdfmake.min.js"></script>
    <script src="<?php echo base_url() ?>lib/bower_components/datatables.net-bs/extensions/Buttons/js/vfs_fonts.js"></script>
</head>
<body class="hold-transition skin-red">
<?php
    $h = isset($herramienta) ? $herramienta : null;
    $movimientos    = isset($movimientos)    ? $movimientos    : [];
    $certificaciones = isset($certificaciones) ? $certificaciones : [];
    $checklists     = isset($checklists)     ? $checklists     : [];

    $val = function ($v) {
        return (isset($v) && $v !== null && $v !== '') ? htmlspecialchars($v, ENT_QUOTES, 'UTF-8') : '-';
    };

    // Tags de tipo con color (misma logica que el modal de la lupa: tipoHerramienta | colorTipo por "-")
    $htmlTags = '';
    if ($h) {
        $tipoH   = isset($h->tipoHerramienta) ? $h->tipoHerramienta : (isset($h->tipo) ? $h->tipo : '');
        $tipos   = array_values(array_filter(explode('-', (string)$tipoH), function ($t) { return $t !== ''; }));
        $colores = array_values(array_filter(explode('-', (string)(isset($h->colorTipo) ? $h->colorTipo : '')), function ($c) { return $c !== ''; }));
        foreach ($tipos as $i => $nombre) {
            $color = isset($colores[$i]) && $colores[$i] !== '' ? $colores[$i] : '#808080';
            $htmlTags .= '<small class="label pull-left" style="background-color:' . $color . ';'
                       . 'color:#000;display:inline-block;border-radius:10px;font-size:90%;'
                       . 'padding:3px 10px;margin-right:4px;margin-bottom:4px;">'
                       . htmlspecialchars($nombre, ENT_QUOTES, 'UTF-8')
                       . '</small>';
        }
    }

    $infoCode = $h ? (isset($h->codigo)     ? $h->codigo     : '') : '';
    $infoDesc = $h ? (isset($h->descripcion)? $h->descripcion: '') : '';
    $infoMod  = $h ? (isset($h->modelo)     ? $h->modelo     : '') : '';
    $infoMarc = $h ? (isset($h->marca)      ? $h->marca      : '') : '';
?>
<div class="container" style="max-width: 960px; margin-top: 24px;">

    <?php if (!$h): ?>
        <div class="box box-primary">
            <div class="box-body">
                <div class="alert alert-warning" style="margin: 0;">
                    <i class="fa fa-exclamation-triangle"></i> No se encontró la herramienta solicitada.
                </div>
            </div>
        </div>
    <?php else: ?>

    <script>
        // Datos embebidos server-side (sin AJAX ni sesion)
        var MOVIMIENTOS     = <?php echo json_encode($movimientos, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP); ?>;
        var CERTIFICACIONES = <?php echo json_encode($certificaciones, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP); ?>;
        var CHECKLISTS      = <?php echo json_encode($checklists, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP); ?>;
        var CHECKLIST_DETALLES = <?php echo json_encode($checklist_detalles, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP); ?>;

        var INFO_CODE  = <?php echo json_encode($infoCode, JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
        var INFO_DESC  = <?php echo json_encode($infoDesc, JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
        var INFO_MODEL = <?php echo json_encode($infoMod, JSON_HEX_APOS | JSON_HEX_QUOT); ?>;
        var INFO_MARCA = <?php echo json_encode($infoMarc, JSON_HEX_APOS | JSON_HEX_QUOT); ?>;

        function obtenerInfoHerramienta() {
            return 'Código: ' + INFO_CODE + ' | Descripción: ' + INFO_DESC + ' | Modelo: ' + INFO_MODEL + ' | Marca: ' + INFO_MARCA;
        }

        // Fabrica de botones de exportacion (igual a las tablas del modal de la lupa)
        function btnExport(ext, classBtn, label, title, filename, cols) {
            var conf = {
                extend: ext,
                exportOptions: { columns: cols },
                footer: true,
                title: title,
                filename: filename,
                className: classBtn,
                text: label,
                action: function (e, dt, button, config) {
                    var self = this;
                    var oldLength = dt.page.len();
                    dt.page.len(1000000);
                    dt.one('draw', function () {
                        $.fn.dataTable.ext.buttons[ext + 'Html5'].action.call(self, e, dt, button, config);
                        setTimeout(function () { dt.page.len(oldLength).draw(); }, 100);
                    });
                    dt.draw();
                },
                messageTop: function () {
                    return obtenerInfoHerramienta();
                }
            };

            if (ext === 'pdf') {
                conf.orientation = 'landscape';
                conf.pageSize = 'A4';
                conf.customize = function (doc) {
                    var titulo = doc.content[0].text;
                    doc.content.splice(0, 1);
                    var headerColumns = [{ text: titulo, fontSize: 20, bold: true, alignment: 'left', margin: [0, 5, 0, 0] }];
                    doc.content.splice(0, 0, { columns: headerColumns, margin: [0, 0, 0, 15] });
                    doc.content[1].alignment = 'left';
                    doc.content[1].margin = [0, 0, 0, 10];
                    doc.content[1].fontSize = 9;
                    doc.defaultStyle.fontSize = 9;
                    doc.styles.tableHeader.fillColor = '#dd4b39';
                    doc.styles.tableHeader.color = 'white';
                    doc.styles.tableHeader.alignment = 'center';
                    doc.styles.tableHeader.fontSize = 10;
                };
            } else if (ext === 'print') {
                conf.customize = function (win) {
                    $(win.document.head).find('link[href=""], link[href="#"], link:not([href])').remove();
                    $(win.document.head).find('script[src=""], script[src="#"]').remove();
                    $(win.document.body).find('h1').remove();
                    var cabecera = '<div style="margin-bottom:20px;border-bottom:2px solid #dd4b39;padding-bottom:10px;">' +
                                   '  <h1 style="margin:0 0 10px;font-size:20pt;font-weight:bold;color:#333;">' + title + '</h1>' +
                                   '  <div style="font-size:10pt;color:#555;line-height:1.5;">' + obtenerInfoHerramienta() + '</div>' +
                                   '</div>';
                    $(win.document.body).prepend(cabecera);
                    $(win.document.body).css('font-size', '9pt');
                    $(win.document.body).find('table').addClass('compact').css('font-size', '9pt').css('width', '100%');
                    $(win.document.body).find('th').css({ 'background-color': '#dd4b39', 'color': 'white', 'text-align': 'center', 'font-size': '10pt', 'padding': '8px' });
                };
            }

            return conf;
        }

        $(function () {
            // Trazabilidad
            $('#tabla_trazabilidad').DataTable({
                "data": MOVIMIENTOS,
                "columns": [
                    {
                        "data": "nro_vale",
                        "orderable": false,
                        "render": function (data, type, row) {
                            var tipo = (row.tipo_movimiento || '').toUpperCase().trim();
                            if ((tipo === 'ENTRADA' || tipo === 'SALIDA') && data) {
                                return '<i class="fa fa-print text-light-blue" style="cursor: pointer; margin: 3px;" title="Imprimir Vale" onclick="imprimirVale(\'' + data + '\', \'' + tipo + '\')"></i>';
                            }
                            return '';
                        }
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
                "dom": 'lBfrtip',
                "language": { "emptyTable": "Sin registros" },
                "buttons": [
                    btnExport('excel', 'btn btn-success btn-flat ml-1', 'Exportar a Excel <i class="fa fa-file-excel-o"></i>', 'Trazabilidad Herramienta', 'Trazabilidad_Herramienta', [1, 2, 3, 4, 5, 6]),
                    btnExport('pdf',   'btn btn-danger btn-flat ml-1',  'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',   'Trazabilidad Herramienta', 'Trazabilidad_Herramienta', [1, 2, 3, 4, 5, 6]),
                    btnExport('copy',  'btn btn-primary btn-flat ml-1', 'Copiar <i class="fa fa-file-text-o"></i>',         'Trazabilidad Herramienta', 'Trazabilidad_Herramienta', [1, 2, 3, 4, 5, 6]),
                    btnExport('print', 'btn btn-default btn-flat ml-1', 'Imprimir <i class="fa fa-print"></i>',             'Trazabilidad Herramienta', 'Trazabilidad_Herramienta', [1, 2, 3, 4, 5, 6])
                ]
            });

            // Certificaciones
            $('#tabla_certificaciones').DataTable({
                "data": CERTIFICACIONES,
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
                "dom": 'lBfrtip',
                "language": { "emptyTable": "Sin registros" },
                "buttons": [
                    btnExport('excel', 'btn btn-success btn-flat ml-1', 'Exportar a Excel <i class="fa fa-file-excel-o"></i>', 'Certificaciones_Herramienta', 'Certificaciones_Herramienta', [0, 1, 2]),
                    btnExport('pdf',   'btn btn-danger btn-flat ml-1',  'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',   'Certificaciones_Herramienta', 'Certificaciones_Herramienta', [0, 1, 2]),
                    btnExport('copy',  'btn btn-primary btn-flat ml-1', 'Copiar <i class="fa fa-file-text-o"></i>',         'Certificaciones_Herramienta', 'Certificaciones_Herramienta', [0, 1, 2]),
                    btnExport('print', 'btn btn-default btn-flat ml-1', 'Imprimir <i class="fa fa-print"></i>',             'Certificaciones_Herramienta', 'Certificaciones_Herramienta', [0, 1, 2])
                ]
            });

            // Checklists
            $('#tabla_checklists').DataTable({
                "data": CHECKLISTS,
                "columns": [
                    {
                        "data": "info_id",
                        "render": function (data, type, row) {
                            if (data) {
                                return '<i class="fa fa-search text-light-blue btnInfoDinamico" data-info="' + data + '" style="cursor: pointer;margin: 3px;" title="Ver Formulario"></i>';
                            }
                            return '';
                        },
                        "orderable": false
                    },
                    { "data": "fecha_hora" },
                    {
                        "data": "responsable",
                        "render": function (data, type, row) {
                            var res = row.responsable_nombre || data || '';
                            var usu = row.username ? " (" + row.username + ")" : "";
                            return res + usu;
                        }
                    }
                ],
                "order": [[1, "desc"]],
                "pageLength": 10,
                "lengthMenu": [5, 10, 25, 50],
                "dom": 'lBfrtip',
                "language": { "emptyTable": "Sin registros" },
                "buttons": [
                    btnExport('excel', 'btn btn-success btn-flat ml-1', 'Exportar a Excel <i class="fa fa-file-excel-o"></i>', 'Checklists Herramienta', 'Checklists_Herramienta', [1, 2]),
                    btnExport('pdf',   'btn btn-danger btn-flat ml-1',  'Exportar a PDF <i class="fa fa-file-pdf-o"></i>',   'Checklists Herramienta', 'Checklists_Herramienta', [1, 2]),
                    btnExport('copy',  'btn btn-primary btn-flat ml-1', 'Copiar <i class="fa fa-file-text-o"></i>',         'Checklists Herramienta', 'Checklists_Herramienta', [1, 2]),
                    btnExport('print', 'btn btn-default btn-flat ml-1', 'Imprimir <i class="fa fa-print"></i>',             'Checklists Herramienta', 'Checklists_Herramienta', [1, 2])
                ]
            });
        });

        $(function () {
        // -------------------------------------------------------
        // Convierte base64 a Blob (previsualizacion/descarga de adjuntos)
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

        // Click para ver adjunto de certificacion
        $('#tabla_certificaciones').on('click', '.btn-ver-adjunto', function () {
            var table = $('#tabla_certificaciones').DataTable();
            var rowIndex = $(this).data('row-index');
            var rowData = table.row(rowIndex).data();
            if (!rowData || !rowData.adjunto) return;

            var infoAdj = parseAdjunto(rowData.adjunto, rowData.adjunto_nombre);
            var b64 = infoAdj.b64;
            var mimeType = infoAdj.mime;
            var nombreArchivo = infoAdj.nombre;

            var dataUri;
            try {
                dataUri = atob(b64);
            } catch (e) {
                var errPreview = $('#preview-adjunto').empty();
                errPreview.append('<p><i class="fa fa-exclamation-triangle fa-4x text-red"></i></p>' +
                                  '<p>No se pudo decodificar el adjunto.</p>');
                $('#btn-descargar-adjunto').attr('href', '#').removeAttr('download');
                $('#modal-adjunto').modal('show');
                return;
            }

            var blob = base64ToBlob(b64, mimeType);
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

        $('#modal-adjunto').on('hidden.bs.modal', function () {
            var href = $('#btn-descargar-adjunto').attr('href');
            if (href && href.indexOf('blob:') === 0) {
                URL.revokeObjectURL(href);
            }
            $('#preview-adjunto').empty();
            $('#btn-descargar-adjunto').attr('href', '#').removeAttr('download');
        });

        // -------------------------------------------------------
        // Lupa Checklist: detalle del formulario (solo lectura)
        // -------------------------------------------------------
        $('#tabla_checklists').on('click', '.btnInfoDinamico', function () {
            var info_id = $(this).data('info');
            var items = (info_id && CHECKLIST_DETALLES) ? CHECKLIST_DETALLES[String(info_id)] : null;

            var esc = function (v) { return $('<div>').text((v == null) ? '' : String(v)).html(); };
            var tbody = $('#modal-checklist-detalle .table tbody').empty();

            if (!items || !items.length) {
                tbody.append('<tr><td colspan="2" style="text-align:center;">Sin datos del formulario.</td></tr>');
            } else {
                var checksPorName = {};
                var filas = [];
                for (var i = 0; i < items.length; i++) {
                    var item = items[i];
                    if (!item) continue;
                    var label  = item.label || item.name || '';
                    var valor  = (item.valor == null) ? '' : String(item.valor);
                    var tipo   = String(item.tipo_dato || '').toUpperCase();
                    if (tipo === 'CHECK') {
                        if (!checksPorName[item.name]) checksPorName[item.name] = { label: label, valores: [] };
                        if (valor !== '') checksPorName[item.name].valores.push(valor);
                        continue;
                    }
                    filas.push('<tr><th style="width:35%; background:#f9f9f9;">' + esc(label) + '</th><td>' + esc(valor || '-') + '</td></tr>');
                }
                for (var n in checksPorName) {
                    if (checksPorName.hasOwnProperty(n)) {
                        var g = checksPorName[n];
                        filas.push('<tr><th style="width:35%; background:#f9f9f9;">' + esc(g.label) + '</th><td>' + esc(g.valores.join(', ') || '-') + '</td></tr>');
                    }
                }
                tbody.html(filas.join(''));
            }

            var clTable = $('#tabla_checklists').DataTable();
            var rowData = clTable.row($(this).closest('tr')).data() || {};
            var res = rowData.responsable_nombre || rowData.responsable || '';
            res += rowData.username ? ' (' + rowData.username + ')' : '';
            $('#modal-checklist-detalle .chk-fecha').text(rowData.fecha_hora || '-');
            $('#modal-checklist-detalle .chk-responsable').text(res || '-');

            $('#modal-checklist-detalle').modal('show');
        });
        });

    function imprimirVale(sapa_id, tipo) {
        if (!sapa_id) {
            alert('El comprobante no tiene ID válido.');
            return;
        }
        $.ajax({
            type: 'GET',
            url: '<?php echo base_url(PAN); ?>Vales/printVale/' + sapa_id + '/' + tipo,
            success: function (data) {
                $('#mdl-back').html(data);
                $('#mdl-back').modal('show');
            },
            error: function () {
                alert('Error al cargar el vale');
            }
        });
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
    </script>

    <div class="box box-primary">
        <div class="box-header bg-blue">
            <h3 class="box-title"><i class="fa fa-fw fa-search"></i> Info Herramienta</h3>
        </div>
        <div class="box-body">
            <form class="form-horizontal">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- Código -->
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Código:</label>
                            <div class="col-sm-8">
                                <p class="form-control-static"><?php echo $val($h->codigo); ?></p>
                            </div>
                        </div>
                        <!-- Descripcion -->
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Descripcion:</label>
                            <div class="col-sm-8">
                                <p class="form-control-static"><?php echo $val($h->descripcion); ?></p>
                            </div>
                        </div>
                        <!-- Modelo -->
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Modelo:</label>
                            <div class="col-sm-8">
                                <p class="form-control-static"><?php echo $val($h->modelo); ?></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <!-- Tipo -->
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Tipo:</label>
                            <div class="col-sm-8">
                                <?php if ($htmlTags): ?>
                                    <div style="margin-top: 6px;"><?php echo $htmlTags; ?></div>
                                <?php else: ?>
                                    <p class="form-control-static"><?php echo $val($h->tipo); ?></p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <!-- Marca -->
                        <div class="form-group">
                            <label class="col-sm-4 control-label">Marca:</label>
                            <div class="col-sm-8">
                                <p class="form-control-static"><?php echo $val($h->marca); ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <!-- Pestañas adicionales: Trazabilidad, Certificaciones, Checklists -->
            <div class="row" style="margin-top: 15px;">
                <div class="col-xs-12">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_trazabilidad" data-toggle="tab"><i class="fa fa-fw fa-sitemap text-light-blue"></i> Trazabilidad</a></li>
                            <li><a href="#tab_certificaciones" data-toggle="tab"><i class="fa fa-fw fa-certificate text-light-blue"></i> Certificaciones</a></li>
                            <li><a href="#tab_checklists" data-toggle="tab"><i class="fa fa-fw fa-check-square-o text-light-blue"></i> Checklists</a></li>
                        </ul>
                        <div class="tab-content" style="min-height: 150px; padding: 15px;">
                            <div class="tab-pane active" id="tab_trazabilidad">
                                <div class="table-responsive">
                                    <table id="tabla_trazabilidad" class="table table-bordered table-hover" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Acciones</th>
                                                <th>Nro Vale</th>
                                                <th>Tipo</th>
                                                <th>Fecha y hora</th>
                                                <th>Responsable</th>
                                                <th>Establecimiento/Pañol</th>
                                                <th>Justificación/Observación</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_certificaciones">
                                <div class="table-responsive">
                                    <table id="tabla_certificaciones" class="table table-bordered table-hover" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Fecha y hora</th>
                                                <th>Vencimiento</th>
                                                <th>Entidad certificadora</th>
                                                <th>Adjunto</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab_checklists">
                                <div class="table-responsive">
                                    <table id="tabla_checklists" class="table table-bordered table-hover" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Acciones</th>
                                                <th>Fecha y hora</th>
                                                <th>Responsable</th>
                                            </tr>
                                        </thead>
                                        <tbody></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal Vale (impresión de comprobante) -->
    <div class="modal modal-fade" id="mdl-back"></div>

    <!-- Modal Detalle Checklist (solo lectura) -->
    <div class="modal fade" id="modal-checklist-detalle" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-blue">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title"><i class="fa fa-fw fa-check-square-o"></i> Detalle del Checklist</h4>
          </div>
          <div class="modal-body">
            <p class="text-muted"><i class="fa fa-calendar"></i> Fecha y hora: <strong class="chk-fecha">-</strong> &nbsp;|&nbsp; <i class="fa fa-user"></i> Responsable: <strong class="chk-responsable">-</strong></p>
            <table class="table table-bordered table-striped">
              <thead>
                <tr><th style="width:35%;">Campo</th><th>Valor</th></tr>
              </thead>
              <tbody></tbody>
            </table>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>

    <?php $this->load->view('herramienta/modals/modal_adjunto'); ?>

    <?php endif; ?>
</div>
</body>
</html>
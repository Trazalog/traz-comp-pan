<div class="modal-dialog" role="document">
    <div class="modal-content">
        <div class="modal-header hidden-print">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Impresión de Vale</h4>
        </div>
        
        <div class="modal-body" id="area-impresion">
            <?php if (isset($data) && count($data) > 0) { 
                $salida = $data[0]; 
            ?>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 col-md-5">
                        <?php $logo_url = isset($cabecera['logo']->valor) && !empty($cabecera['logo']->valor) ? $cabecera['logo']->valor : base_url('imagenes/trazalog/logo_trazalog.png'); ?>
                        <img src="<?php echo $logo_url; ?>" id="logo_vale" style="max-width: 150px; margin-left: 0%;">
                        <div id="direccion_vale" style="font-size: 12px; margin-top: 5px;"><?php echo isset($cabecera['direccion']->valor) && !empty($cabecera['direccion']->valor) ? $cabecera['direccion']->valor : '-'; ?></div>
                        <div id="telefono_vale" style="font-size: 12px;"><?php echo isset($cabecera['telefono']->valor) && !empty($cabecera['telefono']->valor) ? 'Tel: ' . $cabecera['telefono']->valor : '-'; ?></div>
                        <div id="email_vale" style="font-size: 12px;"><?php echo isset($cabecera['email']->valor) && !empty($cabecera['email']->valor) ? $cabecera['email']->valor : '-'; ?></div>
                        <h5 style="margin-top: 10px; margin-bottom: 0px;"><small>Vale de Herramientas</small></h5>
                    </div>
                    <div class="col-xs-7 col-md-7">
                        <h3 style="margin-top: 5px"><b>VALE DE <?php echo isset($tipo) && strtoupper($tipo) == 'ENTRADA' ? 'RECEPCIÓN' : 'ENTREGA'; ?></b></h3>
                        <div class="col-xs-offset-1 col-xs-10 col-md-offset-1 col-md-10">
                            <strong>N° <span><?php echo isset($sapa_id) ? $sapa_id : ''; ?></span></strong>
                            <p>FECHA <span><?php echo isset($salida->fec_alta) ? date("d/m/Y H:i", strtotime($salida->fec_alta)) : ''; ?></span></p>
                            <p>Documento no valido como factura</p>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px;">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-md-12">
                                <h5>Estab. / Depósito: <span><?php echo isset($salida->establecimiento) ? $salida->establecimiento : ''; ?></span></h5>
                            </div>
                            <div class="col-md-12">
                                <h6>Responsable: <span><?php echo (isset($salida->first_name) ? $salida->first_name : '') . ' ' . (isset($salida->last_name) ? $salida->last_name : ''); ?></span></h6>
                            </div>
                            <?php if (!empty($form_dinamico)) { 
                                foreach ($form_dinamico as $campo) { 
                                    // Saltar tipos que son solo visuales o no aplican al vale
                                    if (in_array($campo->tipo_dato, array('titulo1','titulo2','titulo3','comentario','file','image','btnAgregar'))) continue;
                                    $valor_mostrar = isset($campo->valor) ? $campo->valor : '';
                                    // Para selects/radios/checks, buscar el label del valor seleccionado
                                    if (in_array($campo->tipo_dato, array('select','service','radio','check','urlEvaluador','urlConsultor')) && isset($campo->values) && !empty($valor_mostrar)) {
                                        foreach ($campo->values as $opcion) {
                                            if ($opcion->value == $valor_mostrar) {
                                                $valor_mostrar = $opcion->label;
                                                break;
                                            }
                                        }
                                    }
                            ?>
                            <div class="col-md-12">
                                <h6><?php echo isset($campo->label) ? $campo->label : ''; ?>: <span><?php echo $valor_mostrar; ?></span></h6>
                            </div>
                            <?php } 
                            } ?>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 20px;">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <!-- ______ TABLA HERRAMIENTAS ______ -->
                        <table id="tabla_detalle" class="table table-bordered table-striped">
                            <thead class="thead-dark" bgcolor="#eeeeee">
                                <tr>
                                    <th style="width: 15%;">Código</th>
                                    <th>Herramienta</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                $tools_vistos = array();
                                foreach ($data as $row) { 
                                    if (in_array($row->codigoherramienta, $tools_vistos)) {
                                        continue;
                                    }
                                    $tools_vistos[] = $row->codigoherramienta;
                                ?>
                                <tr>
                                    <td style="text-align: left;"><?php echo $row->codigoherramienta; ?></td> <!-- Por defecto 1 herramienta por fila -->
                                    <td style="text-align: left;"><?php echo $row->descherramienta; ?></td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <br>
                        <div class="row">
                            <div class="col-md-12">
                                <h5>Observaciones: <span><?php echo isset($salida->observaciones) ? $salida->observaciones : ''; ?></span></h5>
                            </div>
                        </div>
                        <h3 id="texto_pie_vale"><?php echo isset($cabecera['texto_pie']->valor) && !empty($cabecera['texto_pie']->valor) ? $cabecera['texto_pie']->valor : '-'; ?></h3>
                    </div>
                </div>
            </div>
            <?php } else { ?>
                <div class="alert alert-warning">
                    No se encontraron datos para el comprobante seleccionado.
                </div>
            <?php } ?>
        </div>
        
        <div class="modal-footer hidden-print">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            <?php if (isset($data) && count($data) > 0) { ?>
                <button type="button" class="btn btn-primary" onclick="imprimirArea()">Imprimir</button>
            <?php } ?>
        </div>
    </div>
</div>

<script>
function imprimirArea() {
    var contenido = document.getElementById('area-impresion').innerHTML;
    var ventana = window.open('', '', 'width=800,height=600');
    ventana.document.write('<html><head><title>Imprimir Vale</title>');
    // Agregar estilos de bootstrap
    ventana.document.write('<link rel="stylesheet" href="<?php echo base_url("lib/bower_components/bootstrap/dist/css/bootstrap.min.css"); ?>">');
    ventana.document.write('<style>body { padding: 20px; font-family: sans-serif; } hr { border-top: 1px solid #ccc; } .table th { background-color: #eee !important; -webkit-print-color-adjust: exact; } </style>');
    ventana.document.write('</head><body onload="setTimeout(function(){ window.print(); window.close(); }, 500);">');
    ventana.document.write(contenido);
    ventana.document.write('</body></html>');
    ventana.document.close();
}
</script>
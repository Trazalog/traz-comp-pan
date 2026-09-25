<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->
<div class="box box-primary animated fadeInLeft">
    <div class="box-header with-border">
        <h3 class="box-title">Movimientos Herramientas</h3>
    </div><!-- /.box-header -->
    <div class="box-body">

        <div class="row">
            <!-- Botones de acción a la derecha -->
            <div class="col-xs-12 col-sm-7" style="margin-top: 10px;">
                <button class="btn btn-primary" style="min-width: 150px; margin: 10px;" onclick="nuevaSalida()">
                    <i class="fa fa-arrow-up"></i> Nueva Entrega
                </button>

                <button class="btn btn-primary" style="min-width: 150px; margin: 10px;" onclick="nuevaRecepcion()">
                    <i class="fa fa-arrow-down"></i> Nueva Recepción
                </button>
            </div>

            <!-- Filtro a la izquierda -->
            <div class="col-xs-12 col-sm-5">
                <div class="form-group">
                    <label for="tipo_movimiento">Tipo Movimiento:</label>
                    <select class="form-control" id="tipo_movimiento">
                        <option value="">- Todos -</option>
                        <option value="ENTREGA">Entrega</option>
                        <option value="RECEPCION">Recepcion</option>
                    </select>
                </div>
                <div>
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
<!-- /// ----------------------------------- HEADER ----------------------------------- /// -->


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
$("#cargar_tabla").load("<?php echo base_url(PAN); ?>Movimientoherramientas/listarMovimientos");

function filtrar() {
    $('#vales').DataTable().ajax.reload();
}

function limpiar() {
    $('#tipo_movimiento').val('');
    $('#vales').DataTable().ajax.reload();
}

function nuevaSalida() {
    wo();
    $.ajax({
        type: 'GET',
        url: '<?php echo base_url(PAN); ?>Movimientoherramientas/nuevaSalida',
        success: function(data) {
            $('#mdl-back').html(data);
            $('#mdl-back').modal('show');
            // Al cerrar el modal, recargar la tabla de movimientos
            $('#mdl-back').one('hidden.bs.modal', function() {
                if ($('#vales').length && $.fn.DataTable.isDataTable('#vales')) {
                    $('#vales').DataTable().ajax.reload();
                }
            });
            wc();

        },
        error: function() {
            wc();
            alertify.error("Error al cargar el formulario de salida");
        }
    });
}

function nuevaRecepcion() {
    wo();
    $.ajax({
        type: 'GET',
        url: '<?php echo base_url(PAN); ?>Movimientoherramientas/nuevaRecepcion',
        success: function(data) {
            
            $('#mdl-back').html(data);
            $('#mdl-back').modal('show');
            // Al cerrar el modal, recargar la tabla de movimientos
            $('#mdl-back').one('hidden.bs.modal', function() {
                if ($('#vales').length && $.fn.DataTable.isDataTable('#vales')) {
                    $('#vales').DataTable().ajax.reload();
                }
            });
            wc();
        },
        error: function() {
            wc();
            alertify.error("Error al cargar el formulario de recepción");
        }
    });
}
</script>
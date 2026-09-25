<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Vales de Salida</h3>

        </div><!-- /.box-header -->
        <div class="box-body">
          <!-- <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="cargOrden">Cargar Vale</button> -->
          <table id="vales" class="table table-bordered table-hover">
            <thead>
              <tr> 
                <th>Acciones</th>
                <th>Comprobante</th>
                <th>Fecha</th>
                <th>Código</th>
                <th>Marca</th>
                <th>Destino</th>
                <th>Responsable</th>
                <th>Observaciones</th>
              </tr>
            </thead>
            <tbody>
              <?php
                if(count($list) > 0) {
                	foreach($list as $a)
      		        {
                    echo '<tr>';
                    $id = isset($a->sapa_id) ? $a->sapa_id : '';
                    echo '<td><i class="fa fa-print text-light-blue" style="cursor: pointer; margin: 3px;" title="Imprimir Vale" onclick="imprimirVale(\''.$id.'\')"></i></td>';
                    echo '<td>'.$a->comprobante.'</td>';
                    echo '<td>'.$a->fec_alta.'</td>';
                    echo '<td>'.$a->codigo.'</td>';
                    echo '<td>'.$a->marca.'</td>';
                    echo '<td>'.$a->destino.'</td>';
                    echo '<td>'.$a->responsable.'</td>';
                    echo '<td>'.$a->observaciones.'</td>';
  	                echo '</tr>';                    
      		        }
                }
              ?>
            </tbody>
          </table>
        </div><!-- /.box-body -->
      </div><!-- /.box -->
    </div><!-- /.col -->
  </div><!-- /.row -->
<script>

// Config Tabla
  DataTable($('#vales'));

  function imprimirVale(sapa_id) {
      if(!sapa_id) {
          alertify.error("El comprobante no tiene ID válido.");
          return;
      }
      wo();
      $.ajax({
          type: 'GET',
          url: '<?php echo base_url(PAN) ?>Order/printVale/' + sapa_id,
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
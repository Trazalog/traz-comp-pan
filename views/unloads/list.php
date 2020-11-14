<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Vales de Entrada</h3>

        </div><!-- /.box-header -->
        <div class="box-body">
          <!-- <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="cargOrden">Cargar Vale</button> -->
          <table id="vales" class="table table-bordered table-hover">
            <thead>
              <tr> 
                <!-- <th>Acciones</th> -->
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
</section><!-- /.content -->


<script>

</script>
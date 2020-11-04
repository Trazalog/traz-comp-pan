<input type="hidden" id="permission" value="<?php echo $permission;?>">
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Trazabilidad de Componentes</h3>
        </div><!-- /.box-header -->
        <div class="box-body">
        <button class="btn btn-block btn-primary" style="width: 120px; margin-top: 10px;" id="recEntregar">Agregar</button>
          <table id="trazacomponentes" class="table table-bordered table-hover">
            <thead>
              <tr> 
                <th>Equipo</th>             
                <th>Componente</th>
                <th>Recibido por</th>
                <th>Estado</th>                
              </tr>
            </thead>
            <tbody>
              <?php
                if(count($list) > 0) {                  
                	foreach($list as $a)
      		        {
  	                echo '<tr>';
                    echo '<td>'.$a['equipocodigo'].'</td>';  	    
                    echo '<td>'.$a['componente'].'</td>';            
                    echo '<td>'.$a['ult_recibe'].'</td>';  
                    echo '<td>'.($a['estado'] == 'C' ? '<small class="label pull-left bg-green">Curso</small>' : ($a['estado'] == 'FP' ? '<small class="label pull-left bg-red">Fuera Pañol</small>' : '<small class="label pull-left bg-yellow">Pañol</small>')).'</td>';                        
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

<!-- Resetea Nº de orden al recargar la pagina -->
<script>
$('#recEntregar').click( function cargarVista(){
  WaitingOpen();
  $('#content').empty();
  $("#content").load("<?php echo base_url(); ?>index.php/Trazacomp/recibEntrega/<?php echo $permission; ?>");
  WaitingClose();
});
</script>
<!-- / Resetea Nº de orden al recargar la pagina -->

<script>
$(function () {

  $('#trazacomponentes').DataTable({
    "aLengthMenu": [ 10, 25, 50, 100 ],
    "order": [[0, "asc"]],
  });

});    
</script>

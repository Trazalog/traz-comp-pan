<input type="hidden" id="permission" value="<?php echo $permission;?>">
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Vales de SaLida</h3>
          <?php
          //if (strpos($permission,'Add') !== false) {
            //echo '<button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="cargOrden">Cargar Vale</button>';
          //}
          ?>
        </div><!-- /.box-header -->
        <div class="box-body">
          <button class="btn btn-block btn-primary" style="width: 100px; margin-top: 10px;" id="cargOrden">Cargar Vale</button>
          <table id="articles" class="table table-bordered table-hover">
            <thead>
              <tr> 
                <th>Fecha</th>             
                <th>Código</th>
                <th>Marca</th>
                <th>Descripción</th>
                <th>Responsable</th>
                <th>Destino</th>
              </tr>
            </thead>
            <tbody>
              <?php
                if(count($list) > 0) {                  
                	foreach($list as $a)
      		        {
  	                echo '<tr>';
                    echo '<td>'.$a['fecha'].'</td>';  	    
                    echo '<td>'.$a['herrcodigo'].'</td>';            
                    echo '<td>'.$a['marcadescrip'].'</td>';
                    echo '<td>'.$a['herrdescrip'].'</td>';
                    echo '<td>'.$a['respons'].'</td>';
                    echo '<td>'.$a['dest'].'</td>';                             
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
 $('#cargOrden').click( function cargarVista(){
    WaitingOpen();
    $('#content').empty();
    $("#content").load("<?php echo base_url(); ?>index.php/Order/cargarValeSal/<?php echo $permission; ?>");
    WaitingClose();
  });
</script>
<!-- / Resetea Nº de orden al recargar la pagina -->

<script>
$(function () {
  // Datatables
  $('#articles').DataTable({
    "aLengthMenu": [ 10, 25, 50, 100 ],
    "order": [[0, "asc"]],
  });

});    
</script>
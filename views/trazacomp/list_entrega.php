<!-- ______ TABLA PRINCIPAL DE PANTALLA ______ -->
<table id="tabla_circuitos" class="table table-bordered table-striped">
		<thead class="thead-dark" bgcolor="#eeeeee">
      <th>Acciones</th>
      <th>Codigo</th>
      <th>Modelo</th>
      <th>Descripcion</th>
      <th>Marca</th>
      <th>Deposito</th>
      <th>Estado</th>
		</thead>
		<tbody >
			<?php
				if($list)
				{
					foreach($estanterias as $value)
          {
            echo "<tr data-json='".json_encode($value)."'>";
            echo '<td>';
                echo '<button  type="button" title="Editar"  class="btn btn-primary btn-circle btnEditar" data-toggle="modal" data-target="#modaleditar" id="btnEditar"  ><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>&nbsp
                <button type="button" title="Info" class="btn btn-primary btn-circle btnInfo" data-toggle="modal" data-target="#modaleditar" ><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span></button>&nbsp
                <button type="button" title="Eliminar" class="btn btn-primary btn-circle btnEliminar" id="btnBorrar"  ><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button>&nbsp';
            echo '</td>';
            echo '<td>'.$value->codigo.'</td>';
            echo '<td>'.$value->modelo.'</td>';
            echo '<td>'.$value->descripcion.'</td>';
            echo '<td>'.$value->marca.'</td>';
            echo '<td>'.$value->pan_descrip.'</td>';
            echo '<td>'.($value->estado  == 'ACTIVO' ? '<small class="label pull-left bg-green" >Activa</small>' :'<small class="label pull-left bg-blue">Transito</small>').'</td>';
            echo '</tr>';
          }
				}
			?>
		</tbody>
</table>
<!--_______ FIN TABLA PRINCIPAL DE PANTALLA ______-->

<!-- Modal aviso eliminar -->
  <div class="modal fade" id="modalaviso">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-trash"></span> Eliminar Herramienta</h4>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-xs-12">
              <h4>¿Desea realmente eliminar esta Herramienta?</h4>
              <input type="text" id="id_herr" class="hidden">
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="validarEstado()">Aceptar</button>
        </div>
      </div>
    </div>
  </div>
<!-- / Modal aviso eliminar -->

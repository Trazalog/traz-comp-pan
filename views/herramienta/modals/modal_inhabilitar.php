<!-- Modal Justificacion Inhabilitar -->
<div class="modal fade" id="modal_inhabilitar" tabindex="-1" role="dialog" aria-labelledby="modalInhabilitarLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-blue">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="modalInhabilitarLabel">
          <span class="fa fa-fw fa-ban"></span> Inhabilitar Herramienta: <strong id="modal_inh_codigo"></strong>
        </h4>
      </div>
      <div class="modal-body">
        <input type="hidden" id="modal_inh_herr_id">
        <div class="form-group">
          <label for="modal_inh_justificacion">Motivo / Justificación <span class="text-danger">*</span>:</label>
          <textarea id="modal_inh_justificacion" class="form-control" rows="4" placeholder="Ingrese el motivo por el cual se inhabilita la herramienta..."></textarea>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
        <button type="button" class="btn btn-warning" id="btnConfirmarInhabilitar" onclick="confirmarInhabilitacion()">Inhabilitar</button>
      </div>
    </div>
  </div>
</div>
<!-- / Modal Justificacion Inhabilitar -->

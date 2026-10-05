<style>
  /* Nested modal: levantar z-index para que quede delante de modaleditar */
  #modal-adjunto {
      z-index: 2080 !important;
  }
  .modal-backdrop + .modal-backdrop {
      z-index: 2070 !important;
  }
</style>

<!-- Modal Adjunto -->
<div class="modal fade" id="modal-adjunto" tabindex="-1" role="dialog" aria-labelledby="modalAdjuntoLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="modalAdjuntoLabel">Ver Adjunto</h4>
      </div>
      <div class="modal-body text-center" style="padding: 30px;">
        <div id="preview-adjunto" style="margin-bottom: 20px; max-height: 500px; overflow: auto;">
          <!-- Aquí se insertará la previsualización -->
        </div>
        <a href="#" id="btn-descargar-adjunto" class="btn btn-primary btn-lg" download="adjunto">
          <i class="fa fa-download"></i> Descargar Adjunto
        </a>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<!-- Fin Modal Adjunto -->

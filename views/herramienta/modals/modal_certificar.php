<!-- Modal aviso certificado -->
  <div class="modal fade" id="modalcertificar">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel"><span id="modalAction" class="fa fa-fw fa-thumbs-up"></span> Nueva Certificación</h4>
        </div>
        <div class="modal-body">
          <form id="formCertificar" class="form-horizontal" enctype="multipart/form-data">
            <input type="text" id="id_herr" class="hidden">

            <div class="form-group">
              <label for="fecha_hora_certificacion" class="col-xs-4 control-label">Fecha y Hora <strong class="text-danger">*</strong></label>
              <div class="col-xs-8">
                <input type="datetime-local" id="fecha_hora_certificacion" name="fecha_hora_certificacion" class="form-control" required>
              </div>
            </div>

            <div class="form-group">
              <label for="fecha_vencimiento" class="col-xs-4 control-label">Vencimiento <strong class="text-danger">*</strong></label>
              <div class="col-xs-8">
                <input type="date" id="fecha_vencimiento" name="fecha_vencimiento" class="form-control" required>
              </div>
            </div>

            <div class="form-group">
              <label for="entidad_certificadora" class="col-xs-4 control-label">Entidad Certificadora <strong class="text-danger">*</strong></label>
              <div class="col-xs-8">
                <select id="entidad_certificadora" name="entidad_certificadora" class="form-control" required>
                  <option value="">Seleccione...</option>
                </select>
              </div>
            </div>

            <div class="form-group">
              <label for="adjunto_certificado" class="col-xs-4 control-label">Adjunto <small class="text-muted">(Opcional)</small></label>
              <div class="col-xs-8">
                <input type="file" id="adjunto_certificado" name="adjunto_certificado" class="form-control" accept="image/*,application/pdf,.doc,.docx,.xls,.xlsx">
                <p class="help-block show-file" style="margin-top: 5px;">
                  <a href="#" id="preview_adjunto_cert" class="help-button download" title="Ver archivo cargado" download style="display: none;">
                    <i class="fa fa-download"></i> Ver Adjunto
                  </a>
                </p>
              </div>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
          <button type="button" class="btn btn-primary" onclick="guardarCertificacion()">Aceptar</button>
        </div>
      </div>
    </div>
  </div>
<!-- / Modal aviso certificado -->

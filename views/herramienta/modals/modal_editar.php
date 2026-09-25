<!---///////--- MODAL EDICION E INFORMACION ---///////--->
  <div class="modal fade bs-example-modal-lg" id="modaleditar" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-blue">
                <button type="button" class="close close_modal_edit" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" style="color:white;">&times;</span>
                </button>
            </div>
            <div class="modal-body ">
              <form class="formEdicion" id="formEdicion">
                <div class="form-horizontal">
                  <div class="row">
                    <form class="frm_circuito_edit" id="frm_circuito_edit">
                    <input type="text" class="form-control habilitar hidden" name="herr_id" id="herr_id">
                      <div class="col-sm-6">
                        <!--_____________ CODIGO _____________-->
                          <div class="form-group">
                            <label for="codigo_edit" class="col-sm-4 control-label">Código:</label>
                            <div class="col-sm-8">
                              <input type="text" class="form-control habilitar requerido" name="codigo" id="codigo_edit">
                            </div>
                          </div>
                        <!--___________________________-->
                        <!--_____________ DESCRIPCION _____________-->                            <div class="form-group">
                              <label for="descripcion_edit" class="col-sm-4 control-label">Descripcion:</label>
                              <div class="col-sm-8">
                                <input type="text" class="form-control habilitar requerido" name="descripcion" id="descripcion_edit">
                              </div>
                          </div>
                        <!--__________________________-->
                        <!--_____________ MODELO _____________-->
                            <div class="form-group">
                              <label for="modelo_edit" class="col-sm-4 control-label">Modelo:</label>
                              <div class="col-sm-8">
                                <input type="text" class="form-control habilitar requerido" name="modelo" id="modelo_edit">
                              </div>
                          </div>
                        <!--__________________________-->
                      </div>
                      <div class="col-sm-6">
                        <!--_____________ TIPO _____________-->
                          <div class="form-group">
                            <label for="tipo_edit" class="col-sm-4 control-label">Tipo:</label>
                            <div class="col-sm-8">
                              <select id="tipo_edit" name="tipo[]" class="form-control habilitar requerido" multiple style="width: 100%;">
                                <?php foreach ($tipos_herramienta as $tipo): ?>
                                  <?php
                                    $color = !empty($tipo->valor2) ? $tipo->valor2 : '#808080';
                                  ?>
                                  <option value="<?= htmlspecialchars($tipo->valor) ?>" data-color="<?= htmlspecialchars($color) ?>">
                                    <?= htmlspecialchars($tipo->descripcion) ?>
                                  </option>
                                <?php endforeach; ?>
                              </select>
                              <div id="tipo_edit_tags" style="margin-top: 5px;"></div>
                            </div>
                          </div>
                        <!--___________________________-->
                        <!--_____________ MARCA _____________-->
                          <div class="form-group">
                            <label for="marca_id_edit" class="col-sm-4 control-label">Marca:</label>
                            <div class="col-sm-8">
                              <select class="form-control select2 select2-hidden-accessible habilitar requerido" name="marca" id="marca_id_edit" style="width: 100%;">
                                <option value="" disabled selected>-Seleccione opcion-</option>	
                                <?php
                                  foreach ($marcas as $mar) {
                                    echo '<option value="'.$mar->tabl_id.'">'.$mar->valor.'</option>';
                                  }
                                ?>
                              </select>
                            </div>
                          </div>
                        <!--__________________________-->
                      </div>
                    </form>
                  </div>
                </div>
              </form>

              <!-- Pestañas adicionales: Trazabilidad, Certificaciones, Checklists -->
              <div class="row" id="movimientos_herramientas" style="margin-top: 15px;">
                <div class="col-xs-12">
                  <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                      <li class="active"><a href="#tab_trazabilidad" data-toggle="tab"><i class="fa fa-fw fa-sitemap text-light-blue"></i> Trazabilidad</a></li>
                      <li><a href="#tab_certificaciones" data-toggle="tab"><i class="fa fa-fw fa-certificate text-light-blue"></i> Certificaciones</a></li>
                      <li><a href="#tab_checklists" data-toggle="tab"><i class="fa fa-fw fa-check-square-o text-light-blue"></i> Checklists</a></li>
                    </ul>
                    <div class="tab-content" style="min-height: 150px; padding: 15px;">
                      <div class="tab-pane active" id="tab_trazabilidad">
                        <div class="table-responsive">
                          <table id="tabla_trazabilidad" class="table table-bordered table-hover" style="width:100%">
                            <thead>
                              <tr>
                                <th>Acciones</th>
                                <th>Nro Vale</th>
                                <th>Tipo</th>
                                <th>Fecha y hora</th>
                                <th>Responsable</th>
                                <th>Establecimiento/Pañol</th>
                                <th>Justificación/Observación</th>
                              </tr>
                            </thead>
                            <tbody></tbody>
                          </table>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_certificaciones">
                        <div class="table-responsive">
                          <table id="tabla_certificaciones" class="table table-bordered table-hover" style="width:100%">
                            <thead>
                              <tr>
                                <th>Fecha y hora</th>
                                <th>Vencimiento</th>
                                <th>Entidad certificadora</th>
                                <th>Adjunto</th>
                              </tr>
                            </thead>
                            <tbody></tbody>
                          </table>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_checklists">
                        <div class="table-responsive">
                          <table id="tabla_checklists" class="table table-bordered table-hover" style="width:100%">
                            <thead>
                              <tr>
                                <th>Acciones</th>
                                <th>Fecha y hora</th>
                                <th>Responsable</th>
                              </tr>
                            </thead>
                            <tbody></tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="modal-footer">
                <div class="form-group text-right">
                    <button type="" class="btn btn-primary habilitar" data-dismiss="modal" id="btnsave_edit" onclick="guardar('editar')">Guardar</button>
                    <button type="button" class="btn btn-default cerrarModalEdit" data-dismiss="modal">Cerrar</button>
                </div>
            </div>
        </div>
      </div>

  </div>
<!---///////--- FIN MODAL EDICION E INFORMACION ---///////--->

<!-- /// ---- HEADER ----- /// -->
<div class="box box-primary animated fadeInLeft">
			<div class="box-header with-border">
					<h4>Entrega - Recepción de Componentes</h4>
			</div>
			<div class="box-body">
					<div class="row">
							<div class="col-md-2 col-lg-1 col-xs-12">
									<button type="button" id="botonAgregar" class="btn btn-primary" aria-label="Left Align">
											Agregar
									</button><br>
							</div>
							<div class="col-md-10 col-lg-11 col-xs-12"></div>
					</div>
			</div>
	</div>
<!-- /// ----- HEADER -----/// -->

<!---///--- BOX 1 ---///----->
<div class="box box-primary animated bounceInDown" id="boxDatos" hidden>
    <div class="box-header with-border">
        <div class="box-tittle">
            <h5>Entrega - Recepción de Componentes</h5>
        </div>
        <div class="box-tools pull-right border ">
            <button type="button" id="btnclose" title="cerrar" class="btn btn-box-tool" data-widget="remove"
                data-toggle="tooltip" title="" data-original-title="Remove">
                <i class="fa fa-times"></i>
            </button>
        </div>
    </div>
    <!--_____________________________________________-->

    <div class="box-body">



      <div class="row" >
        <div class="col-xs-12">

          <div class="panel panel-primary">
            <div class="panel-heading">
              <h2 class="panel-title "><span class="fa fa-th-large"></span> Datos del Componente</h2>
            </div><!-- / panel-heading --> 

            <div class="panel-body">
              <!-- Nav tabs -->
              <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#entrega" id="entr" aria-controls="entrega" role="tab" data-toggle="tab">Entrega de componente</a></li>

                <li role="presentation"><a href="#recibe" id="recepcion" aria-controls="recibe" role="tab" data-toggle="tab">Recibo de componente</a></li>

                <li role="presentation"><a href="#nuevaest" id="nuevaesteria" aria-controls="nuevaest" role="tab" data-toggle="tab">Nueva Estanteria</a></li>
              </ul>
              <!-- /  Nav tabs -->

              <!-- Tab panes -->                            
              <div class="tab-content">
                              
                <!-- tabpanel  ENTREGA -->  
                <div role="tabpanel" class="tab-pane active" id="entrega">
                  <div class="row">
                    <br>
                    <div class="col-xs-12 col-sm-6">
                      <label for="resp_entrega">Responsable Pañol: </label>
                      <input type="text" class="form-control limp_entrega" id="resp_entrega" placeholder="Responsable Pañol">
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label for="recib_entrega">Recibe: </label>
                      <input type="text" class="form-control limp_entrega" id="recib_entrega" placeholder="Operario o Personal Externo">
                    </div>
                    <div class="col-xs-12">
                      <br>
                      <label class="radio-inline">
                        <input type="radio" name="radioOpcion" id="interno" value="interno" checked>Interno
                      </label>
                      <label class="radio-inline">
                        <input type="radio" name="radioOpcion" id="externo" value="externo">Externo
                      </label>
                      <br><br>
                    </div>  

                    <div class="col-xs-12 col-sm-6">
                      <label>Equipo <strong style="color: #dd4b39">*</strong></label>  
                      <select id="equipo" name="equipo" class="form-control select2 equipo" />
                      <input type="hidden" id="id_equipo" name="id_equipo">
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label>Componente <strong style="color: #dd4b39">*</strong></label> 
                      <select  id="componente" name="componente" class="form-control" />
                    </div>
                    <div class="col-xs-12">
                      <br>
                      <label>Observaciones:</label>
                      <textarea class="form-control limp_entrega" id="descrip" name="descrip"></textarea>
                    </div>                                     
                    <div class="col-xs-12">
                      <br>
                      <button type="button" class="btn btn-primary" id="addcompo" onclick="javascript:armarTabla()"><i class="fa fa-check"></i></button>
                    </div>
                    <!-- tabla-->

                    <!-- form  -->
                    <form  id="form_order" action="" accept-charset="utf-8">
                      <div class="col-xs-12">
                        <br>
                        <table class="table table-bordered" id="tablaEntrega" border="1px">
                          <thead>
                            <tr>                       
                              <th></th>
                              <th>Equipo</th>
                              <th>Componente</th>
                              <th>Observaciones</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                        </table>
                      </div>
                    </form>
                    <!-- / tabla-->
                  </div>
                </div>
                <!-- / tabpanel  ENTREGA -->  

                <!--  tabpanel  RECIBE -->
                <div role="tabpanel" class="tab-pane" id="recibe">
                  <div class="row">
                    <br>
                    <form class="">
                      <div class="col-xs-12 col-sm-6">  
                        <label for="resp_recibe">Responsable Pañol: </label>
                        <input type="text" class="form-control limp_recibe" id="resp_recibe" placeholder="Responsable Pañol">
                      </div>
                      <div class="col-xs-12 col-sm-6">
                        <label for="entrega_recibe">Entrega: </label>
                        <input type="text" class="form-control limp_recibe" id="entrega_recibe" placeholder="Operario o Personal Externo">
                      </div>                                  
                    </form>
                    <div class="col-xs-12 col-sm-6">
                      <label>Equipo</label> <strong style="color: #dd4b39">*</strong> : 
                      <select id="equiporec" name="equiporec" class="form-control select2 equipo" />
                      <input type="hidden" id="id_equipo" name="id_equipo">
                    </div>
                    <div class="col-xs-12 col-sm-6">
                      <label>Componente</label> <strong style="color: #dd4b39">*</strong> :  
                      <select  id="componenterec" name="componenterec" class="form-control" />
                    </div> 

                    <div class="col-xs-12 col-sm-6">
                      <label>Estanteria</label> <strong style="color: #dd4b39">*</strong> :  
                      <select  id="estanteria" name="estanteria" class="form-control estanteria" />
                    </div>

                    <div class="col-xs-12 col-sm-6">
                      <label>Fila</label><strong style="color: #dd4b39">*</strong> :
                      <select class="form-control" id="fila" style="width: 100%;"></select> 
                    </div><br><br>

                    <div class="col-xs-12">
                      <label>Observaciones:</label>
                      <textarea class="form-control limp_recibe" id="obser" name="descrip"></textarea>
                    </div><br>                                    

                    <div class="col-xs-12">
                      <br>                                      
                      <button type="button" class="btn btn-primary" id="addcompo" onclick="armarTablaRecibe()"><i class="fa fa-check"></i></button>
                    </div><br><br>

                    <!-- tabla-->
                    <form class="" id="">
                      <div class="col-xs-12">
                        <br>
                        <table class="table table-bordered" id="tablarecibe" border="1px"> 
                          <thead>
                            <tr>                       
                              <th></th>
                              <th>Equipo</th>
                              <th>Componente</th>
                              <th>Estanteria</th>
                              <th>Fila</th>
                              <th>Observaciones</th>
                            </tr>
                          </thead>
                          <tbody>
                          </tbody>
                        </table><!-- / tabla-->
                      </div><!-- </div> -->
                    </form>
                  </div>
                </div>
                <!--  / tabpanel  RECIBE --> 
                                
                <!-- tabpanel  NUEVA ESTANTERIA --> 
                <div role="tabpanel" class="tab-pane" id="nuevaest">
                  <br>
                    <form id="est">
                      <div class="col-xs-12 col-md-6">
                        <label for="numestanteria">Cód. Estanteria <strong style="color: #dd4b39">*</strong></label> 
                        <input type="" class="form-control cleanEst" id="numestanteria" name="codigo" placeholder=" Ingrese código...">
                      </div>
                      <div class="col-xs-12 col-md-6">
                        <label for="numfila">Cantidad de Filas<strong style="color: #dd4b39">*</strong></label> 
                        <input type="" class="form-control cleanEst" id="numfila" name="fila" placeholder="Ingrese cantidad...">
                      </div>
                      <div class="col-xs-12">
                        <label for="descripcion">Descripción:</label>
                        <textarea class="form-control cleanEst" id="descripcion" name="descripcion"></textarea>
                      </div>
                      <div class="col-xs-12">
                        <br>
                        <button type="button" id="estNueva" class="botones btn btn-primary" onclick="guardarEstanteria()">Guardar Estanteria</button>
                      </div>
                    </form>
                  </div>
                </div> 
                <!-- / tabpanel  NUEVA ESTANTERIA --> 

              </div><!-- / tab-content -->
              <!-- / Tab panes --> 
                         
            </div><!-- / panel-body -->  

          </div><!-- / panel panel-default --> 

        </div><!-- / col-xs-12 -->
      </div>










    </div> <!--box-body-->

</div>
<!---///--- FIN BOX 1 ---///----->

<!---/////---BOX 2 DATATBLE ---/////----->
<div class="box box-primary">
  <div class="box-body">
      <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
          
        <div class="row">
              <div class="col-sm-6"></div>
              <div class="col-sm-6"></div>
          </div>

          <div class="row">
              <div class="col-sm-12 table-scroll" id="cargar_tabla">

              </div>
          </div>
          
      </div>
  </div>
</div>
<!---/////--- FIN BOX 2 DATATABLE---//////----->







<script>
  // carga tabla genaral de circuitos
  $("#cargar_tabla").load("<?php echo base_url(); ?>index.php/Trazacomp/listar");

  // muestra box de datos al dar click en boton agregar
  $("#botonAgregar").on("click", function() {

      $("#botonAgregar").attr("disabled", "");
      //$("#boxDatos").removeAttr("hidden");
      $("#boxDatos").focus();
      $("#boxDatos").show();
  });
	
	// muestra box de datos al dar click en X
	$("#btnclose").on("click", function() {

      $("#boxDatos").hide(500);
      $("#botonAgregar").removeAttr("disabled");
      //$('#formDatos').data('bootstrapValidator').resetForm();
      $("#formDatos")[0].reset();
  });
</script>





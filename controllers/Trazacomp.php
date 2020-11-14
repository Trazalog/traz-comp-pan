<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Representa entidad de trazabilidad de los componentes de equipos
*
* @autor Hugo Gallardo
*/
class Trazacomp extends CI_Controller {
  /**
  * Constructor de clase Trazacomp
  * @param 
  * @return 
  */
	function __construct()
    {
		parent::__construct();
		$this->load->model('Trazacomps');
	}

	public function index($permission = null)
  {
    $data['equipos'] = $this->Trazacomps->obtenerEquipos();
    $data['panoles'] = $this->Trazacomps->obtenerPanoles();
		$this->load->view('trazacomp/view_', $data);
  }

  /**
  * devuelve listado de operaciones de salida entradad de componentes
  * @param
  * @return array con listado
  */
  function listar()
  {
    log_message('INFO','#TRAZA|| >> ');
    $data['list']       = $this->Trazacomps->componentes_List();
    $this->load->view('trazacomp/list', $data);
  }

  /**
  * devuelve componentes segun equi_id
  * @param int equi_id
  * @return array componentes
  */
  function getComponente()
  {
    log_message('INFO','#TRAZA|| >> ');
    $compo = $this->Trazacomps->getComponentes($this->input->post('id_equipo'));
    echo json_encode($compo);
  }

  /**
  * devuelve componentes por pañol
  * @param int pano_id
  * @return  array de componentes en Estado 'PAÑOL' O 'RECPERADO'
  */
  function obtenerComponentesPanol()
  {
      $resp = $this->Trazacomps->obtenerComponentesPanol($this->input->post('pano_id'));
      echo json_encode($resp);
  }

  /**
  * devuelve estanterias por pañol
  * @param int pano_id
  * @return array con info de estanterias
  */
  function obtenerEstanterias()
  {
    $estanterias = $this->Trazacomps->obtenerEstanterias($this->input->post('pano_id'));
    echo json_encode($estanterias);
  }

  /**
  * devuelve vista con listado de estanterias
  * @param int pano_id
  * @return view llistado de estanterias por panol
  */
  function listarEstanteriasPorPanol()
  {
    //FIXME: DESHARDCODEAR PANOL CANDO TENGA OBTENER TODAS LAS ESTANTERIAS

    $panol = $this->input->post();  // revisar que maanda la vista
    $panol = 3;
    log_message('INFO','#TRAZA|| >> ');
    $data['estanterias'] = $this->Trazacomps->obtenerEstanterias($panol);
    $this->load->view('trazacomp/list_estanterias', $data);
    
  }

  /**
  * guarda estanteria nueva por empresa
  * @param array datos nueva estanteria
  * @return bool true o false resultado del servicio
  */
  function guardarEstateria()
  {
    log_message('INFO','#TRAZA|| >> ');

    $estanteria = $this->input->post();
    $estanteria['usuario_app'] = userNick();
    $estanteria['empr_id'] = empresa();
    $resp = $this->Trazacomps->guardarEstateria($estanteria);
    echo json_encode($resp);
  }

  /**
  * gurad recepcion de componentes
  * @param array con info de la recepcion
  * @return bool true o false rresultado del servicio
  */
  function guardaRecibe()
  {
    $operacion = "recepcion";
    $data = $this->input->post('table');
    $data["_post_traza_componente_equipo"] = $this->completarDatos($data, $operacion);
    log_message('INFO','#TRAZA|| >> ');
    $resp = $this->Trazacomps->guardaRecibe($data);
    echo json_encode($resp);
  }

  /**
  * completa el array con datso adicionales para guardar
  * @param array con datos de la vista
  * @return array con datos adicionales
  */
  function completarDatos($data, $operacion){

    if ($operacion == "recepcion") {

        foreach ($data as $key => $value) {

          $coeq_id = $this->Trazacomps->obtenerIdCompoEquipo($value['equi_id'], $value['comp_id']);
          $data[$key]["coeq_id"] = $coeq_id;
          $data[$key]["estado"] = "PAÑOL"; //entra a pañol  cambia de estado
          $data[$key]["empr_id"] = empresa();
          $data[$key]["usuario_app"] = userNick();
          //quito datos que no se guardan
          unset($data[$key]["equi_id"]);
          unset($data[$key]["comp_id"]);
        }
    } else {  //entrega

        foreach ($data as $key => $value) {

          if ($data[$key]['receptor'] == 'externo') {
              $data[$key]["estado"] = "TRANSITO"; //entra a pañol  cambia de estado
          } else {
              $data[$key]["estado"] = "RECUPERADO";
          }

          $data[$key]["empr_id"] = empresa();
          $data[$key]["usuario_app"] = userNick();
          //quito datos que no se guardan
          unset($data[$key]["equi_id"]);
          unset($data[$key]["comp_id"]);
          unset($data[$key]["receptor"]);
        }
    }

    return $data;
  }

  /**
  * guarda moviemiento de entrega de componenetes a personal inerno o externo
  * @param array con info de entrega
  * @return bool true o false segun respusesa de servicio
  */
  function guardaEntrega()
  {

    $operacion = "entrega";
    $data = $this->input->post('table');
    $datos["_post_traza_componente_equipo_entrega"] = $this->completarDatos($data, $operacion);
    $resp = $this->Trazacomps->guardaEntrega($datos);
    echo json_encode($resp);
  }


	// public function recibEntrega($permission = null)
  //   {
	// 	$data['permission'] = $permission;
	// 	$this->load->view('trazacomp/view_', $data);
	// }

  //   public function getEquipEstanteria()
  //   {
  //     $response = $this->Trazacomps->getEquipEstanterias($this->input->post());
  //     echo json_encode($response);
  //   }

	  // public function getEquipo()
    // {
    //   $response = $this->Trazacomps->getEquipos($this->input->post());
    //   echo json_encode($response);
    // }

  //   public function getComponente()
  //   {
  //     $response = $this->Trazacomps->getComponentes($this->input->post());      
  //     echo json_encode($response);
  //   }

  //   public function getEstanteria()
  //   {
  //   	$response = $this->Trazacomps->getEstanterias();	
  //   	echo json_encode($response);
  //   }

  //   public function getFila()
  //   {
  //   	$response = $this->Trazacomps->getFilas($this->input->post());	    	
  //   	echo json_encode($response);
  //   }

	// public function setEstantComponente()
  //   {
  //       $data  = $this->input->post('data');
  //       $datos = json_decode($data,true);	// decodifica el json que viene de la vista		
  //       $info  = array_splice($datos,-3);  	// corto los 3 utimos compnentes del array		
  //       $tipo  = $info[2]['tipo'];			// tipo de operacion		
		
	// 	if ($tipo === 'entrega')
  //       {
	// 		$response = $this->Trazacomps->setEntregaComponentes($datos, $info);
	// 		echo json_encode($response);
	// 	}
  //       else
  //       {
	// 		$response = $this->Trazacomps->setReciboComponentes($datos, $info);
	// 		echo json_encode($response);
	// 	}
	// }

	// public function setEstantNueva()
  //   {
	// 	$data     = $this->input->post();
	// 	$response = $this->Trazacomps->setEstantNuevas($data);
  //   	echo json_encode($response);
	// }
	
}

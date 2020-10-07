<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Trazacomp extends CI_Controller {

	function __construct()
    {
		parent::__construct();
		$this->load->model('Trazacomps');
	}

	public function index($permission = null)
    {
        $data['list']       = $this->Trazacomps->componentes_List();
        $data['permission'] = $permission;
		$this->load->view('trazacomp/list', $data);
	}

	public function recibEntrega($permission = null)
    {
		$data['permission'] = $permission;
		$this->load->view('trazacomp/view_', $data);
	}

    public function getEquipEstanteria()
    {
      $response = $this->Trazacomps->getEquipEstanterias($this->input->post());
      echo json_encode($response);
    }

	public function getEquipo()
    {
      $response = $this->Trazacomps->getEquipos($this->input->post());
      echo json_encode($response);
    }

    public function getComponente()
    {
      $response = $this->Trazacomps->getComponentes($this->input->post());      
      echo json_encode($response);
    }

    public function getEstanteria()
    {
    	$response = $this->Trazacomps->getEstanterias();	
    	echo json_encode($response);
    }

    public function getFila()
    {
    	$response = $this->Trazacomps->getFilas($this->input->post());	    	
    	echo json_encode($response);
    }

	public function setEstantComponente()
    {
        $data  = $this->input->post('data');
        $datos = json_decode($data,true);	// decodifica el json que viene de la vista		
        $info  = array_splice($datos,-3);  	// corto los 3 utimos compnentes del array		
        $tipo  = $info[2]['tipo'];			// tipo de operacion		
		
		if ($tipo === 'entrega')
        {
			$response = $this->Trazacomps->setEntregaComponentes($datos, $info);
			echo json_encode($response);
		}
        else
        {
			$response = $this->Trazacomps->setReciboComponentes($datos, $info);
			echo json_encode($response);
		}
	}
	
	public function setEstantNueva()
    {
		$data     = $this->input->post();
		$response = $this->Trazacomps->setEstantNuevas($data);
    	echo json_encode($response);
	}
	
}

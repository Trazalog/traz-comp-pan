<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Clase de Assetcloud Herramienta
 *
 * Maneja las Herramientas de pañol
 *
 * @package     Assetcloud
 */
class Herramienta extends CI_Controller {

    /**
     * Clase constructora
     *
     * Carga el modelo de Herramientas.
     *
     * @return  void
     */
	function __construct()
    {
		parent::__construct();
		$this->load->model('Herramientas');
		
	}

    /**
     * Controlador por defecto. Muestra listado de las herramientas.
     *
     * @param   string  $permission     Permisos de visualización.
     * @return  void
     */
	public function index($permission = null)
	{
        $data['list']       = $this->Herramientas->listar_herramientas();
        $data['permission'] = $permission;
		$this->load->view('herramienta/list', $data);
	}

    public function edit_herramienta()
    {
        $datos  = $this->input->post('parametros');
        $id     = $this->input->post('ed');
        $result = $this->Herramientas->update_editar($datos,$id);
        return true;
    }

    public function agregar_herramienta()
    {
        if($_POST){
            $datos  = $this->input->post('parametros');
            $existe = $this->Herramientas->existeHerramienta( $datos['herrcodigo'] );
            if($existe) {
                echo "existe";
            } else {
                $result = $this->Herramientas->agregar_herramientas($datos);
                if($result)
                    echo $this->db->insert_id();
                else echo 0;
            }
        }
    }

    public function baja_herramienta()
    {
        $idherr = $_POST['id_herr'];
        $result = $this->Herramientas->eliminacion($idherr);
        print_r($result);
    }

	public function getMarca()
    {
		$this->load->model('Herramientas');
		$empresa = $this->Herramientas->getMarcas();
		if($empresa)
		{	
			$arre=array();
	        foreach ($empresa as $row ) 
	        {   
	           $arre[]=$row;
	        }
			echo json_encode($arre);
		}
		else echo "nada";
	}

	public function getdeposito()
    {
		$this->load->model('Herramientas');
		$empresa = $this->Herramientas->getdepositos();
		if($empresa)
		{	
			$arre=array();
	        foreach ($empresa as $row ) 
	        {   
	           $arre[]=$row;
	        }
			echo json_encode($arre);
		}
		else echo "nada";
	}

    public function getpencil()
    {
        $id=$_GET['idh'];
        $result = $this->Herramientas->getpencil($id);
        print_r(json_encode($result));
    }


}
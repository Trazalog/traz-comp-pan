<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Representa la Entidad Herramientas
*
* @autor Hugo Gallardo
*/
class Herramienta extends CI_Controller {


	function __construct()
		{
		parent::__construct();
		$this->load->model('Herramientas');
		
	}

 /**
 * Controlador por defecto. Muestra listado de las herramientas.
 *
 * @param
 * @return  void
 */
	public function index()
	{
		//$data['list'] = $this->Herramientas->listar_herramientas();
		$data['marcas'] = $this->Herramientas->obtenerMarcas();
		$data['panoles'] = $this->Herramientas->obtenerPanoles();
		$this->load->view('herramienta/view_', $data);
	}


	/**
	* Obtiene listado de herramientas
	* @param
	* @return array con herramientas
	*/
	function listarHerramientas()
	{
		log_message('INFO','#TRAZA|| >> ');
		$data['list'] = $this->Herramientas->listarHerramientas();
		$this->load->view('herramienta/list', $data);
	}


	/**
	* devuelve pañoles propios de una empresa
	* @param
	* @return array con pañoles
	*/
	public function obtenerPanoles(){
		log_message('INFO','#TRAZA|TRAZ-COMP-PANOL|HERRAMIENTAS|OBTENERPANOLES >> ');
		$resp = $this->Herramientas->obtenerPanoles();
		echo json_encode($resp);
	}

	/**
	* devuelve marcas de herramientas
	* @param
	* @return array marcas
	*/
	function obtenerMarcas()
	{
		log_message('INFO','#TRAZA|TRAZ-COMP-PANOL|HERRAMIENTAS|OBTENERMARCAS >> ');
		$resp = $this->Herramientas->obtenerMarcas();
		echo json_encode($resp);
	}

	public function guardar()
	{

				$datos  = $this->input->post('herramientas');


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


	public function edit_herramienta()
	{
			$datos  = $this->input->post('parametros');
			$id     = $this->input->post('ed');
			$result = $this->Herramientas->update_editar($datos,$id);
			return true;
	}


	/**
	* Borrado de herramienta por id
	* @param
	* @return bool true o false
	*/
	public function borrarHerramienta()
	{
		log_message('INFO','#TRAZA|TRAZ-COMP-PANOL|HERRAMIENTAS|BORRARHERRAMIENTAS >> ');
		$herr_id = $this->input->post('herr_id');
		$result = $this->Herramientas->borrarHerramienta($herr_id);
		echo json_encode($result);
	}



}
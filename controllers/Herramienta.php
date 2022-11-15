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
		$data['marcas'] = $this->Herramientas->obtenerMarcas();
		$data['establecimientos'] = $this->Herramientas->obtenerEstablecimientos();
		//$data['panoles'] = $this->Herramientas->obtenerPanoles();
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
		$resp = $this->Herramientas->obtenerPanoles($this->input->post('esta_id'));
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


	/**
	* guarda herramientas en pañol
	* @param array herramientas
	* @return bool true o false segun resultado de servicio de guardado
	*/
	function guardar()
	{

		$herram = $this->input->post('datos');
		$herram['usuario_app'] = userNick();
		$herram['empr_id'] = empresa();
		$resp = $this->Herramientas->guardar($herram);
		if ($resp != null) {
			return json_encode(true);
		} else {
			return json_encode(false);
		}
	}

	/**
	* Edita la info de herramienta
	* @param array con informacion de herramienta
	* @return bool true o false respuesta del servicio
	*/
	function editar()
	{
		$herram = $this->input->post('datos');
		$herram['usuario_app'] = userNick();
		$herram['empr_id'] = empresa();
		$resp = $this->Herramientas->editar($herram);
		echo json_encode($resp);
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

	/**
	* Recibe id de Herramienta, para validar si el estado = Transito
	* @param integer id Herramienta
	* @return array respuesta del servicio
	*/
	public function validarEstado(){
		log_message('INFO','#TRAZA | #TRAZ-COMP-PANOL | Herramienta | validarEstado');	
		$herr_id = $this->input->post('herr_id');
		$resp = $this->Herramientas->validarEstado($herr_id);			
		echo json_encode($resp);
	}

}
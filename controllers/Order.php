<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Representa entidad Salida de herramientas
*
* @autor Hugo Gallardo
*/
class Order extends CI_Controller {

	/**
	* constructor de clase
	* @param
	* @return void
	*/
    public function __construct()
    {
	parent::__construct();
	$this->load->model('Orders');
	}

	/**
	* Carga vista Vale salida con herramientas propias de la empresa para seleccionar
	* @param
	* @return void
	*/

    public function index($permission = null)
    {
	$data['establecimientos'] = $this->Orders->obtenerEstablecimientos();
	$this->load->view('orders/view_',$data);
	}

	/**
	* devuelve pañoles propios de una empresa
	* @param
	* @return array con pañoles
	*/
	public function obtenerPanoles()
	{
		log_message('INFO','#TRAZA|TRAZ-COMP-PANOL|HERRAMIENTAS|OBTENERPANOLES >> ');
		$resp = $this->Orders->obtenerPanoles($this->input->post('esta_id'));
		echo json_encode($resp);
	}

	/**
	* carga tabla con listado de salidas de herramientas
	* @param
	* @return view listado salidas
	*/
	function listarSalidas()
	{
		log_message('INFO','#TRAZA|| >> ');
		$data["list"] = $this->Orders->listarSalidas();
		$this->load->view('orders/list',$data);			
	}

	/**
	* Obtiene herramientas por pañol
	* @param int pano_id
	* @return array herramientas por pañol
	*/
	function obtenerHerramientasPanol()
	{
		log_message('INFO','#TRAZA|| >> ');
		$pano_id = $this->input->post('pano_id');
		$resp = $this->Orders->obtenerHerramientasPanol($pano_id);
		echo json_encode($resp);
	}

	/**
	* Obtiene encargados por pañol
	* @param int pano_id
	* @return array encargados por pañol
	*/
	function obtenerEncargadosPanol()
	{
		log_message('INFO','#TRAZA|| >> ');
		$pano_id = $this->input->post('pano_id');
		$resp = $this->Orders->obtenerEncargadosPanol($pano_id);
		echo json_encode($resp);
	}

	/**
	* Guarda vale de salida de herramientas de un pañol
	* @param
	* @return bool true or false
	*/
	function guardar()
	{
		$cabecera = $this->input->post('datos');
		// $cabecera['empr_id'] = empresa();
		// $cabecera['usuario_app'] = userNick();
		// $cabecera['responsable'] = userNick();
		$herram = json_decode($this->input->post('tools'));
		log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|ORDER|GUARDAR $herram: >> '.json_encode($this->input->post($herram)));

		// guarda cabecera salida herramientas
		$sapa_id = $this->Orders->guardar($cabecera);

		if ( !$sapa_id ) {
			log_message('ERROR','#TRAZA|TRAZ-COMP-PAN|ORDER|GUARDAR >> ERROR: "NO GUARDO CABECERA SALIDA DE HERRAMIENTAS ');
			echo json_encode(false);
			return;
		}

		// guarda detalle de salida de herramientas
		$detalle = array();
		$tmp = array();
		foreach ($herram as $value) {
			$tmp['sapa_id'] = $sapa_id;
			$tmp['herr_id'] = $value;
			array_push($detalle, $tmp);
		}
		$data['_postpanol_salida_herramientas'] = $detalle;

		if ( !($this->Orders->guardarDetalle($data)) ) {
			log_message('ERROR','#TRAZA|TRAZ-COMP-PAN|ORDER|GUARDAR >> ERROR: "NO GUARDO DETALLE SALIDA DE HERRAMIENTAS ');
			echo json_encode(false);
			return;
		}

		// cambia el estado de las herramientas
		$est = array();
		$tmp2 = array();
		$herramEst = array();
		foreach ($herram as $value) {
			$tmp2['herr_id'] = $value;
			$tmp2['estado'] = 'TRANSITO';
			array_push($est, $tmp2);
		}
		$herramEst['_put_herramientas_estado'] = $est;
		$this->Orders->setEstadoHerramientas($herramEst);
		echo json_encode(true);
	}
}

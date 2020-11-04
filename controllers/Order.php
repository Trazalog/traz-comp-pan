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
				$data['panoles'] = $this->Orders->obtenerPanoles();
        $this->load->view('orders/view_',$data);
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
     //$data['puntos_criticos'] = $this->Circuitos->obtener_Punto_Critico();  
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
		* Guarda vale de salida de herramientas de un pañol
		* @param
		* @return bool true or false
		*/
		function guardar()
		{
			$cabecera = $this->input->post('datos');
			$cabecera['empr_id'] = empresa();
			$herram = json_decode($this->input->post('tools'));
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|ORDER|GUARDAR post >> '.json_encode($this->input->post()));

			// guarda cabecera salida herramientas
			$sapa_id = $this->Orders->guardar($cabecera);

			// guarda detalle de salida de herramientas
			$detalle = array();
			$tmp = array();
			foreach ($herram as $value) {
				$tmp['sapa_id'] = $sapa_id;
				$tmp['herr_id'] = $value;
				array_push($detalle, $tmp);
			}
			$data['_postpanol_salida_herramientas'] = $detalle;
			$this->Orders->guardarDetalle($data );

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


			return;


		}


}

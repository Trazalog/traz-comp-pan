<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Unload extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Unloads');
    }

    /**
		* Carga vista Vale salida con herramientas propias de la empresa para seleccionar
		* @param
		* @return void
		*/
		public function index()
		{
				$data['panoles'] = $this->Unloads->obtenerPanoles();
				$this->load->view('unloads/view_',$data);
		}

		/**
		* carga tabla con listado de salidas de herramientas
		* @param
		* @return view listado salidas
		*/
		function listarEntradas()
		{
			log_message('INFO','#TRAZA|| >> ');
			$data["list"] = $this->Unloads->listarEntradas();
     //$data['puntos_criticos'] = $this->Circuitos->obtener_Punto_Critico();  
     $this->load->view('unloads/list',$data);
			
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
			$enpa_id = $this->Unloads->guardar($cabecera);

			// guarda detalle de salida de herramientas
			$detalle = array();
			$tmp = array();
			foreach ($herram as $value) {
				$tmp['enpa_id'] = $enpa_id;
				$tmp['herr_id'] = $value;
				array_push($detalle, $tmp);
			}
			$data['_postpanol_entrada_herramientas'] = $detalle;
			$this->Unloads->guardarDetalle($data );

			// cambia el estado de las herramientas
			$est = array();
			$tmp2 = array();
			$herramEst = array();
			foreach ($herram as $value) {
				$tmp2['herr_id'] = $value;
				$tmp2['estado'] = 'ACTIVO';
				array_push($est, $tmp2);
			}
			$herramEst['_put_herramientas_estado'] = $est;
			$this->Unloads->setEstadoHerramientas($herramEst);


			return;


		}



}

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
				$data['establecimientos'] = $this->Unloads->obtenerEstablecimientos();
				$this->load->view('unloads/view_',$data);
		}

		/**
		* devuelve pañoles propios de una empresa
		* @param
		* @return array con pañoles
		*/
		public function obtenerPanoles(){
			log_message('INFO','#TRAZA|TRAZ-COMP-PANOL|HERRAMIENTAS|OBTENERPANOLES >> ');
			$resp = $this->Unloads->obtenerPanoles($this->input->post('esta_id'));
			echo json_encode($resp);
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
			$resp = $this->Unloads->obtenerHerramientasPanol($pano_id);
			echo json_encode($resp);
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
			// $cabecera['empr_id'] = empresa();
			$herram = json_decode($this->input->post('tools'));
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|ORDER|GUARDAR post >> '.json_encode($this->input->post()));

			// guarda cabecera salida herramientas
			$enpa_id = $this->Unloads->guardar($cabecera);

			if ( !$enpa_id ) {
				log_message('ERROR','#TRAZA|TRAZ-COMP-PAN|UNLOAD|GUARDAR >> ERROR: "NO GUARDO CABECERA ENTRADA DE HERRAMIENTAS ');
				echo json_encode(false);
				return;
			}

			// guarda detalle de salida de herramientas
			$detalle = array();
			$tmp = array();
			foreach ($herram as $value) {
				$tmp['enpa_id'] = $enpa_id;
				$tmp['herr_id'] = $value;
				array_push($detalle, $tmp);
			}
			$data['_postpanol_entrada_herramientas'] = $detalle;

			if ( !($this->Unloads->guardarDetalle($data )) ) {
				log_message('ERROR','#TRAZA|TRAZ-COMP-PAN|UNLOAD|GUARDAR >> ERROR: "NO GUARDO DETALLE ENTRADA DE HERRAMIENTAS ');
				echo json_encode(false);
				return;
			}

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

			echo json_encode(true);
		}



}

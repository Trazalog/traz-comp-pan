<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Unloads extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

		/**
		* devuelve establecimientos por empr_id
		* @param
		* @return array con establecimientosde una empresa
		*/
		function obtenerEstablecimientos()
		{
			$empr_id = empresa();
			$aux = $this->rest->callAPI("GET",REST_PAN."/establecimientos/empresa/".$empr_id);
			$aux =json_decode($aux["data"]);
			return $aux->establecimientos->establecimiento;

		}

		/**
		* Obtiene los pañoles propios de una empresa
		* @param
		* @return array con pañoles
		*/
		function obtenerPanoles($esta_id){

			$aux = $this->rest->callAPI("GET",REST_PAN."/panol/establecimiento/".$esta_id);
			$aux =json_decode($aux["data"]);
			return $aux->panoles->panol;
		}

		/**
		* Devuelve listado de ordenes de salida de herramientas por empresa
		* @param
		* @return array con listado de herramientas
		*/
    function listarEntradas(){

			$empr_id = empresa();
			$aux = $this->rest->callAPI("GET", REST_PAN."/panol/entradas/empresa/".$empr_id);
			$aux =json_decode($aux["data"]);
			return $aux->entradas->entrada;
		}

		/**
		* Devuelve listado de herramientas por empresa
		* @param
		* @return array con listado de herramientas
		*/
    function obtenerHerramientasPanol($pano_id)
    {
			$estado = "TRANSITO";
			$aux = $this->rest->callAPI("GET",REST_PAN."/herramientas/panol/".$pano_id."/estado/".$estado);
			$aux =json_decode($aux["data"]);
			$herram = $aux->herramientas->herramienta;

			$tools = array();
			$i = 0;
			foreach ($herram as $value) {
				$tools[$i]['herrId'] = $value->herr_id;
				$tools[$i]['herrdescrip'] = $value->descripcion;
				$tools[$i]['herrmarca'] = $value->marca;
				$tools[$i]['marca_id'] = $value->marca_id;
				$tools[$i]['herrcodigo'] = $value->codigo;
				$tools[$i]['tipoid'] = $value->tipo;
				// $tools[$i]['depositodescrip'] = $value->pan_descrip;
				// $tools[$i]['depositoId'] = $value->pano_id;
				$tools[$i]['modelo'] = $value->modelo;
				//$tools[$i]['estado'] = $value->estado;
				$i++;
			}
			return $tools;
    }

		/**
		* Guarda Orden de salida herramientas
		* @param aray con herramientas
		* @return bool true o false
		*/
		function guardar($cabecera)
		{

			$post['_postpanol_entrada_herramientas'] = $cabecera;
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PANOL|UNLOADS|GUARDAR($herram) $post:  >> '.json_encode($post));
			$aux = $this->rest->callAPI("POST", REST_PAN."/panol/entrada/herramientas", $post);
			$aux =json_decode($aux["data"]);
			return $aux->respuesta->enpa_id;
		}

		/**
		* Guarda detalle de salida de herramientas
		* @param array con detalle de herramientas a guardar
		* @return bool resultado de servicio
		*/
		function guardarDetalle($data)
		{
			$post['_post_panol_entrada_herramientas_detalle_batch_req'] = $data;
			log_message('DEBUG','#TRAZATRAZ-COMP-PANOL|UNLOADS|GUARDARDETALLE($data) $data: >> '.json_encode($post));
			$aux = $this->rest->callAPI("POST", REST_PAN."/_post_panol_entrada_herramientas_detalle_batch_req", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
		}

		/**
		* Setea estado herramientas a TRANSITO
		* @param array con herr_id
		* @return bool true o false resultado del servicio
		*/
		function setEstadoHerramientas($herramEst)
		{
			$post['_put_herramientas_estado_batch_req'] = $herramEst;
			log_message('DEBUG','#TRAZA|ORDERS|SETESTADOHERRAMIENTAS $post >> '.json_encode($post));
			$aux = $this->rest->callAPI("PUT", REST_PAN."/_put_herramientas_estado_batch_req", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
		}
}

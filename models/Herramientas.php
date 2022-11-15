<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* Representa la Entidad Herramientas
*
* @autor Hugo Gallardo
*/
class Herramientas extends CI_Model
{
		/**
		* Constructor de clase herramientas
		* @param
		* @return
		*/
		function __construct()
		{
			parent::__construct();
		}

    /**
     * Devuelve un listado de las herramientas.
     *
     * @return  Array   Devuelve un arreglo con las herramientas.
     */
		function listarHerramientas()
		{
			$empre_id = empresa();
			$aux = $this->rest->callAPI("GET",REST_PAN."/herramientas/empresa/".$empre_id);
			$aux =json_decode($aux["data"]);
			$herram = $aux->herramientas->herramienta;
			return $herram;
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
		* devuelve marcas de herramientas
		* @param
		* @return array con marcas
		*/
		function obtenerMarcas()
		{
			log_message('INFO','#TRAZA|| >> ');
			$aux = $this->rest->callAPI("GET",REST_CORE."/tabla/marcas_herramientas/empresa/".empresa());
			$aux =json_decode($aux["data"]);
			return $aux->tablas->tabla;
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
		* Borra herramienta
		* @param	int $herr_id
		* @return bool true o false resultado del servicio
		*/
    function borrarHerramienta($herr_id)
    {
			$post['_put_herramientas_borrar'] = array("herr_id"=> $herr_id);
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|HERRAMIENTAS $post: >> '.json_encode($post));
			$aux = $this->rest->callAPI("PUT",REST_PAN."/herramientas/borrar", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
    }

		/**
		* guarda herramienta en pañol
		* @param array con info de herramienta
		* @return bool resultado de servicio de guardado
		*/
		function guardar($herram)
		{
				$post['_post_herramientas'] = $herram;
				log_message('DEBUG','#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|GUARDAR  $post: >> '.json_encode($post));
				$aux = $this->rest->callAPI("POST",REST_PAN."/herramientas", $post);
				$aux = json_decode($aux["data"]);
				return $aux->respuesta->herr_id;
		}

		/**
		* edicion de herramienta
		* @param array con info de herramienta
		* @return bool respuesta de servicio
		*/
		function editar($herram)
		{
			$post['_put_herramientas'] = $herram;
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|HERRAMIENTAS|EDITAR $post: >> '.json_encode($post));
			$aux = $this->rest->callAPI("PUT",REST_PAN."/herramientas", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
		}

		/**
		* listado de herramientasdel pañol
		* @param integer id de pañol
		* @return array listado de herramientas
		*/
		public function obtenerHerramientasPanol($pano_id)
		{
			$estado = 'TODOS';
			$url = REST_PAN.'/herramientas/panol/'.$pano_id.'/estado/'.$estado;
			$array = $this->rest->callAPI("GET",$url);
			$resp =  json_decode($array['data']);
			return $resp;
		}

		/**
		* Consulta al service si la herramienta tiene estado = TRANSITO
		* @param integer id de la herramienta; empr_id
		* @return array respuesta del servicio
		*/
		public function validarEstado($herr_id){			
			$url = REST_PAN."/herramienta/validar/estado/". $herr_id . "/empresa/".empresa();		
			$aux = $this->rest->callAPI("GET",$url);
			$resp = json_decode($aux['data']);		
			log_message('DEBUG', "#TRAZA | #TRAZ-COMP-PANOL | HERRAMIENTAS | validarEstado() >> resp ".json_encode($resp));		
			return $resp->resultado;
		}

}

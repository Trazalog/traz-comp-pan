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
			$aux = $this->rest->callAPI("GET",REST_PAN."/tablas/marcas_herramientas");
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
		* deita edicion de herramienta
		* @param array con info
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

}

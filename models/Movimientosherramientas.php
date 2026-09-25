<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
* Representa la Entidad Herramientas
*
* @autor Pablo Marrelli
*/
class Movimientosherramientas extends CI_Model
{
		/**
		* Constructor de clase Movimientosherramientas
		* @param
		* @return
		*/
		function __construct()
		{
			parent::__construct();
		}



		function getMovimientosPaginados($empr_id, $search, $limit, $offset, $orderDir)
		{
			$params = http_build_query(array(
				'empr_id1'  => $empr_id,
				'empr_id2'  => $empr_id,
				'start'     => $offset,
				'page_size' => $limit,
				'search'    => $search
			));

			$url = REST_PAN . "/movimientos/herramientas?" . $params;

			$aux = $this->rest->callAPI("GET", $url);

			$aux = json_decode($aux['data']);

			$movimientos = $aux->movimientos->movimiento;

			$total = 0;

			if (!empty($movimientos)) {
				$total = $movimientos[0]->total_count;
			}

			return array(
				'movimientos' => $movimientos,
				'total' => $total
			);

		}

	/**
	* Obtiene los datos de salida por sepa_id
	* @param
	* @return array con datos salida
	*/
	function obtenerSalidaSepaId($sapa_id){

		$aux = $this->rest->callAPI("GET",REST_PAN."/panol/salida/".$sapa_id);
		$aux =json_decode($aux["data"]);
		return $aux->salidas->salida;
	}

	/**
	* Obtiene los datos de entrada por enpa_id
	* @param
	* @return array con datos entrada
	*/
	function obtenerEntradaEnpaId($enpa_id){

		$aux = $this->rest->callAPI("GET",REST_PAN."/panol/entrada/".$enpa_id);
		$aux =json_decode($aux["data"]);
		return $aux->entradas->entrada;
	}

}

?>
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
		* Devuelve un listado paginado de herramientas con total_count.
		* @param array $params  Claves: search, order_dir, page_size, start
		* @return object  Contiene ->herramienta (array) y ->total (int)
		*/
		function listarHerramientasPaginado($params = [])
		{
			$empre_id  = empresa();
			$search    = isset($params['search'])    ? $params['search']    : '';
			$order_dir = isset($params['order_dir']) ? $params['order_dir'] : 'asc';
			$page_size = isset($params['page_size']) ? (int)$params['page_size'] : 10;
			$start     = isset($params['start'])     ? (int)$params['start']     : 0;
			$dias_vencimiento = dias_vencimiento;

			$queryArgs = [
				'empr_id'   => $empre_id,
				'search'    => $search,
				'order_dir' => $order_dir,
				'page_size' => $page_size,
				'start'     => $start,
				'dias_vencimiento' => $dias_vencimiento
			];

			if (!empty($params['esta_id'])) {
				$queryArgs['esta_id'] = $params['esta_id'];
			}
			if (!empty($params['pano_id'])) {
				$queryArgs['pano_id'] = $params['pano_id'];
			}
			if (!empty($params['tipo'])) {
				$queryArgs['tipo'] = is_array($params['tipo']) ? implode(',', $params['tipo']) : $params['tipo'];
			}
			if (!empty($params['cert_vencer'])) {
				$queryArgs['cert_vencer'] = $params['cert_vencer'];
			}

			$qs = http_build_query($queryArgs);

			$url = REST_PAN."/herramientas/paginado?".$qs;
			log_message('DEBUG','#TRAZA|HERRAMIENTAS|listarHerramientasPaginado url: '.$url);
			$aux  = $this->rest->callAPI("GET", $url);
			$data = json_decode($aux['data']);

			$result = new stdClass();
			$herramientas = isset($data->herramientas->herramienta) ? $data->herramientas->herramienta : [];
			
			// WSO2 devuelve un objeto en vez de array cuando hay 1 solo resultado
			if (!is_array($herramientas) && is_object($herramientas)) {
				$herramientas = [$herramientas];
			} else if (!is_array($herramientas)) {
				$herramientas = [];
			}

			$result->herramienta = $herramientas;
			$result->total = (count($result->herramienta) > 0 && isset($result->herramienta[0]->total_count))
				? (int)$result->herramienta[0]->total_count : count($result->herramienta);
			return $result;
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
				return $aux;
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
		* Obtiene una herramienta por su id (sin filtro de empresa).
		* Usado por la vista publica accesible desde el QR.
		* @param integer $herr_id
		* @return object|null datos de la herramienta
		*/
		public function obtenerHerramientaPorId($herr_id)
		{
			$url = REST_PAN."/herramienta/".$herr_id;
			log_message('DEBUG','#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|obtenerHerramientaPorId url: '.$url);
			$aux  = $this->rest->callAPI("GET", $url);
			$data = json_decode($aux['data']);

			$herramientas = isset($data->herramientas->herramienta) ? $data->herramientas->herramienta : [];

			if (!is_array($herramientas) && is_object($herramientas)) {
				$herramientas = [$herramientas];
			} else if (!is_array($herramientas)) {
				$herramientas = [];
			}

			return count($herramientas) > 0 ? $herramientas[0] : null;
		}

		/**
		* Obtiene la fila enriquecida de una herramienta (incluye tipoHerramienta/colorTipo)
		* consultando el endpoint existente /herramientas/paginado.
		* Usado por la vista publica (QR) para renderizar los tags de tipo con color.
		* @param integer $empr_id
		* @param integer $herr_id
		* @return object|null
		*/
		function obtenerFilaPaginadoPorHerrId($empr_id, $herr_id)
		{
			$queryArgs = [
				'empr_id'          => $empr_id,
				'search'           => '',
				'order_dir'        => 'asc',
				'page_size'        => 1000000,
				'start'            => 0,
				'dias_vencimiento' => dias_vencimiento,
			];

			$qs  = http_build_query($queryArgs);
			$url = REST_PAN . "/herramientas/paginado?" . $qs;

			log_message('DEBUG', '#TRAZA|HERRAMIENTAS|obtenerFilaPaginadoPorHerrId url: ' . $url);

			$aux  = $this->rest->callAPI("GET", $url);
			$data = json_decode($aux['data']);

			$herramientas = isset($data->herramientas->herramienta)
				? $data->herramientas->herramienta
				: [];

			// WSO2 devuelve un objeto en vez de array cuando hay 1 solo resultado
			if (!is_array($herramientas) && is_object($herramientas)) {
				$herramientas = [$herramientas];
			} else if (!is_array($herramientas)) {
				$herramientas = [];
			}

			foreach ($herramientas as $row) {
				if ((string)$row->herr_id === (string)$herr_id) {
					return $row;
				}
			}

			return null;
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


		public function setTiposHerramienta($herr_id, $tipos)
		{
			$empr_id = empresa();

			if (!is_array($tipos)) {
				$tipos = [$tipos];
			}

			log_message(
				'DEBUG',
				'#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|setTiposHerramienta borrar tipos herr_id: >> '
				. $herr_id
			);

			$postEliminar['_post_herramientas_tipos_eliminar'] = array(
				'herr_id' => $herr_id
			);

			log_message(
				'DEBUG',
				'#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|setTiposHerramienta eliminar $post: >> '
				. json_encode($postEliminar)
			);

			$this->rest->callAPI(
				"POST",
				REST_PAN . "/herramientas/tipos/eliminar",
				$postEliminar
			);

			foreach ($tipos as $tipo) {

				$tipoConEmpresa = $empr_id . '-tipos_herramienta' . $tipo;

				$post['_post_herramientas_tipos'] = array(
					'herr_id' => $herr_id,
					'tipo_id'   => $tipoConEmpresa
				);

				log_message(
					'DEBUG',
					'#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|setTiposHerramienta insert $post: >> '
					. json_encode($post)
				);

				$this->rest->callAPI(
					"POST",
					REST_PAN . "/herramientas/tipos",
					$post
				);
			}

			return true;
		}


		/**
	* Setea estado herramientas a TRANSITO
	* @param array con herr_id
	* @return bool true o false resultado del servicio
	*/
	function setEstadoHerramientas($herramEst)
	{
		$post['_put_herramientas_estado_batch_req'] = $herramEst;
		log_message('DEBUG','#TRAZA|HERRAMIENTAS|SETESTADOHERRAMIENTAS $post >> '.json_encode($post));
		$aux = $this->rest->callAPI("PUT", REST_PAN."/_put_herramientas_estado_batch_req", $post);
		$aux =json_decode($aux["status"]);
		return $aux;
	}

	/**
	* Guarda registro de inhabilitacion/habilitacion de herramienta
	* @param array con herr_id, user_app, justificacion, tipo_movimiento
	* @return bool respuesta del servicio
	*/
	function setInhabilitacion($data)
	{
		$post['_post_inhabilitacion'] = array(
			'herr_id'       => strval($data['herr_id']),
			'user_app'      => strval($data['user_app']),
			'justificacion' => strval($data['justificacion'])
		);
		if (isset($data['tipo_movimiento'])) {
			$post['_post_inhabilitacion']['tipo_movimiento'] = strval($data['tipo_movimiento']);
		}
		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|SETINHABILITACION $post >> '.json_encode($post));
		$aux = $this->rest->callAPI("POST", REST_PAN."/inhabilitacion", $post);
		return json_decode($aux["status"]);
	}

	/**
	* Devuelve un listado paginado de movimientos de una herramienta.
	* Llama al endpoint /herramientas/movimientos
	* @param array $params  Claves: herr_id (obligatorio), tipo_movimiento, fecha_desde, fecha_hasta, busqueda, limit, offset
	* @return array  Contiene 'movimientos' (array) y 'total' (int)
	*/
	function listarMovimientosHerramienta($params = [])
	{
		$empr_id = isset($params['empr_id']) && $params['empr_id'] !== '' ? $params['empr_id'] : empresa();

		$queryArgs = [
			'empr_id'  => $empr_id,
			'herr_id'  => isset($params['herr_id']) ? $params['herr_id'] : '',
			'limit'    => isset($params['limit'])   ? (int)$params['limit']  : 10,
			'offset'   => isset($params['offset'])  ? (int)$params['offset'] : 0,
		];

		if (!empty($params['tipo_movimiento'])) {
			$queryArgs['tipo_movimiento'] = $params['tipo_movimiento'];
		}
		if (!empty($params['fecha_desde'])) {
			$queryArgs['fecha_desde'] = $params['fecha_desde'];
		}
		if (!empty($params['fecha_hasta'])) {
			$queryArgs['fecha_hasta'] = $params['fecha_hasta'];
		}
		if (!empty($params['busqueda'])) {
			$queryArgs['busqueda'] = $params['busqueda'];
		}

		$qs  = http_build_query($queryArgs);
		$url = REST_PAN . "/herramientas/movimientos?" . $qs;

		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|listarMovimientosHerramienta url: ' . $url);

		$aux  = $this->rest->callAPI("GET", $url);
		$data = json_decode($aux['data']);

		$movimientos = isset($data->movimientos->movimiento)
			? $data->movimientos->movimiento
			: [];

		// WSO2 devuelve un objeto en vez de array cuando hay 1 solo resultado
		if (!is_array($movimientos) && is_object($movimientos)) {
			$movimientos = [$movimientos];
		} else if (!is_array($movimientos)) {
			$movimientos = [];
		}

		$total = (count($movimientos) > 0 && isset($movimientos[0]->total_count))
			? (int)$movimientos[0]->total_count
			: count($movimientos);

		return [
			'movimientos' => $movimientos,
			'total'       => $total,
		];
	}

	/**
	* Guarda una nueva certificación de herramienta en WSO2
	* @param array $data con herr_id, fecha_hora, fec_vencimiento, entidad_id, adjunto
	* @return bool respuesta del servicio
	*/
	public function guardarCertificacion($data)
	{
		$post['_post_certificacion'] = [
			'herr_id'          => strval($data['herr_id']),
			'fecha_hora'       => strval($data['fecha_hora']),
			'fec_vencimiento'  => strval($data['fec_vencimiento']),
			'entidad_id'       => strval($data['entidad_id']),
			'adjunto'          => !empty($data['adjunto']) ? $data['adjunto'] : null,
			'adjunto_nombre'   => !empty($data['adjunto_nombre']) ? strval($data['adjunto_nombre']) : null,
		];

		log_message('DEBUG', '#TRAZA | HERRAMIENTAS | guardarCertificacion $post >> ' . json_encode($post));
		$aux = $this->rest->callAPI("POST", REST_PAN . "/certificacion", $post);
		return json_decode($aux["status"]);
	}
	/**
	* Devuelve un listado paginado de certificaciones de una herramienta.
	* Llama al endpoint /certificaciones/herramienta
	* @param array $params
	* @return array
	*/
	public function listarCertificacionesHerramienta($params = [])
	{
		$empr_id = isset($params['empr_id']) && $params['empr_id'] !== '' ? $params['empr_id'] : empresa();

		$queryArgs = [
			'empr_id'   => $empr_id,
			'herr_id'   => isset($params['herr_id']) ? $params['herr_id'] : '',
			'herr_id2'   => isset($params['herr_id']) ? $params['herr_id'] : '',
			'herr_id3'   => isset($params['herr_id']) ? $params['herr_id'] : '',
			'search'    => isset($params['search']) ? $params['search'] : '',
			'order_dir' => isset($params['order_dir']) ? $params['order_dir'] : 'desc',
			'page_size' => isset($params['page_size']) ? (int)$params['page_size'] : 10,
			'start'     => isset($params['start']) ? (int)$params['start'] : 0,
		];

		$qs  = http_build_query($queryArgs);
		$url = REST_PAN . "/certificaciones/herramienta?" . $qs;

		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|listarCertificacionesHerramienta url: ' . $url);

		$aux  = $this->rest->callAPI("GET", $url);
		$data = json_decode($aux['data']);

		$certificaciones = isset($data->certificaciones->certificacion)
			? $data->certificaciones->certificacion
			: [];

		// WSO2 devuelve un objeto en vez de array cuando hay 1 solo resultado
		if (!is_array($certificaciones) && is_object($certificaciones)) {
			$certificaciones = [$certificaciones];
		} else if (!is_array($certificaciones)) {
			$certificaciones = [];
		}

		$total = (count($certificaciones) > 0 && isset($certificaciones[0]->total_count))
			? (int)$certificaciones[0]->total_count
			: count($certificaciones);

		return [
			'certificaciones' => $certificaciones,
			'total'           => $total,
		];
	}

	/**
	* Guarda un checklist
	* @param array $data con herr_id, fecha_hora, responsable, username, info_id
	* @return bool respuesta del servicio
	*/
	public function setChecklist($data)
	{
		$post['_post_checklist'] = [
			'herr_id'     => strval($data['herr_id']),
			'fecha_hora'  => strval($data['fecha_hora']),
			'responsable' => strval($data['responsable']),
			'username'    => strval($data['username']),
			'info_id'     => strval($data['info_id'])
		];

		log_message('DEBUG', '#TRAZA | HERRAMIENTAS | setChecklist $post >> ' . json_encode($post));
		$aux = $this->rest->callAPI("POST", REST_PAN . "/checklist", $post);
		return json_decode($aux["status"]);
	}

	/**
	* Obtiene los items de una instancia de formulario (form dinámico) por info_id
	* @param integer $info_id
	* @return array items de la instancia del formulario
	*/
	public function obtenerFormularioChecklist($info_id)
	{
		$aux = $this->rest->callAPI("GET", REST_FRM . "/formulario/" . $info_id);
		$aux = json_decode($aux["data"]);

		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|obtenerFormularioChecklist info_id: ' . json_encode($info_id));
		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|obtenerFormularioChecklist resp: ' . json_encode($aux));

		$items = isset($aux->formulario->items->item) ? $aux->formulario->items->item : [];

		if (!is_array($items) && is_object($items)) {
			$items = [$items];
		} else if (!is_array($items)) {
			$items = [];
		}

		return $items;
	}

	/**
	* Devuelve un listado paginado de checklists de una herramienta.
	* @param array $params
	* @return array
	*/
	public function listarChecklistsHerramienta($params = [])
	{
		$empr_id = isset($params['empr_id']) && $params['empr_id'] !== '' ? $params['empr_id'] : empresa();

		$queryArgs = [
			'empr_id'   => $empr_id,
			'herr_id'   => isset($params['herr_id']) ? $params['herr_id'] : '',
			'search'    => isset($params['search']) ? $params['search'] : '',
			'order_dir' => isset($params['order_dir']) ? $params['order_dir'] : 'desc',
			'page_size' => isset($params['page_size']) ? (int)$params['page_size'] : 10,
			'start'     => isset($params['start']) ? (int)$params['start'] : 0,
		];

		$qs  = http_build_query($queryArgs);
		$url = REST_PAN . "/checklists/paginado?" . $qs;

		log_message('DEBUG', '#TRAZA|HERRAMIENTAS|listarChecklistsHerramienta url: ' . $url);

		$aux  = $this->rest->callAPI("GET", $url);
		$data = json_decode($aux['data']);

		$checklists = isset($data->checklists->checklist)
			? $data->checklists->checklist
			: [];

		if (!is_array($checklists) && is_object($checklists)) {
			$checklists = [$checklists];
		} else if (!is_array($checklists)) {
			$checklists = [];
		}

		$total = (count($checklists) > 0 && isset($checklists[0]->total_count))
			? (int)$checklists[0]->total_count
			: count($checklists);

		return [
			'checklists' => $checklists,
			'total'      => $total,
		];
	}

}

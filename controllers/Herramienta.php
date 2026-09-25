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
      	$this->load->model('core/Valores');    


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
		$data['tipos_herramienta'] = $this->Valores->getValor('tipos_herramienta');
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
		log_message('INFO','#TRAZA|TRAZ-COMP-PAN|Herramienta|listarHerramientas >> ');
		$data['form_id'] = $this->Valores->getTablaValor('configuraciones', 'formulario_checklist_herramientas');

		// Configuracion del QR de herramientas (valor fijo desde core.tablas)
		$qr_pixel = $this->Valores->getTablaValor('configuraciones', 'qr_herramienta_pixel');
		$qr_level = $this->Valores->getTablaValor('configuraciones', 'qr_herramienta_level');
		$qr_frame = $this->Valores->getTablaValor('configuraciones', 'qr_herramienta_framsize');

		$data['qr_herramienta_pixel']    = (!empty($qr_pixel)) ? $qr_pixel : '7';
		$data['qr_herramienta_level']    = (!empty($qr_level)) ? $qr_level : 'L';
		$data['qr_herramienta_framsize'] = (!empty($qr_frame)) ? $qr_frame : '2';

		$this->load->view('herramienta/list', $data);
	}

	/**
	* Devuelve JSON paginado de herramientas en formato DataTables server-side
	* draw, recordsTotal, recordsFiltered, data
	* @return JSON formato DataTables
	*/
	public function listarHerramientasPaginado()
	{
		log_message('INFO','#TRAZA|TRAZ-COMP-PAN|Herramienta|listarHerramientasPaginado >> ');
		$draw = intval($this->input->post('draw') ?: $this->input->get('draw') ?: 1);

		$search_post = $this->input->post('search');
		$search_get  = $this->input->get('search');
		$search_val  = '';
		if (is_array($search_post) && isset($search_post['value'])) {
			$search_val = $search_post['value'];
		} else if (is_array($search_get) && isset($search_get['value'])) {
			$search_val = $search_get['value'];
		} else if (is_string($search_post)) {
			$search_val = $search_post;
		} else if (is_string($search_get)) {
			$search_val = $search_get;
		}

		$order = $this->input->post('order') ?: $this->input->get('order');
		$order_dir = 'desc';
		if (!empty($order) && is_array($order) && isset($order[0]['dir'])) {
			$order_dir = strtolower($order[0]['dir']);
		} else if ($this->input->post('order_dir')) {
			$order_dir = strtolower($this->input->post('order_dir'));
		} else if ($this->input->get('order_dir')) {
			$order_dir = strtolower($this->input->get('order_dir'));
		}

		$page_size = intval($this->input->post('length') ?: $this->input->get('length') ?: 10);
		$start     = intval($this->input->post('start') ?: $this->input->get('start') ?: 0);

		$esta_id     = $this->input->post('esta_id') ?: $this->input->get('esta_id');
		$pano_id     = $this->input->post('pano_id') ?: $this->input->get('pano_id');
		$tipo        = $this->input->post('tipo') ?: $this->input->get('tipo');
		$cert_vencer = $this->input->post('cert_vencer') ?: $this->input->get('cert_vencer');

		$params = [
			'search'      => $search_val,
			'order_dir'   => $order_dir,
			'page_size'   => $page_size,
			'start'       => $start,
			'esta_id'     => $esta_id,
			'pano_id'     => $pano_id,
			'tipo'        => $tipo,
			'cert_vencer' => $cert_vencer,
		];
		$resultado = $this->Herramientas->listarHerramientasPaginado($params);

		$total = isset($resultado->herramienta[0]->total_count) ? intval($resultado->herramienta[0]->total_count) : 0;
		$herramientas = !empty($resultado->herramienta) ? array_values((array)$resultado->herramienta) : [];

		echo json_encode([
			'draw'            => $draw,
			'recordsTotal'    => $total,
			'recordsFiltered' => $total,
			'data'            => $herramientas,
		]);
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
		$empr_id = empresa();
		$herram = $this->input->post('datos');

		$data['pano_id']     = $herram['pano_id'];
		$data['codigo']      = $herram['codigo'];
		$data['descripcion'] = $herram['descripcion'];
		$data['modelo']      = $herram['modelo'];
		$data['marca']       = $herram['marca'];
		$data['usuario_app'] = userNick();
		$data['empr_id']     = $empr_id;

		// Obtener TODOS los tipos
		$tipos = [];

		if (isset($herram['tipo'])) {
			$tipos = is_array($herram['tipo'])
				? $herram['tipo']
				: [$herram['tipo']];
		}

		log_message(
			'DEBUG',
			'#TRAZA|TRAZA-COMP-PAN|HERRAMIENTAS|Tipos recibidos: >> '
			. json_encode($tipos)
		);

		// Guardar herramienta
		$resp = $this->Herramientas->guardar($data);

		if ($resp && !empty($tipos)) {

			// Si $resp es JSON
			$respObj = is_string($resp)
				? json_decode($resp)
				: $resp;

			// Si data viene como JSON
			if (isset($respObj['data']) && is_string($respObj['data'])) {
				$respObj = json_decode($respObj['data']);
			}

			// Obtener herr_id
			$nuevo_id = null;

			if (isset($respObj->respuesta->herr_id)) {
				$nuevo_id = $respObj->respuesta->herr_id;

			} else if (isset($respObj['respuesta']['herr_id'])) {
				$nuevo_id = $respObj['respuesta']['herr_id'];
			}

			// Guardar TODOS los tipos
			if ($nuevo_id) {
				$this->Herramientas->setTiposHerramienta(
					$nuevo_id,
					$tipos
				);
			}
		}

		echo json_encode($resp);
	}

	/**
	* Edita la info de herramienta
	* @param array con informacion de herramienta
	* @return bool true o false respuesta del servicio
	*/
	function editar()
	{
		$herram = $this->input->post('datos');
		$data['herr_id'] = $herram['herr_id'];
		$data['codigo']      = $herram['codigo'];
		$data['descripcion'] = $herram['descripcion'];
		$data['modelo']      = $herram['modelo'];
		$data['marca']       = $herram['marca'];
		$data['usuario_app'] = userNick();
		$data['empr_id']     = empresa();

		$tipos = isset($herram['tipo'])
			? (is_array($herram['tipo']) ? $herram['tipo'] : [$herram['tipo']])
			: [];
		$resp = $this->Herramientas->editar($data);

		if ($resp && !empty($herram['herr_id'])) {
			$this->Herramientas->setTiposHerramienta($herram['herr_id'], $tipos);
		}

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

	/**
	* Setea estado a herramientas (INHABILITADO / ACTIVO)
	* Guarda registro de movimiento (inhabilitación o habilitación) con justificación
	* @return bool true o false segun resultado de servicio de guardado
	*/
	public function setEstado(){
		$herr_id         = $this->input->post('herr_id');
		$estado          = $this->input->post('estado');
		$justificacion   = $this->input->post('justificacion');
		$tipo_movimiento = $this->input->post('tipo_movimiento') ? $this->input->post('tipo_movimiento') : $estado;

		if ($estado == 'INHABILITADO' || $estado == 'ACTIVO') {
			$datosInh = array(
				'herr_id'         => $herr_id,
				'user_app'        => userNick(),
				'justificacion'   => $justificacion ? $justificacion : 'Sin justificación',
				'tipo_movimiento' => $tipo_movimiento
			);
			$respInh = $this->Herramientas->setInhabilitacion($datosInh);
			log_message('DEBUG', '#TRAZA|HERRAMIENTA|setEstado respInh >> ' . json_encode($respInh));
		}

		$est = array();
		$tmp2 = array();
		$tmp2['herr_id'] = $herr_id;
		$tmp2['estado']  = $estado;
		array_push($est, $tmp2);

		$herramEst['_put_herramientas_estado'] = $est;
		$resp = $this->Herramientas->setEstadoHerramientas($herramEst);
		echo json_encode($resp);
	}

	/**
	* Devuelve JSON paginado de movimientos de una herramienta en formato DataTables server-side
	* Requiere herr_id obligatorio.
	* @return JSON formato DataTables
	*/
	public function listarMovimientosHerramientaPaginados()
	{
		log_message('INFO', '#TRAZA|TRAZ-COMP-PAN|Herramienta|listarMovimientosHerramientaPaginados >> ');

		$draw = intval($this->input->post('draw') ?: 1);

		// Búsqueda global de DataTables
		$search_post = $this->input->post('search');
		$search_val  = '';
		if (is_array($search_post) && isset($search_post['value'])) {
			$search_val = $search_post['value'];
		} else if (is_string($search_post)) {
			$search_val = $search_post;
		}

		$limit  = intval($this->input->post('length') ?: 10);
		$offset = intval($this->input->post('start') ?: 0);

		// Parámetros obligatorios y opcionales
		$herr_id          = $this->input->post('herr_id') ? $this->input->post('herr_id') : 'TODOS';
		$tipo_movimiento  = $this->input->post('tipo_movimiento') ? $this->input->post('tipo_movimiento') : 'TODOS';
		$fecha_desde      = $this->input->post('fecha_desde') ? $this->input->post('fecha_desde') : 'TODOS';
		$fecha_hasta      = $this->input->post('fecha_hasta') ? $this->input->post('fecha_hasta') : 'TODOS';

		$params = [
			'herr_id'          => $herr_id,
			'tipo_movimiento'  => $tipo_movimiento,
			'fecha_desde'      => $fecha_desde,
			'fecha_hasta'      => $fecha_hasta,
			'busqueda'         => $search_val,
			'limit'            => $limit,
			'offset'           => $offset,
		];

		$resultado   = $this->Herramientas->listarMovimientosHerramienta($params);
		$total       = $resultado['total'];
		$movimientos = $resultado['movimientos'];

		// Formatear fechas ISO a dd-mm-aa hh:mm:ss
		if (!empty($movimientos)) {
			foreach ($movimientos as &$row) {
				$fec = isset($row->fecha_hora) ? $row->fecha_hora : (isset($row->fec_alta) ? $row->fec_alta : '');
				if ($fec !== '' && $fec !== null) {
					$formateada = date("d-m-y H:i:s", strtotime($fec));
					$row->fecha_hora = $formateada;
					$row->fec_alta   = $formateada;
				}
			}
		}

		echo json_encode([
			'draw'            => $draw,
			'recordsTotal'    => intval($total),
			'recordsFiltered' => intval($total),
			'data'            => !empty($movimientos) ? array_values((array)$movimientos) : [],
		]);
	}

	public function getEntidadesCertificadoras()
	{
		$entidades = $this->Valores->getValor('entidad_certificadora');
		echo json_encode($entidades);
	}

	/**
	* Guarda la certificación recibiendo los datos del modal
	* Parámetros esperados por WSO2: herr_id, fecha_hora, fec_vencimiento, entidad_id, adjunto
	*/
	public function guardarCertificacion()
	{
		log_message('DEBUG', '#TRAZA | #TRAZ-COMP-PAN | Herramienta | guardarCertificacion()');

		$fecha_hora_raw = $this->input->post('fecha_hora');
		$fec_venc_raw   = $this->input->post('fec_vencimiento');

		// Formatear a formato compatible con timestamp de PostgreSQL (YYYY-MM-DD HH:MM:SS)
		$fecha_hora = !empty($fecha_hora_raw) ? date('Y-m-d H:i:s', strtotime($fecha_hora_raw)) : date('Y-m-d H:i:s');
		$fec_venc   = !empty($fec_venc_raw) ? date('Y-m-d 00:00:00', strtotime($fec_venc_raw)) : null;

		$data = [
			'herr_id'         => $this->input->post('herr_id'),
			'fecha_hora'      => $fecha_hora,
			'fec_vencimiento' => $fec_venc,
			'entidad_id'      => $this->input->post('entidad_id'),
			'adjunto'         => null
		];

		// Si viene archivo adjunto, codificar a base64 con prefijo MIME (patrón obtenerExtension del SKILL.md)
		if (!empty($_FILES['adjunto_certificado']['tmp_name']) && is_uploaded_file($_FILES['adjunto_certificado']['tmp_name'])) {
			$nombre_archivo = $_FILES['adjunto_certificado']['name'];
			$ext_arr = explode('.', $nombre_archivo);
			$extension = strtolower(array_pop($ext_arr));
			$mime_prefix = '';
			switch ($extension) {
				case 'jpg':   $mime_prefix = 'data:image/jpg;base64,'; break;
				case 'jpeg':  $mime_prefix = 'data:image/jpeg;base64,'; break;
				case 'jfif':  $mime_prefix = 'data:image/jpeg;base64,'; break;
				case 'png':   $mime_prefix = 'data:image/png;base64,'; break;
				case 'webp':  $mime_prefix = 'data:image/webp;base64,'; break;
				case 'pdf':   $mime_prefix = 'data:application/pdf;base64,'; break;
				case 'doc':   $mime_prefix = 'data:application/msword;base64,'; break;
				case 'docx':  $mime_prefix = 'data:application/vnd.openxmlformats-officedocument.wordprocessingml.document;base64,'; break;
				case 'xls':   $mime_prefix = 'data:application/vnd.ms-excel;base64,'; break;
				case 'xlsx':  $mime_prefix = 'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,'; break;
				case 'txt':   $mime_prefix = 'data:text/plain;base64,'; break;
				case 'csv':   $mime_prefix = 'data:text/csv;base64,'; break;
				default:      $mime_prefix = 'data:application/octet-stream;base64,'; break;
			}
			$data['adjunto'] = $mime_prefix . base64_encode(file_get_contents($_FILES['adjunto_certificado']['tmp_name']));
			$data['adjunto_nombre'] = $nombre_archivo;
		}

		$resp = $this->Herramientas->guardarCertificacion($data);
		echo json_encode($resp);
	}

	/**
	* Devuelve JSON paginado de certificaciones de una herramienta en formato DataTables server-side
	* Requiere herr_id obligatorio.
	* @return JSON formato DataTables
	*/
	public function listarCertificacionesHerramientaPaginadas()
	{
		log_message('INFO', '#TRAZA|TRAZ-COMP-PAN|Herramienta|listarCertificacionesHerramientaPaginadas >> ');

		$draw = intval($this->input->post('draw') ?: $this->input->get('draw') ?: 1);

		$search_post = $this->input->post('search');
		$search_val  = '';
		if (is_array($search_post) && isset($search_post['value'])) {
			$search_val = $search_post['value'];
		} else if (is_string($search_post)) {
			$search_val = $search_post;
		}

		$order = $this->input->post('order') ?: $this->input->get('order');
		$order_dir = 'desc';
		if (!empty($order) && is_array($order) && isset($order[0]['dir'])) {
			$order_dir = strtolower($order[0]['dir']);
		}

		$page_size = intval($this->input->post('length') ?: $this->input->get('length') ?: 10);
		$start     = intval($this->input->post('start') ?: $this->input->get('start') ?: 0);

		$herr_id = $this->input->post('herr_id') ?: $this->input->get('herr_id');

		$params = [
			'herr_id'   => $herr_id,
			'herr_id2'   => $herr_id,
			'herr_id3'   => $herr_id,
			'search'    => $search_val,
			'order_dir' => $order_dir,
			'page_size' => $page_size,
			'start'     => $start,
		];

		$resultado = $this->Herramientas->listarCertificacionesHerramienta($params);
		$total = $resultado['total'];
		$certificaciones = $resultado['certificaciones'];

		// Formatear fechas a dd-mm-aa hh:mm:ss
		if (!empty($certificaciones)) {
			foreach ($certificaciones as &$row) {
				if (isset($row->fecha_hora) && $row->fecha_hora !== '' && $row->fecha_hora !== null) {
					$row->fecha_hora = date("d-m-y H:i:s", strtotime($row->fecha_hora));
				}
				if (isset($row->fec_vencimiento) && $row->fec_vencimiento !== '' && $row->fec_vencimiento !== null) {
					$row->fec_vencimiento = date("d-m-Y", strtotime($row->fec_vencimiento));
				}
			}
		}

		echo json_encode([
			'draw'            => $draw,
			'recordsTotal'    => intval($total),
			'recordsFiltered' => intval($total),
			'data'            => !empty($certificaciones) ? array_values((array)$certificaciones) : [],
		]);
	}

	/**
	* Guarda el checklist recibiendo los datos del modal
	*/
	public function guardarChecklist()
	{
		log_message('DEBUG', '#TRAZA | #TRAZ-COMP-PAN | Herramienta | guardarChecklist()');

		$fecha_hora_raw = $this->input->post('fecha_hora');
		$fecha_hora = !empty($fecha_hora_raw) ? date('Y-m-d H:i:s', strtotime($fecha_hora_raw)) : date('Y-m-d H:i:s');

		$data = [
			'herr_id'     => $this->input->post('herr_id'),
			'fecha_hora'  => $fecha_hora,
			'responsable' => $this->session->userdata('id'),
			'username'    => userNick(),
			'info_id'     => $this->input->post('info_id')
		];

		if(empty($data['responsable'])) $data['responsable'] = 0;

		$resp = $this->Herramientas->setChecklist($data);
		echo json_encode($resp);
	}

	/**
	* Obtiene los datos del formulario dinámico de un checklist por info_id
	* @return JSON con los items de la instancia del formulario
	*/
	public function verChecklist()
	{
		log_message('DEBUG', '#TRAZA | #TRAZ-COMP-PAN | Herramienta | verChecklist()');

		$info_id = $this->input->post('info_id');
		$items   = $this->Herramientas->obtenerFormularioChecklist($info_id);

		echo json_encode([
			'status' => true,
			'data'   => $items,
		]);
	}

	/**
	* Devuelve JSON paginado de checklists de una herramienta
	*/
	public function listarChecklistsHerramientaPaginados()
	{
		log_message('INFO', '#TRAZA|TRAZ-COMP-PAN|Herramienta|listarChecklistsHerramientaPaginados >> ');

		$draw = intval($this->input->post('draw') ?: $this->input->get('draw') ?: 1);

		$search_post = $this->input->post('search');
		$search_val  = '';
		if (is_array($search_post) && isset($search_post['value'])) {
			$search_val = $search_post['value'];
		} else if (is_string($search_post)) {
			$search_val = $search_post;
		}

		$order = $this->input->post('order') ?: $this->input->get('order');
		$order_dir = 'desc';
		if (!empty($order) && is_array($order) && isset($order[0]['dir'])) {
			$order_dir = strtolower($order[0]['dir']);
		}

		$page_size = intval($this->input->post('length') ?: $this->input->get('length') ?: 10);
		$start     = intval($this->input->post('start') ?: $this->input->get('start') ?: 0);

		$herr_id = $this->input->post('herr_id') ?: $this->input->get('herr_id');

		$params = [
			'herr_id'   => $herr_id,
			'search'    => $search_val,
			'order_dir' => $order_dir,
			'page_size' => $page_size,
			'start'     => $start,
		];

		$resultado = $this->Herramientas->listarChecklistsHerramienta($params);
		$total = $resultado['total'];
		$checklists = $resultado['checklists'];

		if (!empty($checklists)) {
			foreach ($checklists as &$row) {
				if (isset($row->fecha_hora) && $row->fecha_hora !== '' && $row->fecha_hora !== null) {
					$row->fecha_hora = date("d-m-y H:i:s", strtotime($row->fecha_hora));
				}
			}
		}

		echo json_encode([
			'draw'            => $draw,
			'recordsTotal'    => intval($total),
			'recordsFiltered' => intval($total),
			'data'            => !empty($checklists) ? array_values((array)$checklists) : [],
		]);
	}

	/**
	* Vista publica de la herramienta accesible al escanear el QR con token.
	* No valida sesion: el acceso se resuelve por el token registrado en qru.urls.
	* @param
	* @return view herramienta/vista_qr_herramienta
	*/
	public function vistaQrHerramienta()
	{
		$herr_id = $this->input->get('id');
		log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|Herramienta|vistaQrHerramienta herr_id: '.$herr_id);

		$data['herramienta'] = $this->Herramientas->obtenerHerramientaPorId($herr_id);
		$h = $data['herramienta'];

		// Enriquecer tipo con color (tags) sin tocar el dataservice: se infiere el empr_id
		// desde el prefijo del marca_id ("{empr}-marcas_herramientas...") y se toma la fila
		// del endpoint existente /herramientas/paginado que expone tipoHerramienta/colorTipo.
		$empr_id = '';
		if ($h && preg_match('/^(\d+)-/', (string)$h->marca_id, $m)) {
			$empr_id = (int)$m[1];
			$fila = $this->Herramientas->obtenerFilaPaginadoPorHerrId($empr_id, $herr_id);
			if ($fila) {
				$h->tipoHerramienta = $fila->tipoHerramienta;
				$h->colorTipo       = $fila->colorTipo;
			}
		}

		// Datos de las pestanas (igual que el modal de la lupa), servidos server-side sin sesion.
		// DataTables clientes con datos embebidos en la vista.
		$data['empr_id']        = $empr_id;
		$data['movimientos']    = [];
		$data['certificaciones'] = [];
		$data['checklists']     = [];

		if ($h && $empr_id) {
			$mov = $this->Herramientas->listarMovimientosHerramienta([
				'empr_id' => $empr_id,
				'herr_id' => $herr_id,
				'limit'   => 1000000,
				'offset'  => 0,
			]);
			$data['movimientos'] = isset($mov['movimientos']) ? $mov['movimientos'] : [];

			$cert = $this->Herramientas->listarCertificacionesHerramienta([
				'empr_id'   => $empr_id,
				'herr_id'   => $herr_id,
				'page_size' => 1000000,
				'start'     => 0,
			]);
			$data['certificaciones'] = isset($cert['certificaciones']) ? $cert['certificaciones'] : [];

			$chk = $this->Herramientas->listarChecklistsHerramienta([
				'empr_id'   => $empr_id,
				'herr_id'   => $herr_id,
				'page_size' => 1000000,
				'start'     => 0,
			]);
			$data['checklists'] = isset($chk['checklists']) ? $chk['checklists'] : [];
		}

		// Formateo de fechas en la vista publica (mismo estandar dd-mm-aa hh:mm:ss)
		foreach ($data['movimientos'] as &$row) {
			$fec = isset($row->fecha_hora) ? $row->fecha_hora : (isset($row->fec_alta) ? $row->fec_alta : '');
			if ($fec !== '' && $fec !== null) {
				$formateada = date("d-m-y H:i:s", strtotime($fec));
				$row->fecha_hora = $formateada;
				$row->fec_alta   = $formateada;
			}
		}
		unset($row);

		foreach ($data['certificaciones'] as &$row) {
			if (isset($row->fecha_hora) && $row->fecha_hora !== '' && $row->fecha_hora !== null) {
				$row->fecha_hora = date("d-m-y H:i:s", strtotime($row->fecha_hora));
			}
			if (isset($row->fec_vencimiento) && $row->fec_vencimiento !== '' && $row->fec_vencimiento !== null) {
				$row->fec_vencimiento = date("d-m-Y", strtotime($row->fec_vencimiento));
			}
		}
		unset($row);

		foreach ($data['checklists'] as &$row) {
			if (isset($row->fecha_hora) && $row->fecha_hora !== '' && $row->fecha_hora !== null) {
				$row->fecha_hora = date("d-m-y H:i:s", strtotime($row->fecha_hora));
			}
		}
		unset($row);

		// Detalles de los formularios de cada checklist (para la lupa, sin AJAX: vista publica)
		$data['checklist_detalles'] = [];
		if (!empty($data['checklists'])) {
			foreach ($data['checklists'] as $row) {
				if (!empty($row->info_id)) {
					$data['checklist_detalles'][$row->info_id] = $this->Herramientas->obtenerFormularioChecklist($row->info_id);
				}
			}
		}

		$this->load->view(PAN.'herramienta/vista_qr_herramienta', $data);
	}

}
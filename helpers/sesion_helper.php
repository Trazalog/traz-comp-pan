<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Devuelve el id de usuario en Dnato (sistema login)
* @param
* @return string $userid (id de usuario logueado en sistema)
*/
if(!function_exists('userId')){

    function userId()
    {
				$ci =& get_instance();
				$user = userNick();
				$userBPM = $ci->bpm->getUser($user);
				$userid = $userBPM['data']['id'];
				return  $userid;
    }
}

/**
* Devuelve nick coincidente en dnato y BPM
* @param
* @return string $usernick
*/
if(!function_exists('userNick')){

    function userNick()
    {
        $ci =& get_instance();
        $usernick  = $ci->session->userdata('usernick');
				return  $usernick;
    }
}

/**
* Devuelve el id de susuario en BPM
* @param
* @return 
*/
if(!function_exists('userIdBpm')){
		function userIdBpm()
		{
				$ci =& get_instance();
				$userIdBpm  = $ci->session->userdata('userIdBpm');
				return  $userIdBpm;
		}
}

/**
* Devuelve id de transportista por nickName de usuario logueado
* @param
* @return string $tran_id (tran_id en log.transportistas)
*/
if(!function_exists('usrIdTransportistaByNick')){

	function usrIdTransportistaByNick(){

		$ci =& get_instance();
		$usernick = userNick();
		$aux = $ci->rest->callAPI("GET",REST."/transportista/id/".$usernick);
		$aux =json_decode($aux["data"]);
		return $aux->transportista->tran_id;
	}
}

/**
* Devuelve id de Generador por nick de usuario logueado
* @param
* @return string $sotr_id
*/
if(!function_exists('usrIdGeneradorByNick')){

	function usrIdGeneradorByNick(){

		$ci =& get_instance();
		$usernick = userNick();
		$aux = $ci->rest->callAPI("GET",REST."/solicitantesTransporte/".$usernick);
		$aux =json_decode($aux["data"]);
		return $aux->solicitantes_transporte->sotr_id;
	}
}

/**
* Devuelve coincidencia de deposito con usuario asignado a deposito
* @param
* @return bool true o false
*/
if(!function_exists('filtrarbyDepo')){

	function filtrarbyDepo($nombreTarea, $depo_id = null)
	{
		$ci =& get_instance();
    $userdata  = $ci->session->userdata();

		$mostrar = true;

		// si usuario es usuario de deposito
		if (($nombreTarea == "Certifica Vuelco")) {

				$user_depo_id = $userdata['depo_id'];
				//no coincide usuario deposito con deposito asignado
				if (!($user_depo_id == $depo_id)) {
					$mostrar = false;
				}
		}

		return $mostrar;
	}
}

/**
 * Devuelve los panoles a cargo del usuario logueado con su establecimiento
 * Es la fuente unica de la asignacion de panoles: de aca se derivan
 * filtrarbyPano() y establecimientosByPano(), para no repetir la llamada.
 * @return array con los panoles asignados (pano_id, esta_id, nombre, descripcion)
 */
if(!function_exists('encargadosByPano')){

	function encargadosByPano(){
		$ci =& get_instance();
		$userdata = $ci->session->userdata();
		$user_id  = $userdata['id'];

		if (empty($user_id)) {
			return array();
		}

		// obtiene los panoles asignados al usuario
		$aux = $ci->rest->callAPI("GET", REST_PAN.'/panol/encargado/usuario/'.$user_id);
		$aux = json_decode($aux['data']);

		$panoles = isset($aux->encargados->panoles) ? $aux->encargados->panoles : array();

		// WSO2 devuelve un objeto en vez de array cuando hay 1 solo resultado
		if (empty($panoles) || !is_array($panoles)) {
			$panoles = empty($panoles) ? array() : array($panoles);
		}

		return $panoles;
	}
}

/**
 * Devuelve los panoles a cargo del usuario logueado
 * Un mismo usuario puede estar a cargo de varios panoles, por eso se
 * devuelve una lista de pano_id y no un unico valor.
 * Si el usuario no tiene panoles asignados devuelve un array vacio, y el
 * llamador debe interpretar eso como "sin restriccion" (ve todo).
 * @return array con los pano_id asignados al usuario
 */
if(!function_exists('filtrarbyPano')){

	function filtrarbyPano(){
		$ci =& get_instance();
		$user_id = $ci->session->userdata('id');

		$pano_ids = array();
		foreach (encargadosByPano() as $pano) {
			if (isset($pano->pano_id)) {
				$pano_ids[] = $pano->pano_id;
			}
		}

		log_message('DEBUG','#TRAZA | SESION | filtrarbyPano() >> user_id: '.$user_id.' panoles: '.json_encode($pano_ids));

		return $pano_ids;
	}
}

/**
 * Devuelve los establecimientos de los panoles a cargo del usuario
 * Cada panol pertenece a un establecimiento (P.esta_id), asi que de los
 * panoles que administra el usuario se deducen los establecimientos que
 * puede usar.
 * Si el usuario no tiene panoles asignados devuelve un array vacio, y el
 * llamador debe interpretar eso como "sin restriccion" (ve todo).
 * @return array con los esta_id deducidos, sin repetidos
 */
if(!function_exists('establecimientosByPano')){

	function establecimientosByPano(){
		$ci =& get_instance();
		$user_id = $ci->session->userdata('id');

		$esta_ids = array();
		foreach (encargadosByPano() as $pano) {
			if (isset($pano->esta_id)) {
				$esta_ids[(string) $pano->esta_id] = $pano->esta_id;
			}
		}
		$esta_ids = array_values($esta_ids);

		log_message('DEBUG','#TRAZA | SESION | establecimientosByPano() >> user_id: '.$user_id.' establecimientos: '.json_encode($esta_ids));

		return $esta_ids;
	}
}

/**
 * Lee un campo de un registro que puede venir como objeto o como array
 * Necesario porque json_decode devuelve stdClass pero algunos modelos de PAN
 * arman arrays asociativos a mano, por ejemplo Orders::obtenerHerramientasPanol().
 * @param mixed registro
 * @param string campo
 * @return mixed|null
 */
if(!function_exists('valorCampo')){

	function valorCampo($registro, $campo){
		if (is_array($registro)) {
			return isset($registro[$campo]) ? $registro[$campo] : null;
		}

		return isset($registro->$campo) ? $registro->$campo : null;
	}
}

/**
 * Normaliza a array una respuesta de WSO2
 * json_decode devuelve un objeto cuando hay un solo resultado y un array
 * cuando hay varios; el resto del codigo asume siempre un array.
 * @param mixed lista
 * @return array
 */
if(!function_exists('normalizarLista')){

	function normalizarLista($lista){
		if (empty($lista) || !is_array($lista)) {
			return empty($lista) ? array() : array($lista);
		}

		return $lista;
	}
}

/**
 * Deja solo los establecimientos de los panoles a cargo del usuario
 * Si el usuario no tiene panoles asignados devuelve la lista completa, que
 * es el mismo criterio que usan los listados.
 * @param lista de {esta_id, nombre}
 * @return array
 */
if(!function_exists('filtrarEstablecimientosPorUsuario')){

	function filtrarEstablecimientosPorUsuario($establecimientos){
		$establecimientos = normalizarLista($establecimientos);

		$esta_ids = array_map('strval', establecimientosByPano());

		// sin panoles asignados no se restringe nada
		if (empty($esta_ids)) {
			return $establecimientos;
		}

		$establecimientos = array_values(array_filter($establecimientos, function ($establec) use ($esta_ids) {
			return in_array(strval(valorCampo($establec, 'esta_id')), $esta_ids, true);
		}));

		log_message('DEBUG','#TRAZA | SESION | filtrarEstablecimientosPorUsuario() >> esta_ids: '.json_encode($esta_ids).' encontrados: '.count($establecimientos));

		return $establecimientos;
	}
}

/**
 * Deja solo las herramientas que estan en el panol seleccionado
 * El listado que usan los formularios de salida y entrada es por estado
 * (ACTIVO / TRANSITO) y no viene filtrado por panol, asi que hay que cruzarlo
 * acá. Cada herramienta trae su pano_id porque /herramientas/estado/{estado}
 * lo devuelve. Se conserva la forma de cada herramienta para no cambiar el
 * contrato con el JS de orders/view_.php y unloads/view_.php.
 * @param lista de {herrId, herrcodigo, herrdescrip, herrmarca, pano_id, ...}
 * @return array
 */
if(!function_exists('filtrarHerramientasPorPano')){

	function filtrarHerramientasPorPano($herramientas){
		$herramientas = normalizarLista($herramientas);

		$ci =& get_instance();
		$pano_id = $ci->input->post('pano_id');

		// sin panol no se puede saber de que panol es la herramienta
		if (empty($pano_id)) {
			log_message('ERROR','#TRAZA | SESION | filtrarHerramientasPorPano() >> llego sin pano_id');

			return array();
		}

		$herramientas = array_values(array_filter($herramientas, function ($herr) use ($pano_id) {
			return strval(valorCampo($herr, 'pano_id')) === strval($pano_id);
		}));

		log_message('DEBUG','#TRAZA | SESION | filtrarHerramientasPorPano() >> pano_id: '.$pano_id.' encontradas: '.count($herramientas));

		return $herramientas;
	}
}

/**
 * Deja solo las herramientas que estan en un panol a cargo del usuario
 * A diferencia de filtrarHerramientasPorPano() NO mira el panol seleccionado:
 * se usa para la recepcion, donde la herramienta puede entrar en cualquier
 * panol del usuario y el unico requisito es que este en TRANSITO.
 * Si el usuario no tiene panoles asignados devuelve la lista completa, que
 * es el mismo criterio que usan el resto de los filtros por usuario.
 * @param lista de {herrId, herrcodigo, herrdescrip, herrmarca, pano_id, ...}
 * @return array
 */
if(!function_exists('filtrarHerramientasPorPanosDelUsuario')){

	function filtrarHerramientasPorPanosDelUsuario($herramientas){
		$herramientas = normalizarLista($herramientas);

		$pano_ids = array_map('strval', filtrarbyPano());

		// sin panoles asignados no se restringe nada
		if (empty($pano_ids)) {
			return $herramientas;
		}

		$herramientas = array_values(array_filter($herramientas, function ($herr) use ($pano_ids) {
			return in_array(strval(valorCampo($herr, 'pano_id')), $pano_ids, true);
		}));

		log_message('DEBUG','#TRAZA | SESION | filtrarHerramientasPorPanosDelUsuario() >> pano_ids: '.json_encode($pano_ids).' encontradas: '.count($herramientas));

		return $herramientas;
	}
}

/**
 * Indica si el usuario puede operar sobre un panol
 * Si el usuario no tiene panoles asignados no se restringe nada y devuelve
 * true, que es el mismo criterio que usan los listados y los desplegables.
 * @param pano_id
 * @return bool
 */
if(!function_exists('usuarioManejaPano')){

	function usuarioManejaPano($pano_id){
		$pano_ids = array_map('strval', filtrarbyPano());

		// sin panoles asignados no se restringe nada
		if (empty($pano_ids)) {
			return true;
		}

		return in_array(strval($pano_id), $pano_ids, true);
	}
}

/**
 * Deja solo los panoles a cargo del usuario
 * Si el usuario no tiene panoles asignados devuelve la lista completa, que
 * es el mismo criterio que usan los listados.
 * @param lista de {pano_id, nombre, ...}
 * @return array
 */
if(!function_exists('filtrarPanolesPorUsuario')){

	function filtrarPanolesPorUsuario($panoles){
		$panoles = normalizarLista($panoles);

		$pano_ids = array_map('strval', filtrarbyPano());

		// sin panoles asignados no se restringe nada
		if (empty($pano_ids)) {
			return $panoles;
		}

		$panoles = array_values(array_filter($panoles, function ($panol) use ($pano_ids) {
			return in_array(strval(valorCampo($panol, 'pano_id')), $pano_ids, true);
		}));

		log_message('DEBUG','#TRAZA | SESION | filtrarPanolesPorUsuario() >> pano_ids: '.json_encode($pano_ids).' encontrados: '.count($panoles));

		return $panoles;
	}
}

/**
* Devuelve pass de usuario en BPM
* @param 
* @return 
*/
if(!function_exists('userPass')){

    function userPass()
    {
        return BPM_USER_PASS;
    }
}

/**
* Devuelve empr_id desde lavariable de usuario
* @param
* @return int empr_id
*/
if(!function_exists('empresa')){

    function empresa(){

        $ci =& get_instance();
        $empr_id  = $ci->session->userdata('empr_id');
				return  $empr_id;
    }
}

if(!function_exists('validarSesion')){

    function validarSesion(){
        $ci = &get_instance();
        $userdata = $ci->session->userdata('user_data');
        if(empty($userdata['email'])) redirect(base_url().'login/main/logout/'); 
    }

}
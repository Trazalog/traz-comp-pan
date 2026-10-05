<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Controlador centralizado para impresión de Vales de herramientas.
 * Reutilizable desde cualquier vista (movimientos, trazabilidad, etc.)
 *
 * @autor Trazalog
 */
class Vales extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Movimientosherramientas');
		$this->load->model('core/Valores');
	}

	/**
	 * Carga la vista para imprimir el vale de entrega o recepción
	 * @param int    $mov_id  ID del movimiento (salida o entrada)
	 * @param string $tipo    ENTRADA o SALIDA
	 * @return void
	 */
	public function printVale($mov_id, $tipo = 'SALIDA')
	{
		$data['mov_id'] = $mov_id;
		$data['tipo'] = $tipo;
		
		if (strtoupper($tipo) == 'ENTRADA') {
			$data['data'] = $this->Movimientosherramientas->obtenerEntradaEnpaId($mov_id);
		} else {
			$data['data'] = $this->Movimientosherramientas->obtenerSalidaSepaId($mov_id);
		}
		
		// Obtener campos del formulario dinámico a partir del info_id
		$data['form_dinamico'] = array();
		if (!empty($data['data']) && isset($data['data'][0]->info_id) && !empty($data['data'][0]->info_id)) {
			$this->load->model('traz-comp-formularios/Forms');
			$form_data = $this->Forms->obtener($data['data'][0]->info_id);
			if (isset($form_data->items)) {
				$data['form_dinamico'] = $form_data->items;
			}
		}
		
		$data['cabecera'] = array(
			'logo' => @$this->Valores->obtenerTablaEmpr_id('formularios_logo')[0],
			'direccion' => @$this->Valores->obtenerTablaEmpr_id('formularios_direccion')[0],
			'telefono' => @$this->Valores->obtenerTablaEmpr_id('formularios_telefono')[0],
			'email' => @$this->Valores->obtenerTablaEmpr_id('formularios_email')[0],
			'texto_pie' => @$this->Valores->obtenerTablaEmpr_id('formularios_texto_pie')[0]
		);
		
		$this->load->view('vales/vale', $data);
	}

}

?>

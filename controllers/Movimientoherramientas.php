<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
* Representa entidad Salida de herramientas
*
* @autor Pablo Marrelli
*/
class Movimientoherramientas extends CI_Controller {

	/**
	* constructor de clase
	* @param
	* @return void
	*/
    public function __construct()
    {
	parent::__construct();
	$this->load->model('Orders');
	$this->load->model('Movimientosherramientas');
	$this->load->model('core/Valores');
	$this->load->model('Unloads');
	}

    /**
	* Carga vista Vale salida con herramientas propias de la empresa para seleccionar
	* @param
	* @return void
	*/

    public function index($permission = null)
    {
    $data['form_id'] = $this->Valores->getTablaValor('configuraciones', 'formulario_salida_herramientas');
	$this->load->view('movimientosherramientas/view_',$data);
	}

    /**
	* trae listado de movimientos de entrada y salida
	* @param
	* @return void
	*/
    function listarMovimientos(){
        // Carga solo la vista con la estructura, DataTables hace el request por AJAX
        $this->load->view('movimientosherramientas/list');
    }

    public function listarMovimientosPaginados() {
        $empr_id = empresa();

        $search_global = $this->input->post('search');
        $search_value = isset($search_global['value']) ? $search_global['value'] : "";
        $tipo = $this->input->post('tipo_movimiento');

        // Combinar filtro de tipo (si existe) y busqueda global
        $search = trim($tipo . ' ' . $search_value);

        $limit = $this->input->post('length') ? $this->input->post('length') : 10;
        $offset = $this->input->post('start') ? $this->input->post('start') : 0;

        $order = $this->input->post('order');
        $orderDir = 'desc'; // Por defecto
        if (!empty($order)) {
            $orderDir = strtolower($order[0]['dir']);
        }

        $resultado = $this->Movimientosherramientas->getMovimientosPaginados(
            $empr_id,
            $search,
            $limit,
            $offset,
            $orderDir
        );

        $recordsTotal = $resultado['total'];
        $movimientos = $resultado['movimientos'];

        if (!empty($movimientos)) {
            foreach ($movimientos as &$row) {
                if (isset($row->fec_alta)) {
                    // WSO2 devuelve formato ISO 8601, lo convertimos a un formato más legible
                    $row->fec_alta = date("d-m-Y H:i", strtotime($row->fec_alta));
                }
            }
        }

        $json_data = array(
            "draw"            => intval($this->input->post('draw')),
            "recordsTotal"    => intval($recordsTotal),
            "recordsFiltered" => intval($recordsTotal),
            "data"            => !empty($movimientos) ? $movimientos : array()
        );

        echo json_encode($json_data);
    }

    
	/**
	* Impresión de vale - Redirige al controlador centralizado Vales
	* @deprecated Usar Vales/printVale directamente
	* @param int $mov_id
	* @param string $tipo (ENTRADA o SALIDA)
	* @return void
	*/
	public function printVale($mov_id, $tipo = 'SALIDA')
	{
		redirect(PAN . 'Vales/printVale/' . $mov_id . '/' . $tipo);
	}

	/**
	* Carga la vista de nueva salida dentro de un modal
	* @return void
	*/
	public function nuevaSalida()
	{
		$data['establecimientos'] = $this->Orders->obtenerEstablecimientos();
		$data['form_id'] = $this->Valores->getTablaValor('configuraciones', 'formulario_salida_herramientas');
		$this->load->view('movimientosherramientas/modal_salida', $data);
	}

	/**
	* Carga la vista de nueva recepción dentro de un modal
	* @return void
	*/
	public function nuevaRecepcion()
	{
		$data['establecimientos'] = $this->Unloads->obtenerEstablecimientos();
		$data['form_id'] = $this->Valores->getTablaValor('configuraciones', 'formulario_salida_herramientas');
		$this->load->view('movimientosherramientas/modal_recepcion', $data);
	}

    
}

?>
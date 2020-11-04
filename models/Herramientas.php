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
		function obtenerPanoles(){

			$empr_id = empresa();
			$aux = $this->rest->callAPI("GET",REST_PAN."/panoles/empresa/".$empr_id);
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





		function agregar_herramientas($data)
    {
        $userdata           = $this->session->userdata('user_data');
        $empresaId          = $userdata[0]['id_empresa'];
        $data['id_empresa'] = $empresaId;
        $query              = $this->db->insert("herramientas",$data);
        return $query;
    }

    // edita herramienta
    function update_editar($data, $id)
    {
        $this->db->where('herrId', $id);
        $query = $this->db->update("herramientas",$data);
        return $query;
    }










		/////////////////////////////////////////////////////////
    // revisa si existe la herramienta
    function existeHerramienta($codigoH)
    {
        $query = $this->db->get_where('herramientas', array('herrcodigo' => $codigoH));
        $count = $query->num_rows(); //counting result from query 
        if ($count === 0)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }



}

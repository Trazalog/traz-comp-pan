<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Herramientas extends CI_Model
{

		function __construct()
		{
			parent::__construct();
		}

    /**
     * Devuelve un listado de las herramientas.
     *
     * @return  Array   Devuelve un arreglo con las herramientas.
     */
		function listar_herramientas()
		{
			$userdata  = $this->session->userdata('user_data');
			$empresaId = $userdata[0]['id_empresa'];
			$empresaId = 6;
			$this->db->select('herramientas.*,
												abmdeposito.depositodescrip, abmdeposito.depositoId,
												marcasequipos.marcadescrip');
			$this->db->from('herramientas');
			$this->db->join('abmdeposito','abmdeposito.depositoId = herramientas.depositoId');
			$this->db->join('marcasequipos','marcasequipos.marcaid = herramientas.modid');
			$this->db->where('herramientas.id_empresa', $empresaId);
			$this->db->where('herramientas.equip_estad !=', 'AN');
			$query = $this->db->get();
			$ultimaquery = $this->db->last_query();
			if ($query->num_rows()!=0)
			{
				return $query->result_array();	
			}
			else
			{	
				return array();
			}
		}
	
    /**
     * Agrega herramientas.
     * 
     * @param   Array   Datos de las herramientas.
     * @return  Bool    Devuelve tru si se inserta correctamente o false si hubo error.
     */
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

    // elimina herramienta
    function eliminacion($data)
    {
        $datos = array('equip_estad'=>"AN");
        $this->db->where('herrId', $data);
        $query = $this->db->update('herramientas', $datos);
        return $query;
    }

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

    // trae marca de equipos
		function getMarcas()
			{
					$userdata  = $this->session->userdata('user_data');
					$empresaId = $userdata[0]['id_empresa'];
					$this->db->select('marcasequipos.*');   
					$this->db->from('marcasequipos');
					$this->db->where('marcasequipos.id_empresa', $empresaId);
					$this->db->where('marcasequipos.estado', 'AC');
					$this->db->order_by('marcasequipos.marcadescrip');
					$query     = $this->db->get();
			if($query->num_rows()>0){
					return $query->result();
			}
			else{
					return false;
			}
		}
	
    // trae los depositos
		function getdepositos()
			{
					$userdata  = $this->session->userdata('user_data');
					$empresaId = $userdata[0]['id_empresa'];
			$this->db->select('abmdeposito.*');
					$this->db->from('abmdeposito');
					$this->db->where('abmdeposito.id_empresa', $empresaId);
					$this->db->order_by('abmdeposito.depositodescrip');

					$query     = $this->db->get();
				// dump($this->db->last_query());
					if($query->num_rows()>0){
					return $query->result();
			}
			else{
					return false;
			}
		}

    // trae los datos de la herramienta a editar
    function getpencil($id)
    {
			$sql = "SELECT herramientas.*,abmdeposito.depositodescrip, abmdeposito.depositoId,marcasequipos.marcaid, marcasequipos.marcadescrip
				from herramientas
				JOIN abmdeposito ON abmdeposito.depositoId = herramientas.depositoId	
				JOIN marcasequipos ON marcasequipos.marcaid = herramientas.modid
				WHERE herramientas.herrId = $id";
			$query = $this->db->query($sql);

			if($query->num_rows()>0){
							return $query->result();
					}
					else{
							return false;
					}
		}

}

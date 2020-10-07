<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Trazacomps extends CI_Model {
	
    function __construct()
	{
		parent::__construct();
	}

    function componentes_List()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('componenteequipo.idcomponenteequipo, componenteequipo.estado,
            equipos.codigo as equipocodigo,
            componentes.descripcion as componente,
            tbl_trazacomponente.ult_recibe');
        $this->db->from('componenteequipo');
        $this->db->join('equipos', 'componenteequipo.id_equipo = equipos.id_equipo');
        $this->db->join('componentes', 'componentes.id_componente = componenteequipo.id_componente');
        $this->db->join('tbl_trazacomponente', 'tbl_trazacomponente.idcomponenteequipo = componenteequipo.idcomponenteequipo');
        $this->db->where('componenteequipo.id_empresa', $empresaId);
        $this->db->where('tbl_trazacomponente.estado !=', 'T');
        $query = $this->db->get();      
        if ($query->num_rows()!=0)
        {               
            return $query->result_array();
        }
        else
        {
            return array();
        }  
    }

    // trae  equipos de estanterias componentes ('P')
    function getEquipEstanterias()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('equipos.id_equipo, equipos.codigo');        
        $this->db->from('componenteequipo');
        $this->db->join('equipos', 'equipos.id_equipo = componenteequipo.id_equipo');
        $this->db->where('componenteequipo.id_empresa', $empresaId);
        $this->db->where('componenteequipo.estado =', 'P'); // esta en pañol
        //$this->db->where('tbl_trazacomponente.estado !=', 'T');  //Trae equipos Entregados y Recibidos       
        $query = $this->db->get();  
        return $query->result_array();     
    }

	// trae  equipos para recibir componentes
	function getEquipos()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('equipos.codigo, equipos.descripcion, equipos.id_equipo');        
        $this->db->from('equipos');  
        $this->db->join('componenteequipo', 'componenteequipo.id_equipo = equipos.id_equipo');
        $this->db->where('componenteequipo.id_empresa', $empresaId);
        // $this->db->where('componenteequipo.estado', 'C');       
        $query = $this->db->get();  
        if ($query->num_rows()!=0)
        {               
            return $query->result_array();
        }
        else
        {
            return array();
        }         
    }

    // trae  componentes por ID (recibir)      
    function getComponentes($data = null)
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $id        = $data['id_equipo'];
        $this->db->select('componentes.id_componente, componentes.descripcion');
        $this->db->from('equipos');
        $this->db->join('componenteequipo', 'equipos.id_equipo = componenteequipo.id_equipo');
        $this->db->join('componentes', 'componentes.id_componente = componenteequipo.id_componente'); 
        $this->db->where('componenteequipo.id_empresa', $empresaId);
        $this->db->where('equipos.estado', 'AC');
        $this->db->where('equipos.id_equipo', $id);
        $query = $this->db->get();      
        if ($query->num_rows()!=0)
        {               
            return $query->result_array();
        }
        else
        {
            return array();
        }  
    }

    // devuelve las estanterias creadas previamente
    function getEstanterias()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('tbl_estanteria.*');
        $this->db->from('tbl_estanteria');
        $this->db->where('tbl_estanteria.id_empresa', $empresaId);
        $query = $this->db->get();
        if ($query->num_rows()!=0)
        {               
            return $query->result_array();
        }
        else
        {
            return array();
        }   
    }

    function getFilas($data)
    {
        $id = $data['id_estanteria'];
        $this->db->select('tbl_estanteria.fila');
        $this->db->from('tbl_estanteria');
        $this->db->where('tbl_estanteria.id_estanteria',$id);
        $query = $this->db->get();
        if ($query->num_rows()!=0)
        {               
            return $query->result_array();
        }
        else
        {
            return array();
        } 
    }

    // devuelve el id relacion entre componente y equipo para guardar (Recibir)
    function getIdCompEquipo($datos)
    {
        $userdata      = $this->session->userdata('user_data');
        $empresaId     = $userdata[0]['id_empresa'];
        $id_componente = $datos['id_componente'];
        $id_equipo     = $datos['id_equipo'];
        $this->db->select('componenteequipo.idcomponenteequipo');
        $this->db->from('componenteequipo');        
        $this->db->where('componenteequipo.id_equipo', $id_equipo);
        $this->db->where('componenteequipo.id_componente', $id_componente);
        $this->db->where('componenteequipo.id_empresa', $empresaId);
        $query = $this->db->get(); 
        $row   = $query->row('idcomponenteequipo');
        if(isset($row))
        {               
            return $row;
        }
        else
        {
            return 0;
        }  
    }
    
    // Crea nueva Estanteria
    function setEstantNuevas($data)
    {
        $userdata           = $this->session->userdata('user_data');
        $data['id_empresa'] = $userdata[0]['id_empresa'];
        $query              = $this->db->insert('tbl_estanteria', $data);
        return $query;
    }

    //// Guarda componentes en pañol y actualiza 
    function setReciboComponentes($data, $info)
    {
        $ult_recibe = $info[1]['entrega'];
        $userdata   = $this->session->userdata('user_data');
        $usrId      = $userdata[0]['usrId'];     // guarda usuario logueado   
        $estado     = 'P';  // 'Pañol' para actualizar en componenteequipo
        $this->db->trans_start();
        foreach ($data as $key)
        {
            $datos['id_equipo']     = $key['id_equipo'];
            $datos['id_componente'] = $key['id_componente'];
            $idcomponenteequipo     = $this->getIdCompEquipo($datos);
            $estanteria             = $key['id_estanteria'];
            $fila                   = $key['fila'];            
            $observaciones          = $key['observaciones'];
            $recibo                 = array(
                'idcomponenteequipo' => $idcomponenteequipo,
                'id_estanteria'      => $estanteria,
                'fila'               => $fila,
                'fecha'              => date('Y-m-d H:i:s'),
                'fecha_Entrega'      => date('Y-m-d H:i:s'),
                'ult_recibe'         => $ult_recibe,
                'estado'             => 'C',            // Curso (movimiento de trazabilidad)
                'observaciones'      => $observaciones,
                'usrId'              => $usrId
            );         

            $this->db->insert('tbl_trazacomponente', $recibo);
            // estado 'P'(pañol) del componente en tabla componenteequipo
            $this->updateEstComponente($idcomponenteequipo, $estado);
        }
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE)
        {
            return false;  
        }
        else
        {
            return true;
        }
    }

    // Cambia Estados en componenteequipos
    function updateEstComponente($idcomponenteequipo, $estado)
    {
        $this->db->set('estado', $estado);
        $this->db->where('idcomponenteequipo', $idcomponenteequipo);
        $this->db->update('componenteequipo');
    }

    function setEntregaComponentes($data, $info)
    { 
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $receptor  = array_pop($data);       // saco ultimo componente del array        
        $this->db->trans_start();
        if ($receptor["receptor"] == "interno")   // "estoy entregando componente terminado"            
        {
            $estado = 'C';                          // Estado Curso (vuelve al equipo)
            foreach ($data as $row) 
            {
                $datos['id_equipo']     = $row['id_equipo'];
                $datos['id_componente'] = $row['id_componente'];
                $idcomponenteequipo     = $this->getIdCompEquipo($datos);
                // Actualiza a terminado el registro Curso (compnente recibido en pañol)
                $this->db->set('estado','T');
                $this->db->where('idcomponenteequipo',$idcomponenteequipo);
                $this->db->where('estado !=','T');
                $this->db->update('tbl_trazacomponente');
                // Inserta nuevo registro de componente Terminado (para personal interno)
                $userdata                        = $this->session->userdata('user_data');                
                $actualiza['fecha_Entrega']      = date('Y-m-d H:i:s'); 
                $actualiza['ult_recibe']         = $info[1]['recibe'];
                $actualiza['estado']             = 'T';
                $actualiza['observaciones']      = $row["observaciones"];
                $actualiza['usrId']              = $userdata[0]['usrId'];     // guarda usuario logueado
                $actualiza['idcomponenteequipo'] = $idcomponenteequipo;  
                $actualiza['id_empresa']         = $empresaId;
                $this->db->insert('tbl_trazacomponente', $actualiza);
                // Actualizo el estado del componente en componenteequipo (Curso)
                $this->updateEstComponente($idcomponenteequipo, $estado);
            }
        }
        else
        {      
            //"estoy entregando a Contratista externo"
            $estado = 'FP';     //Estado Fuera de Pañol 
            foreach ($data as $row)
            {
                $datos['id_equipo']     = $row['id_equipo'];
                $datos['id_componente'] = $row['id_componente'];
                $idcomponenteequipo     = $this->getIdCompEquipo($datos);  
                // Actualiza a terminado el registro Curso (compnente recibido en pañol)
                $this->db->set('estado','T');
                $this->db->where('idcomponenteequipo',$idcomponenteequipo);
                $this->db->where('estado !=','T');
                $this->db->update('tbl_trazacomponente');
                // Inserta nuevo registro de componente Entregado (para personal externo)
                $userdata = $this->session->userdata('user_data');
                $usrId    = $userdata[0]['usrId'];                
                $recibo   = array(
                    'idcomponenteequipo' => $idcomponenteequipo,                    
                    'fecha'              => date('Y-m-d H:i:s'),
                    'fecha_Entrega'      => date('Y-m-d H:i:s'),
                    'ult_recibe'         => $info[1]['recibe'],
                    'estado'             => 'T',                          // Terminado (sale de pañol)
                    'observaciones'      => $row["observaciones"],
                    'usrId'              => $usrId,
                    'id_empresa'         => $empresaId
                ); 
                $this->db->insert('tbl_trazacomponente', $recibo);   
                // Actualizo el estado del componente en componenteequipo (Curso)
                $this->updateEstComponente($idcomponenteequipo, $estado);              
            }
        }
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE)
        {
            return false;  
        }
        else
        {
            return true;
        }    
    }
        
    /////// FORMATO DE ARRAY QUE VIENE DE LA VISTA
        // $data
        // Dump => array(3) {
        //   [0] => array(5) {
        //     ["id_equipo"] => string(3) "119"
        //     ["id_componente"] => string(2) "54"
        //     ["id_estanteria"] => string(1) "3"
        //     ["fila"] => string(1) "8"
        //     ["observaciones"] => string(0) ""
        //   }
        //   [1] => array(5) {
        //     ["id_equipo"] => string(3) "119"
        //     ["id_componente"] => string(2) "55"
        //     ["id_estanteria"] => string(1) "1"
        //     ["fila"] => string(1) "1"
        //     ["observaciones"] => string(0) ""
        //   }
        //   [2] => array(5) {
        //     ["id_equipo"] => string(3) "119"
        //     ["id_componente"] => string(2) "53"
        //     ["id_estanteria"] => string(1) "2"
        //     ["fila"] => string(1) "2"
        //     ["observaciones"] => string(0) ""
        //   }
        // }
        // $info
        // Dump => array(3) {
        //   [0] => array(1) {
        //     ["res_pañol"] => string(4) "hugo"
        //   }
        //   [1] => array(1) {
        //     ["entrega"] => string(4) "pepe"
        //   }
        //   [2] => array(1) {
        //     ["tipo"] => string(9) "recepcion"
        //   }
        // }
	
}	

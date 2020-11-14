<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Trazacomps extends CI_Model {
	
		function __construct()
		{
			parent::__construct();
		}

    /**
    * Devuelve lostado de equipos por empresa
    * @param
    * @return array equipos
    */
    function obtenerEquipos()
    {
        log_message('INFO','#TRAZA|TRAZA-COMP-PAN|TRAZACOMPS|OBTENEREQUIPOS >> ');
        $empr_id = empresa();
        $aux = $this->rest->callAPI("GET",REST_PAN."/equipos/".$empr_id);
        $aux =json_decode($aux["data"]);
        return $aux->equipos->equipo;
    }

		/**
		* devuelvelistado de componentes por id de equipo
		* @param int equi_id
		* @return array con componentes
		*/
		function getComponentes($equi_id)
		{
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PANOL|TRAZACOMPS|GETCOMPONENTES  $equi_id: >> '.json_encode($equi_id));
			$aux = $this->rest->callAPI("GET",REST_PAN."/componentes/equipo/".$equi_id);
			$aux =json_decode($aux["data"]);
			return $aux->componentes->componente;
		}

		/**
		* devuelve llistado de componentes por pañol
		* @param int pano_id
		* @return array de componentes de un pañol
		*/
		function obtenerComponentesPanol($pano_id)
		{
				log_message('INFO','#TRAZA|| >> ');
				$aux = $this->rest->callAPI("GET",REST_PAN."/componentes/panol/".$pano_id);
				$aux =json_decode($aux["data"]);
				return $aux->componentes->componente;
		}

		/**
		* Obtiene los pañoles propios de una empresa
		* @param
		* @return array con pañoles
		*/
		function obtenerPanoles(){

			log_message('INFO','#TRAZA|TRAZA-COMP-PAN|TRAZACOMPS|OBTENERPANOLES >> ');
			$empr_id = empresa();
			$aux = $this->rest->callAPI("GET",REST_PAN."/panoles/empresa/".$empr_id);
			$aux =json_decode($aux["data"]);
			return $aux->panoles->panol;
		}

		/**
		* devuelve estanterias por pañol
		* @param int pano_id
		* @return array con info de estanterias
		*/
		function obtenerEstanterias($pano_id)
		{
			log_message('INFO','#TRAZA|TRAZA-COMP-PAN|TRAZACOMPS|OBTENERESTANTERIAS >> ');
			$aux = $this->rest->callAPI("GET",REST_PAN."/estanterias/panol/".$pano_id);
			$aux =json_decode($aux["data"]);
			return $aux->estanterias->estanteria;
		}

		/**
		* guarda estanteria nueva
		* @param array con datos de estanteria
		* @return bool true o false resultado del servicio
		*/
		function guardarEstateria($estanteria)
		{
			log_message('INFO','#TRAZA|| >> ');
			$post['_postestanterias'] = $estanteria;
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|TRAZACOMPS|GUARDARESTANTERIA| $pòst: >> '.json_encode($post));
			$aux = $this->rest->callAPI("POST", REST_PAN."/estanterias", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
		}

		/**
		* devuelve id deralacion componente-equipo
		* @param int equi_id, comp_id
		* @return
		*/
		function obtenerIdCompoEquipo($equi_id, $comp_id)
		{
			log_message('DEBUG','#TRAZA||TRAZ-COMP-PAN|TRAZACOMPS|OBTENERIDCOMPOEQUIPO $equi_id >> '.json_encode($equi_id));
			log_message('DEBUG','#TRAZA||TRAZ-COMP-PAN|TRAZACOMPS|OBTENERIDCOMPOEQUIPO $comp_id >> '.json_encode($comp_id));
			$aux = $this->rest->callAPI("GET",REST_PAN."/componente/".$comp_id."/equipo/".$equi_id);
			$aux =json_decode($aux["data"]);
			return $aux->respuesta->coeq_id;
		}

		/**
		* guarda recepcion de componente
		* @param array con info de guardado
		* @return bool true o false resultado del servicio
		*/
		function guardaRecibe($data)
		{
			$post["_post_traza_componente_equipo_recepcion_batch_req"] = $data;
			$aaa = json_encode($post);
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|TRAZACOMPS|GUARDARECIBE $post >> '.json_encode($post));
			$aux = $this->rest->callAPI("POST",REST_PAN."/_post_traza_componente_equipo_recepcion_batch_req", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
		}

		function guardaEntrega($data){

			$post["_post_traza_componente_equipo_entrega_batch_req"] = $data;
			$aaa = json_encode($post);
			log_message('DEBUG','#TRAZA|TRAZ-COMP-PAN|TRAZACOMPS|GUARDARECIBE $post >> '.json_encode($post));
			$aux = $this->rest->callAPI("POST",REST_PAN."/_post_traza_componente_equipo_entrega_batch_req", $post);
			$aux =json_decode($aux["status"]);
			return $aux;
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
        //$userdata  = $this->session->userdata('user_data');
        $empresaId = empresa();
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

}	

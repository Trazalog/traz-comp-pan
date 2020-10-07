<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function getValeSalidaHerr()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('herramientas.herrcodigo, 
            herramientas.herrdescrip,
            marcasequipos.marcadescrip, 
            tbl_valesalida.fecha, 
            tbl_valesalida.respons ,
            tbl_valesalida.dest');
        $this->db->from('tbl_valesalida');
        $this->db->join('tbl_detavalesalida', 'tbl_detavalesalida.valesid = tbl_valesalida.valesid');
        $this->db->join('herramientas', 'tbl_detavalesalida.herrId = herramientas.herrId');
        $this->db->join('marcasequipos', 'herramientas.modid = marcasequipos.marcaid');
        $this->db->where('tbl_valesalida.id_empresa', $empresaId);
        $query = $this->db->get();
        return $query->result_array();
    }

    function getHerramientas()
    {
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('herramientas.herrdescrip, marcasequipos.marcadescrip, herramientas.herrcodigo, herramientas.herrId');
        $this->db->from('herramientas');
        $this->db->join('marcasequipos', 'herramientas.modid = marcasequipos.marcaid');
        $this->db->where('herramientas.id_empresa', $empresaId);
        $this->db->where('equip_estad', 'AC');
        $query = $this->db->get();
        $i     = 0;
        foreach ($query->result() as $row){
            $herramientas[$i]['label']     = $row->herrcodigo;
            $herramientas[$i]['value']     = $row->herrdescrip;
            $herramientas[$i]['codherram'] = $row->herrcodigo;
            $herramientas[$i]['herrmarca'] = $row->marcadescrip;
            $herramientas[$i]['herrId']    = $row->herrId;
            $i++;
        }
        return $herramientas;
    }

    function setHerramientas($data)
    {
        $this->db->trans_start();   // inicio transaccion

        $date          = $data['fecha'];
        $date          = explode('/', $date);                    
        $userdata      = $this->session->userdata('user_data');
        $usrId         = $userdata[0]['usrId'];     // guarda usuario logueado
        $empresaId     = $userdata[0]['id_empresa'];
        $resp          = $data['respons'];
        $dest          = $data['dest'];
        $valeSalHerram = array(
            'fecha'      => $date[2].'-'.$date[1].'-'.$date[0],
            'usrid'      => $usrId,
            'respons'    => $resp,
            'dest'       => $dest,
            'id_empresa' => $empresaId
        );
        $this->db->insert('tbl_valesalida', $valeSalHerram);
        $idInsertVale = $this->db->insert_id(); //el id de la fila insertada en la linea superior
        // deta vale salidas
        for ($i=0; $i < count($data['herrid']); $i++) { 
            $detavalHerram["valesid"]    = $idInsertVale;
            $detavalHerram["herrId"]     = $data["herrid"][$i];
            $detavalHerram["id_empresa"] = $empresaId;
            $estado['equip_estad']       = 'TR';
            ////// actualiza estado de herramienta por id
            $this->db->insert('tbl_detavalesalida', $detavalHerram);
            $this->db->where('herrId', $detavalHerram["herrId"]);
            $this->db->update('herramientas', $estado);  
        }

        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE)
        {
            return false;  // Si funciona mal return false
        }
        else
        {
            return true;
        }
    }
}

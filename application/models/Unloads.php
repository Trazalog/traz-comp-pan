<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Unloads extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    function getValeDescarga()
    { 
        $userdata  = $this->session->userdata('user_data');
        $empresaId = $userdata[0]['id_empresa'];
        $this->db->select('tbl_valedesacarga.valedfecha,
            tbl_valedesacarga.respons,
            tbl_valedesacarga.dest,
            herramientas.herrcodigo, 
            marcasequipos.marcadescrip, 
            herramientas.herrdescrip');
        $this->db->from('tbl_valedesacarga');
        $this->db->join('tbl_detavaledescarga', 'tbl_detavaledescarga.valedid = tbl_valedesacarga.valedid');
        $this->db->join('herramientas', 'tbl_detavaledescarga.herrId = herramientas.herrId');
        $this->db->join('marcasequipos', 'herramientas.modid = marcasequipos.marcaid');
        $this->db->where('tbl_valedesacarga.id_empresa', $empresaId);
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
        $this->db->where('equip_estad', 'TR');
        $this->db->where('herramientas.id_empresa', $empresaId);
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
            'valedfecha' => $date[2].'-'.$date[1].'-'.$date[0],
            'usrId'      => $usrId,
            'respons'    => $resp,
            'dest'       => $dest,
            'id_empresa' => $empresaId
        );
        $this->db->insert('tbl_valedesacarga', $valeSalHerram);
        $idInsertVale = $this->db->insert_id(); //el id de la fila insertada en la linea superior
        // detalle vale descarga
        for ($i=0; $i < count($data['herrid']) ; $i++) { 
            $detavalHerram["valedid"]    = $idInsertVale;
            $detavalHerram["herrId"]     = $data["herrid"][$i];
            $detavalHerram["id_empresa"] = $empresaId;
            $estado['equip_estad']       = 'AC';
            // actualiza estado de herramienta por id
            $this->db->insert('tbl_detavaledescarga', $detavalHerram);
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

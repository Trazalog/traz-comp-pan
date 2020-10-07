<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Unload extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Unloads');
    }

    public function index($permission = null)
    {
        $data['permission'] = $permission;
        $data['list']       = $this->Unloads->getValeDescarga();
        $this->load->view('unloads/list',$data);
    }  

    public function cargarValDesc($permission = null)
    { 
        $data['permission'] = $permission;       
        $this->load->view('unloads/view_',$data);
    }  

    public function getHerramienta()
    {
        $response = $this->Unloads->getHerramientas($this->input->post());
        echo json_encode($response);
    }

    public function setHerramienta()
    {
        $data     = $this->input->post();
        $response = $this->Unloads->setHerramientas($data);
        if($response  == false){
            echo json_encode(false);
        }
        else
        {
            echo json_encode(true);
        }
    }


}

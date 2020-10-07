<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Orders');
    }

    public function index($permission = null)
    {
        $data['permission'] = $permission;      
        $data['list']       = $this->Orders->getValeSalidaHerr();
        $this->load->view('orders/list',$data);
    } 

    public function cargarValeSal($permission = null)
    { 
        $data['permission'] = $permission;           
        $this->load->view('orders/view_',$data);
    }  
    
    public function getHerramienta()
    {
        $response = $this->Orders->getHerramientas($this->input->post());
        echo json_encode($response);
    }

    public function setHerramienta()
    {
        $data     = $this->input->post();
        $response = $this->Orders->setHerramientas($data);
        if($response  == false){
            echo json_encode(false);
        }
        else
        {
            echo json_encode(true);
        }
    }

}

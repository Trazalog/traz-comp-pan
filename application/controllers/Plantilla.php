<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Plantilla extends CI_Controller 
{
    function __construct(){
      parent::__construct();    
    } 

    function index(){
      $this->load->view('views/Plantilla.php');
    }
}    
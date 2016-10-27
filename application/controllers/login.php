<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class login extends CI_controller{
    function __construct(){
        parent::__construct();
    }
    function index(){

        $this->load->helper(array('form','url'));
        $this->load->view('login');

    }
}



?>
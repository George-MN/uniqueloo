<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Hades extends CI_Controller{
    function __construct(){
        parent:: __construct();
    }
    function index(){
        if($this->session->userdata('logged_in')){
            $session_data=$this->session->userdata('logged_in');
            $useremail=$session_data['email'];
            $usertype=$session_data['usertype'];
            $this->load->view('content',$useremail);
        }
        else{
            redirect('login','refresh');
        }

    }
    function logout(){
        $this->session->unset_userdata('logged_in');
        session_destroy();
        redirect('home','refresh');
    }

}

?>
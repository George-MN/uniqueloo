<?php

//defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_controller {

    function __construct() {
        parent:: __construct();
        
    }

    function index() {
        //credential validation
        //$this->load->library('form_validation');
        //$this->form_validation->set_rules('email', 'email', 'trim|required|xss_clean');
        //$this->form_validation->set_rules('password', 'password', 'trim|required|xss_clean|callback_check_database');
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $this->check_database($password, $email);

        if ($this->form_validation->runs() == FALSE) {
            //form validation failed
            echo "failed";
            //$this->load->view('index');
        } else {
            echo "SUCCESS";
            //redirect('hades','refresh');
        }
    }

    function check_database($password, $email) {
        //validate against database
        $myemail = $this->input->post('email');

        //query database
        $result = $this->login_model->login($myemail, $password);
        if ($result) {
            $sess_array = array();
            foreach ($result as $row) {
                $email = $row->email;
                $usertype = $row->usertype;
                $userid = $row->userid;
                $sess_array = array(
                    'email' => $row->email,
                    'usertype' => $row->usertype,
                    'userid' => $row->userid
                );
                $this->session->set_userdata('logged_in', $sess_array);
            }
            return TRUE;
        } else {
            $this->form_validation->set_message('check_database', 'invalid username or password');
            return FALSE;
        }
    }

}

?>
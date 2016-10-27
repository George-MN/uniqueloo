<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class MY_Controller extends CI_Controller {

    function __construct() {
        parent::__construct();
        // $this->output->enable_profiler(TRUE);
        // $this->output->cache(30);
        $this->check_isvalidated();
    }

    private function check_isvalidated() {
        if (!$this->session->userdata('validated')) {
            redirect('login');
        }
    }

    function get_roles() {
        $this->db->trans_start();
        $sql = "Select * from roles order by name ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_users() {
        $this->db->trans_start();
        $sql = "Select * from users order by user_name ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }
    
    
    
     function get_employees() {
        $this->db->trans_start();
        $sql = "Select * from employee order by id ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }
    

    function get_standards() {
        $this->db->trans_start();
        $sql = "Select * from standards order by parameter ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_clients() {
        $this->db->trans_start();
        $sql = "Select * from client order by name ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_department() {
        $this->db->trans_start();
        $sql = "Select * from department order by name ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_titles() {
        $this->db->trans_start();
        $SQL = "Select * from title";
        $query = $this->db->query($SQL);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result();
        }
    }

    function get_assets() {
        $this->db->trans_start();
        $sql = "Select * from asset order by date_added ASC";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_job_cards() {
        $this->db->trans_start();
        $sql = "select job_card.id as job_card_id, job_card.job_card_no as job_card_no,job_card.invoice_no as invoice_no, dte_evnt,dte_srcd,job_card.status as status,client.id as client_id,client.name as client_name, total_job_card_cost.amount_cr, total_job_card_cost.id as total_job_card_cost_id from client inner join job_card on job_card.clnt_id = client.id inner join total_job_card_cost on total_job_card_cost.job_card_id = job_card.id order by job_card.id";
        $query = $this->db->query($sql);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function user_admin_functions() {
        $user_id = $this->session->userdata('user_id');
        $this->db->trans_start();
        $query = $this->db->query("Select * from user_permissions_list where level='1' and user_id='$user_id' ");
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function user_daily_functions() {
        $user_id = $this->session->userdata('user_id');
        $this->db->trans_start();
        $query = $this->db->query("Select * from user_permissions_list where level='2' and user_id='$user_id' ");
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function user_reports_functions() {
        $user_id = $this->session->userdata('user_id');
        $this->db->trans_start();
        $query = $this->db->query("Select * from user_permissions_list where level='3' and user_id='$user_id' ");
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

    function get_asset_type() {
        $this->db->trans_start();
        $query = $this->db->query("Select * from asset_type ");
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            
        } else {
            return $query->result_array();
        }
    }

}

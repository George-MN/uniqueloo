<?php

class Login_model extends CI_Model{
    function login($email,$password){
        $this->db->select('email,user_id');
        $this->db->from('users');
        $this->db->where('email',$email);
        $this->db->and('password',$password);
        $this->db->limit(1);

        $query= $this->db->get();
        if($query->num_rows()==1){
            return $query->results();
        }
        else{
            return false;
        }
    }
}



?>
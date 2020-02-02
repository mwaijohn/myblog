<?php
class accounts_model extends CI_Model{
    public function __construct(){
        $this->load->database();
    }

    public function signup(){
        $data = array(
            'name' => $this->input->post('name'),
            'username' => $this->input->post('username'),
            'zipcode' => $this->input->post('zip'),
            'email' => $this->input->post('email'),
            'password' => md5($this->input->post('pass1')),
        );
        
        if($this->db->insert('users',$data)){
            $newdata = array(
                'username'  => $this->input->post('username'),
                'email'     => $this->input->post('email'),
                'logged_in' => TRUE
            );
        
            $this->session->set_userdata($newdata);
        }
    }

    public function login(){
        $query = $this->db->get_where(
            'users',
            array(
                'username' => $this->input->post('username'),
                'password' => md5($this->input->post('password'))
            ));

        $result = $query->row_array();

            if(!empty($result)){
                $newdata = array(
                    'username'  => $this->input->post('username'),
                    'email'     => $result['email'],
                    'logged_in' => TRUE,
                    'is_admin' => $result['is_admin'] == '1'? TRUE : FALSE,
                );
            
                $this->session->set_userdata($newdata);

                return true;
            }

        return false;
    }

    public function check_username($username){
        $query = $this->db->get_where('users' , array('username' => $username));
        if(empty($query->row_array())){
            return true;
        }
        return false;
    }

    public function check_email($email){
        $query = $this->db->get_where('users' , array('email' => $email));
        if(empty($query->row_array())){
            return true;
        }

        return false;
    }

   
}
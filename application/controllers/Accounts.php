<?php
class Accounts extends CI_Controller {
    public function signup(){

        $data['title'] = ucfirst("Sign up"); // Capitalize the first letter
        $data['footer'] = ucfirst("footer");

        $this->form_validation->set_rules('name','Name',
        'required');
        $this->form_validation->set_rules('email','Email',
        'required');
        $this->form_validation->set_rules('username','Username'
        ,'required');

        $this->form_validation->set_rules('pass1','Password'
        ,'required');
        $this->form_validation->set_rules('pass2','Confirm password'
        ,'required');

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/header', $data);
            $this->load->view('accounts/signup');
            $this->load->view('templates/footer', $data);
        }else {
            if($this->accounts_model->check_username($this->input->post('username'))
            && $this->accounts_model->check_email($this->input->post('email'))){
                $this->accounts_model->signup();
                redirect('create');
            }else{
                if(!$this->accounts_model->check_username($this->input->post('username'))){
                    echo "<script>alert('email already exist')</script>";
                }

                if($this->accounts_model->check_email($this->input->post('email'))){
                    echo "<script>alert('email already exist')</script>";
                }
            }
        }
    }

    public function login(){

        if(isset($_SESSION['logged_in'])){ 
            redirect('posts');
        };

        $data['title'] = ucfirst("Sign up"); // Capitalize the first letter
        $data['footer'] = ucfirst("footer");

        $this->form_validation->set_rules('username','Username'
        ,'required');

        $this->form_validation->set_rules('password','Password'
        ,'required');

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/header', $data);
            $this->load->view('accounts/login');
            $this->load->view('templates/footer', $data);
        }else {
            if($this->accounts_model->login()){
                redirect('create');
            }else{
                echo "<script>alert('check your details and try again')</script>";
                redirect('login');
            }
        }
    }

    public function logout(){
        unset($_SESSION['logged_in']);
        redirect('posts');
    }
}
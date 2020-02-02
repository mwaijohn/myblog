<?php
class Categories extends CI_Controller{
    public function create_category(){
        $data['title'] = ucfirst("Create category"); // Capitalize the first letter
        $data['footer'] = ucfirst("footer");

        $this->form_validation->set_rules('name','Category name'
        ,'required');

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/header', $data);
            $this->load->view('category/create_category');
            $this->load->view('templates/footer', $data);

        }else {
            if($this->category_model->create_category()){
                redirect('create');
            }else{
                echo "<script>alert('check your details and try again')</script>";
                redirect('login');
            }
        }
    }

    public function show_categories(){
        $data['categories'] = $this->category_model->get_categories();

        $this->load->view('templates/header', $data);
        $this->load->view('category/show_categories');
        $this->load->view('templates/footer', $data);
    }

    public function edit_category($id){

        $data['category'] = $this->category_model->get_category($id);
        $data['title'] = ucfirst("edit category"); // Capitalize the first letter
        $data['footer'] = ucfirst("footer");

        $this->load->view('templates/header', $data);
        $this->load->view('category/edit_category');
        $this->load->view('templates/footer', $data);
    }

    public function update_category(){
        $this->category_model->update_category();
        redirect('categories');
    }
}
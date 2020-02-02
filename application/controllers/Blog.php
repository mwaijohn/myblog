<?php
class Blog extends CI_Controller {
    public function index(){
        $categories =  $this->post_model->get_categories();
        $data['categories'] = $categories;
        $data['title'] = ucfirst("Create post"); // Capitalize the first letter
        $data['footer'] = ucfirst("footer");

        $this->form_validation->set_rules('title','Title',
        'required');
        $this->form_validation->set_rules('body','Body',
        'required');

        if($this->form_validation->run() === FALSE){
            $this->load->view('templates/header', $data);
            $this->load->view('blogs/create',$data);
            $this->load->view('templates/footer', $data);
        }else {
            $this->post_model->create_post();
            redirect('posts');
        }
    }

    public function post($slug){
        $data['post'] = $this->post_model->get_posts($slug);
        $data['comments'] = $this->comments_model->get_comments($data['post']['id']);

     
        $this->load->view('templates/header', $data);
        $this->load->view('blogs/post',$data);
        $this->load->view('templates/footer', $data);
    }

    public function delete($id){
        $this->post_model->delete_post($id);
        redirect('posts');
    }

    public function edit($slug){

        $categories =  $this->post_model->get_categories();
        $data['categories'] = $categories;

        $data['post'] = $this->post_model->get_posts($slug);

        $this->load->view('templates/header', $data);
        $this->load->view('blogs/edit',$data);
        $this->load->view('templates/footer', $data);
    }

    public function update($id){
        echo "Submitted";
        $this->post_model->update_post();
        redirect('posts');
    }

    public function posts($offset = 0){
        $data['posts'] = $this->post_model->get_posts();

        

        $config['base_url'] = base_url() .'/posts//';
        $config['total_rows'] = $this->db->count_all('posts');
        $config['per_page'] = 5;
        $config['uri_segment'] = 2;
        $config['attribute'] = array('class'=>'pagination-link');

        $this->pagination->initialize($config);

        $data['posts'] = $this->post_model->get_posts(FALSE,$config['per_page'],$offset);
        $this->load->view('templates/header', $data);
        $this->load->view('blogs/posts',$data);
        $this->load->view('templates/footer', $data);
    }

    public function get_post_by_category($category_id){
        $data['posts'] = $this->post_model->get_posts_by_category($category_id);
        
        $this->load->view('templates/header', $data);
        $this->load->view('blogs/posts',$data);
        $this->load->view('templates/footer', $data);

    }
}
?>
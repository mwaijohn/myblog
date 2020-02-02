<?php
class Comments extends CI_Controller{
    public function create_comment(){
        $this->comments_model->create_comment($user_id = FALSE, $post_id = FALSE);

        $slug = $this->input->post('slug');
        redirect('post/'.$slug);
    }

    public function get_comments($post_id){
        return $this->comments_model->get_comments($post_id);
    }
}
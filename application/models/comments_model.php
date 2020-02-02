<?php
class Comments_model extends CI_model{
    public function __construct(){
        $this->load->database();
    }

    public function create_comment($user_id = FALSE, $post_id = FALSE){
       return  $this->db->insert('comments',array(
            'user_id' => $user_id,
            'post_id' => $this->input->post('post-id'),
            'comment' => $this->input->post('comment'),
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email')
        ));
    }

    public function get_comments($post_id = FALSE){
        $query = $this->db->get_where('comments',array(
            'post_id' => $post_id
        ));

        return $query->result_array();
    }

}
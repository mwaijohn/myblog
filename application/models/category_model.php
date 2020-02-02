<?php 
class Category_model extends CI_model{
    public function __construct(){
        $this->load->database();
    }

    public function create_category(){
        $data = array('category_name'=> $this->input->post('name'));
        $this->db->insert('categories',$data);
    }

    public function get_categories(){
        $query = $this->db->get('categories');
        return $query->result_array();
    }

    public function get_category($id){
        $query = $this->db->get_where('categories',array(
            'id' => $id
        ));

        return $query->row_array();
    }

    public function update_category(){
        $this->db->where('id',$this->input->post('id'));

        $this->db->update('categories',array(
            'category_name' => $this->input->post('name')
        ));
    }
    
}
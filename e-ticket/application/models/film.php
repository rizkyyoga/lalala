<?php
class Film extends CI_Model {
	function __construct(){
		parent::__construct();
	}
	
	function select_now_playing(){
		$this->db->select('*');
		$this->db->from('film');
		$this->db->where('status','1');
		$this->db->order_by('judul', 'asc');
		return $this->db->get();
	}
	
	function select_coming_soon(){
		$this->db->select('*');
		$this->db->from('film');
		$this->db->where('status','0');
		$this->db->order_by('judul', 'asc');
		return $this->db->get();
	}
	
	function select_by_id($id){
		$this->db->select('*');
		$this->db->from('film');
		$this->db->where('id_film',$id);
		return $this->db->get();
	}
}
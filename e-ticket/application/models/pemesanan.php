<?php
class Pemesanan extends CI_Model {
	function __construct(){
		parent::__construct();
	}
	
	function select_now_tayang_by_id($id){
		$this->db->select('*');
		$this->db->from('tayang');
		$this->db->where('id_film',$id);
		$this->db->order_by('waktu', 'asc');
		return $this->db->get();
	}
	
	function select_kursi_available($id){
		$this->db->select('b.no_kursi,b.id_tayang');
		$this->db->from('tayang a,pemesanan b');
		$this->db->where("a.id_tayang = b.id_tayang and a.id_film=".$id." and b.status = 0");
		return $this->db->get();
	}
	
	function select_by_id($id){
		$this->db->select('*');
		$this->db->from('film');
		$this->db->where('id_film',$id);
		return $this->db->get();
	}
}
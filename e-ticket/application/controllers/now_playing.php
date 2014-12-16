<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class now_playing extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 function __construct()
	 {
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('form');
		$this->load->model('film');
	}

	public function index()
	{
		$data['now_playing']=$this->film->select_now_playing()->result();
		$this->load->view('now_playing',$data);
	}
	
	public function details($id)
	{
		$data['film']=$this->film->select_by_id($id)->result();
		$this->load->view('detail_film',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
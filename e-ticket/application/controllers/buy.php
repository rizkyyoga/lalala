<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class buy extends CI_Controller {

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
		$this->load->model('pemesanan');
	}

	public function index()
	{
		$this->load->view('home');
	}
	
	function ticket($id)
	{
		$data['film']=$this->film->select_by_id($id)->result();
		$data['tayang']=$this->pemesanan->select_now_tayang_by_id($id)->result();
		$data['kursi']=$this->pemesanan->select_kursi_available($id)->result();
		$this->load->view('buy',$data);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
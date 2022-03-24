<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Fakultas extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if(!$this->session->userdata('nama')){
            redirect('login');
        }else{
            if($this->session->userdata('level')!='administrator'){
                redirect('welcome');
            }
        }
        $this->load->model('fakultas_m');
    }
    
    public function index()
    {
        $data['mFakultas'] = true;
        $data['kelas'] = $this->fakultas_m->getAll();
        $data['content'] = 'v_fakultas';
        $this->load->view('index',$data);
    }

    public function tambah()
    {
        $data = [
            'nama_kelas'=>$this->input->post('nama_kelas',true)
        ];
        $this->fakultas_m->tambahBaru($data);
        $this->session->set_flashdata('berhasil','Anda berhasil menambahkan data kelas baru');
        redirect('fakultas');
    }

    public function hapus($id){
        $this->fakultas_m->hapus($id);
        $this->session->set_flashdata('berhasil','Anda berhasil menghapus data kelas');
        redirect('fakultas');
    }
}

/* End of file Fakultas.php */
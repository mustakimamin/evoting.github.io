<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        if($this->session->userdata('nama')){
            redirect('welcome');
        }
        $this->load->model('user_m');
    }
    
    public function index()
    {
        $this->load->view('v_login');
    }

    public function cek_login(){
        $username = $this->input->post('nama', true);
        $password = $this->input->post('password', true);

        $cek_admin = $this->user_m->cekAdmin($username);
        if($cek_admin){
            if(password_verify($password,$cek_admin['password'])){
                $sessionData = [
                    'id'=>$cek_admin['id_admin'],
                    'id_kelas'=>$cek_admin['id_kelas'],
                    'nama'=>$cek_admin['nama'],
                    'level'=>$cek_admin['level']
                ];
                $this->session->set_userdata($sessionData);
                redirect('welcome');
            }else{
                $this->session->set_flashdata('gagal','Password yang anda masukkan salah !');
                redirect('login');
            }
        }else{
            $cek_user = $this->user_m->cekUser($username);
            $config = $this->user_m->getConfig($username);
            if(password_verify($password,$cek_user['password'])){
                $sessionData = [
                    'id'=>$cek_user['id_pemilih'],
                    'id_kelas'=>$cek_user['id_kelas'],
                    'nama'=>$cek_user['nis'],
                    'nis'=>$cek_user['password'],
                    'email'=>$cek_user['email'],
                    'level'=>'user',
                ];
                $this->session->set_userdata($sessionData);
                redirect('welcome');
            }else{
                $this->session->set_flashdata('gagal','Password yang anda masukkan salah !');
                redirect('login');
            }
        }
    }
}

/* End of file Login.php */
<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Pemilih_m extends CI_Model {

    private $table = 'tb_pemilih';

    private $id = 'id_pemilih';

    public function getAll(){
        return $this->db->get($this->table)->result_array();
    }

    public function getNIS($id){
        $data = $this->db->get_where($this->table,[$this->id=>$id])->row_array();
        return $data['nis'];
    }

    public function getDataById($id){
        return $this->db->get_where($this->table,[$this->id=>$id])->row_array();
    }
    
    public function getByKelas($id_kelas){
        return $this->db->get_where($this->table,['id_kelas'=>$id_kelas])->result_array();
    }
    // public function getAll(){ 
    //     return $this->db
    //                 ->select('*')
    //                 ->join('tb_kelas b','b.id_fakultas=a.id_fakultas')
    //                 ->where('a.level','operator')
    //                 ->get($this->table.' a')->result_array();
    // }

    public function resetPassword($data,$id){
        $this->db->update($this->table,$data,[$this->id=>$id]);
    }

    public function tambahBaru($data){
        $this->db->insert($this->table,$data);
    }

    public function ubahData($data,$id){
        $this->db->update($this->table,$data,[$this->id=>$id]);
    }

    public function cekNIS($nis){
        return $this->db->get_where($this->table,['nis'=>$nis])->row_array();
    }

    public function import($data){
        $this->db->insert($this->table,$data);
    }

    public function mailSent($id){
        $this->db->update($this->table,['mail_sent'=>1],[$this->id=>$id]);
    }

    public function hapus($id){
        $this->db->delete($this->table,[$this->id=>$id]);
    }

}

/* End of file Pemilih_m.php */
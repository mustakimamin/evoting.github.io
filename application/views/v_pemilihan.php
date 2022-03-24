<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Pemungutan Suara </h1>
<?php if($this->session->flashdata('berhasil')): ?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Berhasil</strong> <?= $this->session->flashdata('berhasil'); ?>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<?php endif; ?>
<?php if($this->session->flashdata('gagal')): ?>
<div class="alert alert-danger alert-dismissible fade show" role="alert">
    <strong>Gagal</strong> <?= $this->session->flashdata('gagal'); ?>
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<?php endif; ?>
<!-- DataTales Example -->
<div class="card shadow">
    <div class="card-body">
        <?php if($config['status']=='nonaktif'): ?>
        <h2 class="card-title text-center border-left-danger text-danger">
            Mohon Maaf, Waktu pemilihan pasangan calon telah anda lewati.
        </h2>
        <?php else: ?>
        <div class="row">
            <?php foreach($daftar_calon as $key => $dc): ?>
            <div class="col-sm-6">
                <div class="card">
                    <img src="<?=base_url('uploads/image/');?><?=$dc['gambar'];?>" class="card-img-top" alt="Foto Calon"
                        width="100%" height="100%">
                    <div class="card-body">
                        <h4 class="card-title text-center border-left-info">
                            <a
                                href="<?=base_url('pemilihan/detail/'.$dc['id_calon']);?>"><?=$dc['calon_ketua_osis'].' & '.$dc['calon_wakil_osis'];?></a>
                        </h4>
                        <p class="card-text"><?=$dc['visi_misi'];?></p>
                    </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <a href="<?=base_url('pemilihan/pilih/');?><?=$dc['id_calon'];?>"
                                    class="badge badge-success float-right"
                                     onclick="return confirm('Anda yakin akan memiliha pasangan calon ini ?')"><i
                                        class="fas fa-pen"></i>
                                        Pilih</a>
                                <a href="<?=base_url('hasil/video/');?><?=$dc['id_calon'];?>"
                                class="badge badge-dark float-left"><i class="fas fa-video"></i>
                                Nonton Video</a>
                            </div>
                        </div>
                    </div>
            </div>
            <?php endforeach; ?>
        </div>
        <?php endif; ?>
    </div>
</div>
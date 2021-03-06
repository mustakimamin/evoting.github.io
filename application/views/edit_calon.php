<script>
function preview_foto(event) {

    var reader = new FileReader();
    reader.onload = function() {
        var output = document.getElementById('viewfoto');
        output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
}
</script>
<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Ubah Data Calon</h1>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-body">
        <form action="<?=base_url('calon/proses_ubah');?>" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Kelas Calon Ketua OSIS</label>
                                <select class="form-control" name="kelas_calon_ketua_osis">
                                    <?php foreach($fakultas as $f): ?>
                                    <option value="<?= $f['nama_kelas']; ?>"
                                        <?= $f['nama_kelas']==$calonbyid['kelas_calon_ketua_osis']?'selected':''; ?>>
                                        <?= ucwords($f['nama_kelas']); ?>
                                    </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="presma">NIS Calon Ketua OSIS</label>
                                <input type="text" class="form-control" id="presma" name="nis_calon_ketua_osis"
                                    value="<?=$calonbyid['nis_calon_ketua_osis'];?>" autofocus required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="presma">Nama Calon Ketua OSIS</label>
                        <input type="hidden" name="id_calon" value="<?=$calonbyid['id_calon'];?>">
                        <input type="text" class="form-control" id="presma" name="calon_ketua_osis"
                            value="<?=$calonbyid['calon_ketua_osis'];?>" autofocus required>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Kelas Calon Wakil OSIS</label>
                                <select class="form-control" name="kelas_calon_wakil_osis">
                                    <?php foreach($fakultas as $f): ?>
                                    <option value="<?= $f['nama_kelas']; ?>"
                                        <?= $f['nama_kelas']==$calonbyid['kelas_calon_wakil_osis']?'selected':''; ?>>
                                        <?= ucwords($f['nama_kelas']); ?>
                                    </option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="presma">NIS Calon Wakil OSIS</label>
                                <input type="text" class="form-control" id="presma" name="nis_calon_wakil_osis"
                                    value="<?=$calonbyid['nis_calon_wakil_osis'];?>" autofocus required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="wapresma">Nama Calon Wakil OSIS</label>
                        <input type="text" class="form-control" id="wapresma" name="calon_wakil_osis"
                            value="<?=$calonbyid['calon_wakil_osis'];?>" required>
                    </div>
                    <div class="form-group">
                        <label for="visi_misi">Visi Misi</label>
                        <textarea class="form-control" id="visi_misi" rows="3" name="visi_misi"
                            required><?=$calonbyid['visi_misi'];?></textarea>
                    </div>
                    <div class="form-group">
                        <label for="foto_calon">Foto Calon</label>
                        <input type="hidden" name="foto_lama" value="<?=$calonbyid['gambar'];?>">
                        <input type="file" class="form-control-file" id="foto_calon" name="foto_calon"
                            aria-describedby="file_help" onchange="preview_foto(event)">
                        <small id="file_help" class="form-text text-muted">Tipe foto yang di izinkan <b>.jpg .jpeg
                                .png</b>, Ukuran maksimum foto <b>2 MB</b>.</small>
                    </div>
                </div>
                <div class="col-md-6">
                    <div style="border:1px solid;height:300px;">
                        <img src="<?=base_url('uploads/image/');?><?=$calonbyid['gambar'];?>" alt="Foto Calon"
                            width="100%" height="297" id="viewfoto">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="float-left">
                        <a href="<?=base_url('calon');?>" class="btn btn-secondary"><i class="fas fa-times"></i>
                            Batal</a>
                    </div>
                    <div class="float-right">
                        <button type="submit" class="btn btn-primary float-right"><i class="fas fa-save"></i>
                            Simpan</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
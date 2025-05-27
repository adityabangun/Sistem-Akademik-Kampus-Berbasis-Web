<section class="content-header">
        <h1>
          <?= $title ?> Tahun Akademik : <?= $ta_aktif['ta'] ?>/<?= $ta_aktif['semester'] ?>
        </h1>
        <br>
</section>

<div class="row">
<div class="col-sm-12">

<table class="table-striped table-responsive">
  <tr>
    <td rowspan="7"><img src="<?= base_url('fotomhs/'. $mhs['foto_mhs']) ?>" height="150px" width="150px"></td>
    <td width="150px">Tahun Akademik</td>
    <td width="20px">:</td>
    <td><?= $ta_aktif['ta'] ?>/<?= $ta_aktif['semester'] ?></td>
    <td rowspan="7"></td>
  </tr>
  <tr>
    <td>NIM</td>
    <td>:</td>
    <td><?= $mhs['nim'] ?></td>
  </tr>
  <tr>
    <td>Nama</td>
    <td>:</td>
    <td><?= $mhs['nama_mhs'] ?></td>
  </tr>
  <tr>
    <td>Fakultas</td>
    <td>:</td>
    <td><?= $mhs['fakultas'] ?></td>
  </tr>
  <tr>
    <td>Program Studi</td>
    <td>:</td>
    <td><?= $mhs['prodi'] ?></td>
  </tr>
  <tr>
    <td>Rombongan Kelas</td>
    <td>:</td>
    <td><?= $mhs['nama_kelas'] ?>-<?= $mhs['tahun_angkatan'] ?></td>
  </tr>
  <tr>
    <td>Dosen PA</td>
    <td>:</td>
    <td><?= $mhs['nama_dosen'] ?></td>
  </tr>
</table>
</div>

<div class="col-sm-12">
    <button class="btn btn-sm btn-info" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i> Add KRS</button>
    <a href="<?= base_url('krs/print') ?>" target="_blank" class="btn btn-sm btn-primary"><i class="fa fa-print"></i> Print KRS</a>
</div>
<div class="col-sm-12">
  <?php
  if (session()->getFlashdata('pesan')) {
    echo '<div class="alert alert-success" role="alert">';
    echo session()->getFlashdata('pesan');
    echo '</div>';
  }
  ?>
    <table class="table table-striped table-bordered table-responsive">
        <tr class="label-success">
            <th class="text-center">No</th>
            <th class="text-center">Kode</th>
            <th class="text-center">Mata Kuliah</th>
            <th class="text-center">SKS</th>
            <th class="text-center">Semester</th>
            <th class="text-center">Kelas</th>
            <th class="text-center">Ruangan</th>
            <th class="text-center">Dosen</th>
            <th class="text-center">Waktu</th>
            <th class="text-center"></th>
        </tr>
        <?php $no = 1;
        $sks = 0;
        foreach ($data_matkul as $key => $value) { 
          $sks = $sks + $value['sks'];
          ?>
          <tr>
            <td class="text-center"><?= $no++ ?></td>
            <td class="text-center"><?= $value['kode_matkul'] ?></td>
            <td><?= $value['matkul'] ?></td>
            <td class="text-center"><?= $value['sks'] ?></td>
            <td class="text-center"><?= $value['smt'] ?></td>
            <td class="text-center"><?= $value['nama_kelas'] ?>-<?= $value['tahun_angkatan'] ?></td>
            <td><?= $value['ruangan'] ?></td>
            <td><?= $value['nama_dosen'] ?></td>
            <td><?= $value['hari'] ?>, <?= $value['waktu'] ?></td>
            <td class="text-center">
              <button class="btn btn-danger btn-xs" data-toggle="modal" data-target="#delete<?= $value['id_krs'] ?>"><i class="fa fa-trash"></i></button>
            </td>
        </tr>
        <?php } ?>
        
    </table>
    <h4><b>Jumlah SKS : <?= $sks ?></b></h4>
</div>
</div>

<!-- modal Add matkul -->
<div class="modal fade" id="add">
          <div class="modal-dialog modal-lg">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Daftar Mata Kuliah Ditawarkan</h4>
              </div>
              <div class="modal-body">
                <table class="table table-bordered table-striped text-sm" id="example1">
                  <thead>
                    <tr class="label-success">
                    <th class="text-center">No</th>
                    <th class="text-center">Kode</th>
                    <th class="text-center">Mata Kuliah</th>
                    <th class="text-center">SKS</th>
                    <th class="text-center">Semester</th>
                    <th class="text-center">Kelas</th>
                    <th class="text-center">Ruangan</th>
                    <th class="text-center">Dosen</th>
                    <th class="text-center">Waktu</th>
                    <th class="text-center">Quota</th>
                    <th class="text-center">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 1;
                    $db = \Config\Database::connect();
                    foreach ($matkul_ditawarkan as $key => $value) {
                      $jml = $db->table('tbl_krs')
                ->where('id_jadwal', $value['id_jadwal'])
                ->countAllResults();
                      ?>
                      <tr>
                      <td class="text-center"><?= $no++ ?></td>
                      <td class="text-center"><?= $value['kode_matkul'] ?></td>
                      <td>
                        <?= $value['matkul'] ?>
                        (<?= $value['kode_prodi'] ?>)
                      </td>
                      <td class="text-center"><?= $value['sks'] ?></td>
                      <td class="text-center"><?= $value['smt'] ?></td>
                      <td><?= $value['nama_kelas'] ?>-<?= $value['tahun_angkatan'] ?></td>
                      <td><?= $value['ruangan'] ?></td>
                      <td><?= $value['nama_dosen'] ?></td>
                      <td><?= $value['hari'] ?>, <?= $value['waktu'] ?></td>
                      <td class="text-center">
                        <span class="label label-success"><?= $jml ?>/<?= $value['quota'] ?></span>
                      </td>
                      <td class="text-center">
                        <?php if ($jml == $value['quota']) { ?>
                          <span class="label label-danger">Full</span>
                        <?php } else { ?>
                          <a href="<?= base_url('krs/tambah_matkul/' . $value['id_jadwal']) ?>" class="btn btn-success btn-xs btn-flat"><i class="fa fa-plus"></i></a>
                        <?php } ?>
                        
                      </td>
                    </tr>
                    <?php } ?>
                    
                  </tbody>
                </table>
              </div> 
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

        <!-- modal delete -->
<?php foreach ($data_matkul as $key => $value) { ?>

<div class="modal fade" id="delete<?= $value['id_krs'] ?>">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Delete <?= $title ?></h4>
      </div>
      <div class="modal-body">
        
      Apakah Anda Yakin Ingin Menghapus <b><?= $value['kode_matkul'] ?>|<?= $value['matkul'] ?>.?</b>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger pull-left btn-flat" data-dismiss="modal">Close</button>
        <a href="<?= base_url('krs/delete/'.$value['id_krs']) ?>" class="btn btn-success btn-flat">Delete</a>
      </div>
    
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>
<?php } ?>
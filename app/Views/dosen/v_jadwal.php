<section class="content-header">
        <h1>
          <?= $title ?> TA : <?= $ta['ta'] ?>/<?= $ta['semester'] ?>
        </h1>
        <br>
</section>

<div class="row">
<table class="table table-striped table-bordered table-responsive">
    <tr class="label-success">
        <th class="text-center">No</th>
        <th class="text-center">Hari</th>
        <th class="text-center">Kode</th>
        <th class="text-center">Program Studi</th>
        <th class="text-center">Semester</th>
        <th class="text-center">Mata Kuliah</th>
        <th class="text-center">SKS</th>
        <th class="text-center">Kelas</th>
        <th class="text-center">Ruangan</th>
        <th class="text-center">Dosen</th>
    </tr>
        <?php $no = 1;
        foreach ($jadwal as $key => $value) { ?>
    <tr>
        <td class="text-center"><?= $no++ ?></td>
        <td><?= $value['hari'] ?>, <?= $value['waktu'] ?></td>
        <td class="text-center"><?= $value['kode_matkul'] ?></td>
        <td><?= $value['prodi'] ?></td>
        <td class="text-center"><?= $value['smt'] ?></td>
        <td><?= $value['matkul'] ?></td>
        <td class="text-center"><?= $value['sks'] ?></td>
        <td class="text-center"><?= $value['nama_kelas'] ?>-<?= $value['tahun_angkatan'] ?></td>
        <td class="text-center"><?= $value['ruangan'] ?></td>
        <td><?= $value['nama_dosen'] ?></td>
    </tr>
    <?php } ?>
    </table>
</div>


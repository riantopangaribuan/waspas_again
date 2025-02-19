<h2>Detail Calon Pelatih</h2>
<a href="index.php?halaman=calonPelatih" class=" btn btn-warning pull-right">
    << Kembali </a>
        <?php
        $ambil = $koneksi->query("SELECT * FROM calon_pelatih WHERE id_calon_pelatih='$_GET[id]'");
        $detail = $ambil->fetch_assoc();
        ?>
        <!-- <pre>
    <?php print_r($detail); ?>
</pre> -->
        <h2><strong><?php echo $detail['nama']; ?></strong> </h2>

        <form method="post">
            <div class="form-group">
                <label>Nama Lengkap</label>
                <input type="text" class="form-control" name="nama" required="required"
                    value="<?php echo $detail['nama']; ?>" readonly>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="text" class="form-control" name="email" required="required"
                    value="<?php echo $detail['email']; ?>" readonly>
            </div>
            <div class="form-group">
                <label>No.Hp</label>
                <input type="text" class="form-control" name="no_hp" required="required"
                    value="<?php echo $detail['no_hp']; ?>" readonly>
            </div>
            <div class="form-group">
                <label>Visi Misi</label>
                <textarea type="double" class="form-control" name="pangkat" required="required"
                    readonly><?php echo $detail['visi_misi']; ?> </textarea>
            </div>
            <div class="form-group">
                <label>Pengalaman Melatih</label>
                <input type="double" class="form-control" name="pengalaman_melatih" required="required"
                    value="<?php echo $detail['pengalaman_melatih']; ?> Tahun" readonly>
            </div>
            <div class="form-group">
                <label>Pengalaman Bermain</label>
                <input type="double" class="form-control" name="pengalaman_bermain" required="required"
                    value="<?php echo $detail['pengalaman_bermain']; ?> Tahun" readonly>
            </div>
            <div class="form-group">
                <label>Alamat</label>
                <input type="double" class="form-control" name="alamat" required="required"
                    value="<?php echo $detail['alamat']; ?>" readonly>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Sertifikat Lisensi</label>
                        <input type="text" class="form-control" name="sertifikat_lisensi" required="required"
                            value="<?php echo $detail['sertifikat_lisensi']; ?>" readonly>
                    </div>
                </div>
                <div class="col-md-6">
                    <br>
                    <button><a href="download.php?file=<?php echo $detail['sertifikat_lisensi'] ?>"
                            class="btn btn-primary"><span class="glyphicon glyphicon-download"></span>
                            Download</a></button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label>Keterangan validasi</label>
                        <select class="form-control" name="ket">

                            <?php if ($detail['keterangan']==NULL ):  ?>
                            <option disabled="disabled">--Pilih--</option>
                            </option>
                            <?php else :  ?>
                            <option disabled="disabled"><?php echo $detail['keterangan'] ?>
                                <?php endif ?>
                            <option disabled="disabled">--Pilih--</option>
                            <option value="Sesuai"> Sesuai </option>
                            <option value="Tidak Sesuai"> Tidak Seusai </option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <br>
                        <br>
                        <label>Hasil Penilaian</label>
                        <input type="double" class="form-control" name="hasil" required="required"
                            value="<?php echo $detail['hasil']; ?>" readonly>
                    </div>
                </div>
            </div>
            <input type="submit" name="save" value="Simpan Perubahan" class="btn btn-success">
        </form>
        <?php
        if (isset($_POST['save'])) {
            $ket = $_POST["ket"];
            $koneksi->query("UPDATE calon_pelatih SET keterangan='$ket' WHERE id_calon_pelatih='$_GET[id]'");
            echo "<div class='alert alert-info'>Data tersimpan</div>";
            echo "<meta http-equiv='refresh' content='1;url=index.php?halaman=calonPelatih'>";
        }
        ?>
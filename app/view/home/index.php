<div class="main-container">
    <section class="height-100 imagebg text-center" data-overlay="1">
        <div class="background-image-holder">
            <img alt="background" src="img/bg_LesinAja_1.jpg" />
        </div>
        <div class="container pos-vertical-center">
            <div class="row">
                <div class="col-md-7 col-lg-5 ">
                    <div class="boxed boxed--border">
                        <h3>Selamat Datang, </br>Silahkan Isi Data Kalian Dibawah Ini</h3>
                    </div>
                    <div class="boxed boxed--border">
                        <form action="index.php?page=home" method="POST">
                            <div class="row">
                                <div class="col-md-12">
                                    <input id="name" name="name" type="text" required placeholder="Nama" autofocus>
                                </div>
                                <div class="input-select col-md-12">
                                    <select id="level" name="level" required>
                                        <option value="">Pilih Tingkatan Kelas</option>
                                        <option selected value="1">Kelas 1</option>
                                        <option value="2">Kelas 2</option>
                                        <option value="3">Kelas 3</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <select id="amount" name="amount" required>
                                        <option value="">Jumlah Soal</option>
                                        <option selected value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="30">30</option>
                                        <option value="40">40</option>
                                        <option value="50">50</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn btn--primary type--uppercase" type="submit" name="action">Mulai</button>
                                </div>
                                <a class="" href="../admin/index.php">Login As Admin</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<?php if (!isset($_GET['act'])) { ?>

    <div class="fixed-action-btn" id="" style="display:true">
        <a class="btn-floating btn-large" href="index.php?page=questions&act=add">
            <i class="large material-icons">add</i>
        </a>
    </div>

    <span class="card-title dark4">This Is main Questions</span>
    <table class="responsive-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Pertanyaan</th>
                <th>A</th>
                <th>B</th>
                <th>C</th>
                <th>Deskripsi</th>
                <th>Jawaban</th>
                <th>Kelas</th>
                <th>Timestamp</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $data = getTable("questions");
            $no = 1;
            while ($i = mysqli_fetch_array($data)) {
                echo "<tr>
            <td>$i[id]</td>
            <td>$i[question]</td>
            <td>$i[a]</td>
            <td>$i[b]</td>
            <td>$i[c]</td>
            <td>$i[description]</td>
            <td>" . conv($i['answer']) . "</td>
            <td>$i[level]</td>
            <td>$i[update_at]</td>
            <td>
            <a href='index.php?page=questions&act=edit&id=$i[id]'>Edit</a>
            <a href='index.php?page=questions&act=delete&id=$i[id]' onclick=\"return confirm('Are you sure?')\">Delete</a>
            </td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
<?php
} elseif ($_GET['act'] == 'delete') {
    if (deleteItem($_GET['id'], "questions")) {
        echo "<script>window.alert('Delete Success');
        window.location='index.php?page=questions'</script>";
    } else echo "<script>window.alert('Delete Failed');
    window.location='index.php?page=questions'</script>";
} elseif ($_GET['act'] == 'add') {

    if (isset($_POST['submit'])) {
        addQuestions($_POST['question'], $_POST['a'], $_POST['b'], $_POST['c'], $_POST['d'], $_POST['description'], $_POST['answer'], $_POST['level']);
        // mysqli_query($conn, "INSERT INTO soal values(null, '$_POST[question]', '$_POST[description]', '$_POST[answer]', '$_POST[level]', current_timestamp)");
    }
?>
    <span class="card-title">Tambahkan Soal</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="question" name="question" type="text">
                    <label for="question" class="">Soal</label>
                </div>
                <div class="input-field col s12">
                    <input id="a" name="a" type="text">
                    <label for="a" class="">Pilihan A</label>
                </div>
                <div class="input-field col s12">
                    <input id="b" name="b" type="text">
                    <label for="b" class="">Pilihan B</label>
                </div>
                <div class="input-field col s12">
                    <input id="c" name="c" type="text">
                    <label for="c" class="">Pilihan C</label>
                </div>
                <div class="input-field col s12">
                    <textarea id="description" name="description" class="materialize-textarea"></textarea>
                    <label for="description">Deskripsi</label>
                </div>
                <div class="input-field col s12">
                    <select id="answer" name="answer" required>
                        <option value=""><i> -- pilihan jawaban -- </i></option>
                        <option value="1">A</option>
                        <option value="2">B</option>
                        <option value="3">C</option>
                    </select>
                </div>
                <div class="col s12">
                    <select id="level" name="level" required>
                        <option value="1">Kelas 1</option>
                        <option value="2">Kelas 2</option>
                        <option value="3">Kelas 3</option>
                    </select>
                </div>
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="submit">Submit <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } elseif ($_GET['act'] == 'edit') {

    if (isset($_POST['update'])) {
        updateQuestions($_GET['id'], $_POST['question'], $_POST['a'], $_POST['b'], $_POST['c'], $_POST['d'], $_POST['description'], $_POST['answer'], $_POST['level']);
    }

    $item = mysqli_fetch_array(getItem('questions', $_GET['id']));
?>
    <span class="card-title">Edit Question</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="question" name="question" type="text" value="<?= $item['question'] ?>">
                    <label for="question" class="">Soal</label>
                </div>
                <div class="input-field col s12">
                    <input id="a" name="a" type="text" value="<?= $item['a'] ?>">
                    <label for="a" class="">Pilihan A</label>
                </div>
                <div class="input-field col s12">
                    <input id="b" name="b" type="text" value="<?= $item['b'] ?>">
                    <label for="b" class="">Pilihan B</label>
                </div>
                <div class="input-field col s12">
                    <input id="c" name="c" type="text" value="<?= $item['c'] ?>">
                    <label for="c" class="">Pilihan C</label>
                </div>
                <div class="input-field col s12">
                    <textarea id="description" name="description" class="materialize-textarea"><?= $item['description'] ?></textarea>
                    <label for="description">Deskripsi</label>
                </div>
                <div class="input-field col s12">

                    <select id="answer" name="answer" required>
                        <option value=""><i> -- pilihan jawaban -- </i></option>
                        <option <?= selectedItem($item['answer'], 1) ?> value="1">A</option>
                        <option <?= selectedItem($item['answer'], 2) ?> value="2">B</option>
                        <option <?= selectedItem($item['answer'], 3) ?> value="3">C</option>
                    </select>
                </div>
                <div class="col s12">
                    <select id="level" name="level" required>
                        <option <?= selectedItem($item['level'], 1) ?> value="1">Kelas 1</option>
                        <option <?= selectedItem($item['level'], 2) ?> value="2">Kelas 2</option>
                        <option <?= selectedItem($item['level'], 3) ?> value="3">Kelas 3</option>
                    </select>
                </div>
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="update">Update <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } ?>
<?php if (!isset($_GET['act'])) { ?>

    <div class="fixed-action-btn" id="" style="display:true">
        <a class="btn-floating btn-large" href="index.php?page=question&act=add">
            <i class="large material-icons">add</i>
        </a>
    </div>

    <span class="card-title dark4">This Is main Question</span>
    <table class="responsive-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Question</th>
                <th>Description</th>
                <th>Answer</th>
                <th>Level</th>
                <th>Timestamp</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $data = getTable("soal");
            $no = 1;
            while ($i = mysqli_fetch_array($data)) {
                echo "<tr>
            <td>$i[id]</td>
            <td>$i[question]</td>
            <td>$i[description]</td>
            <td>$i[answer]</td>
            <td>$i[level]</td>
            <td>$i[update_at]</td>
            <td>
            <a href='index.php?page=question&act=edit&id=$i[id]'>Edit</a>
            <a href='index.php?page=question&act=delete&id=$i[id]' onclick=\"return confirm('Are you sure?')\">Delete</a>
            </td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
<?php
} elseif ($_GET['act'] == 'delete') {
    if (deleteItem($_GET['id'], "soal")) {
        echo "<script>window.alert('Delete Success');
        window.location='index.php?page=question'</script>";
    } else echo "<script>window.alert('Delete Failed');
    window.location='index.php?page=question'</script>";
} elseif ($_GET['act'] == 'add') {

    if (isset($_POST['submit'])) {
        addQuestion($_POST['question'], $_POST['description'], $_POST['answer'], $_POST['level']);
        // mysqli_query($conn, "INSERT INTO soal values(null, '$_POST[question]', '$_POST[description]', '$_POST[answer]', '$_POST[level]', current_timestamp)");
    }
?>
    <span class="card-title">Add Question</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="question" name="question" type="text">
                    <label for="question" class="">Question</label>
                </div>
                <div class="input-field col s12">
                    <textarea id="description" name="description" class="materialize-textarea"></textarea>
                    <label for="description">Description</label>
                </div>
                <div class="input-field col s12">
                    <select id="answer" name="answer" required>
                        <option value=""><i> -- select answer -- </i></option>
                        <?php
                        $option = getTable('options');
                        while ($i = mysqli_fetch_array($option)) {
                            echo "<option value='$i[id]'>$i[id]. $i[content]</option>";
                        }
                        ?>
                    </select>
                </div>

                <div class="col s12">
                    <select id="level" name="level" required>
                        <option value="1">Beginner</option>
                        <option value="2">Intermediate</option>
                        <option value="3">Advanced</option>
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
        updateQuestion($_GET['id'], $_POST['question'], $_POST['description'], $_POST['answer'], $_POST['level']);
    }

    $item = mysqli_fetch_array(getItem('soal', $_GET['id']));
?>
    <span class="card-title">Edit Question</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="question" name="question" type="text" value="<?= $item['question'] ?>">
                    <label for="question" class="">Question</label>
                </div>
                <div class="input-field col s12">
                    <textarea id="description" name="description" class="materialize-textarea"><?= $item['description'] ?></textarea>
                    <label for="description">Description</label>
                </div>
                <div class="input-field col s12">
                    <select id="answer" name="answer" required>
                        <option value=""><i> -- select answer -- </i></option>
                        <?php
                        $option = getTable('options');
                        while ($i = mysqli_fetch_array($option)) {
                            if ($i['id'] == $item['answer']) echo "<option selected value='$i[id]'>$i[id]. $i[content]</option>";
                            else echo "<option value='$i[id]'>$i[id]. $i[content]</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="col s12">
                    <select id="level" name="level" required>
                        <option <?= selectedItem($item['level'], 1) ?> value="1">Beginner</option>
                        <option <?= selectedItem($item['level'], 2) ?> value="2">Intermediate</option>
                        <option <?= selectedItem($item['level'], 3) ?> value="3">Advanced</option>
                    </select>
                </div>
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="update">Update <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } ?>

<?php if (!isset($_GET['act'])) { ?>

    <div class="fixed-action-btn" id="" style="display:true">
        <a class="btn-floating btn-large" href="index.php?page=option&act=add">
            <i class="large material-icons">add</i>
        </a>
    </div>

    <span class="card-title dark4">Options</span>
    <table class="responsive-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Content</th>
                <th>Timestamp</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $data = getTable("options");
            $no = 1;
            while ($i = mysqli_fetch_array($data)) {
                echo "<tr>
                <td>$i[id]</td>
                <td>$i[content]</td>
                <td>$i[update_at]</td>
                <td>
                <a href='index.php?page=option&act=edit&id=$i[id]'>Edit</a>
                <a href='index.php?page=option&act=delete&id=$i[id]' onclick=\"return confirm('Are you sure?')\">Delete</a>
                </td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
<?php
} elseif ($_GET['act'] == 'delete') {
    if (deleteItem($_GET['id'], "options")) {
        echo "<script>window.alert('Delete Success');
            window.location='index.php?page=option'</script>";
    } else echo "<script>window.alert('Delete Failed');
            window.location='index.php?page=option'</script>";
} elseif ($_GET['act'] == 'add') {
    if (isset($_POST['submit'])) {
        addOption($_POST['content']);
    }
?>
    <span class="card-title">Add Option</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="content" name="content" type="text" required>
                    <label for="content" class="">Content</label>
                </div>

                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="submit">Submit <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } elseif ($_GET['act'] == 'edit') {

    if (isset($_POST['update'])) {
        updateOption($_GET['id'], $_POST['content']);
    }

    $item = mysqli_fetch_array(getItem('options', $_GET['id']));
?>
    <span class="card-title">Edit Option</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="content" name="content" type="text" value="<?= $item['content'] ?>" required>
                    <label for="content" class="">Content</label>
                </div>
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="update">Update <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } ?>

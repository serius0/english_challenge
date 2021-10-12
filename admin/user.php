<?php if (!isset($_GET['act'])) { ?>

    <div class="fixed-action-btn" id="" style="display:true">
        <a class="btn-floating btn-large" href="index.php?page=user&act=add">
            <i class="large material-icons">add</i>
        </a>
    </div>

    <span class="card-title dark4">User</span>
    <table class="responsive-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Status</th>
                <th>Timestamp</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $data = getTable("member");
            $no = 1;
            while ($i = mysqli_fetch_array($data)) {
                echo "<tr>
                    <td>$i[id]</td>
                    <td>$i[name]</td>
                    <td>$i[email]</td>
                    <td>" . userStatus($i['status']) . "</td>
                    <td>$i[update_at]</td>
                    <td>
                    <a href='index.php?page=user&act=edit&id=$i[id]'>Edit</a>
                    <a href='index.php?page=user&act=delete&id=$i[id]' onclick=\"return confirm('Are you sure?')\">Delete</a>
                    </td></tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
<?php
} elseif ($_GET['act'] == 'delete') {
    if (deleteItem($_GET['id'], "member")) {
        echo "<script>window.alert('Delete Success');
    window.location='index.php?page=user'</script>";
    } else echo "<script>window.alert('Delete Failed');
        window.location='index.php?page=user'</script>";
} elseif ($_GET['act'] == 'add') {
    if (isset($_POST['submit'])) {
        addUser($_POST['name'], $_POST['email'], $_POST['password'], $_POST['status']);
    }
?>
    <span class="card-title">Add User</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="name" name="name" type="text" required>
                    <label for="name" class="">Name</label>
                </div>
                <div class="input-field col s12">
                    <input id="email" name="email" type="email" required>
                    <label for="email" class="">Email</label>
                </div>
                <div class="input-field col s12">
                    <input id="password" name="password" type="password" required>
                    <label for="password" class="">Password</label>
                </div>
                <div class="col s12">
                    <select id="status" name="status" required>
                        <option value="0">Member</option>
                        <option value="1">Admin</option>
                        <option value="2">Owner</option>
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
        updateUser($_GET['id'], $_POST['name'], $_POST['email'], $_POST['password'], $_POST['status']);
    }

    $item = mysqli_fetch_array(getItem('member', $_GET['id']));
?>
    <span class="card-title">Edit User</span>
    <div class="row">
        <form action='' method="POST" class="col s12 no-padding">
            <div class="row no-margin">
                <div class="input-field col s12">
                    <input id="name" name="name" type="text" value="<?= $item['name'] ?>" required>
                    <label for="name" class="">Name</label>
                </div>
                <div class="input-field col s12">
                    <input id="email" name="email" type="email" value="<?= $item['email'] ?>" required>
                    <label for="email" class="">Email</label>
                </div>
                <div class="input-field col s12">
                    <input id="password" name="password" type="password" placeholder="ignore if not any change">
                    <label for="password" class="">Password</label>
                </div>
                <div class="col s12">
                    <select id="status" name="status" required>
                        <option <?= selectedItem($item['status'], 0) ?> value="0">Member</option>
                        <option <?= selectedItem($item['status'], 1) ?> value="1">Admin</option>
                        <option <?= selectedItem($item['status'], 2) ?> value="2">Owner</option>
                    </select>
                </div>
                <div class="input-field col s12">
                    <button class="btn waves-effect waves-light right default" type="submit" name="update">Update <i class="material-icons right">send</i></button>
                </div>
            </div>
        </form>
    </div>
<?php } ?>

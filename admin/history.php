<?php if (!isset($_GET['act'])) { ?>


    <span class="card-title dark4">This Is main History</span>
    <table class="responsive-table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Level</th>
                <th>Amount</th>
                <th>Score</th>
                <th>Member</th>
                <th>Time Stamp</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $data = getTable("history");
                                                                $no = 1;
            while ($i = mysqli_fetch_array($data)) {
                echo "<tr>
                        <td>$i[id]</td>
                        <td>$i[name]</td>
                        <td>$i[level]</td>
                        <td>$i[amount]</td>
                        <td>$i[score]</td>
                        <td>$i[member]</td>
                        <td>$i[update_at]</td>
                        <td>
                        <a href='index.php?page=history&act=edit'>Edit</a>
                        <a href='index.php?page=history&act=delete'>Delete</a>
                        </td>
                </tr>";
            }
            ?>
        </tbody>
    </table>
    </div>
<?php } elseif ($_GET['act'] == 'add') { ?>




<?php } ?>

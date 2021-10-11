<!DOCTYPE html>
<html>

<body>
    <?php
    if (isset($_POST['login'])) {
        var_dump($_POST);
        $user = $_POST['user'];
        $pass = $_POST['pass'];

        $r = mysqli_query($conn, "SELECT * FROM member WHERE email = '$user'");
        echo $pass;
        //cek username
        if (mysqli_num_rows($r) === 1) {
            //cek password
            $row = mysqli_fetch_assoc($r);
            if (password_verify($pass, $row["password"])) {
                $_SESSION["loginAdmin"] = true;
                $_SESSION["id"] = $row["id"];
                $_SESSION["status"] = $row["status"];
            }
            header('location:index.php');
        } else {
            echo "<script>window.alert('Maaf, Anda Tidak Memiliki akses ');
                        window.location('index.php');
                    </script>";
        }
    }

    ?>

    <form action="" method="post">
        <h2>FORM LOGIN</h2>
        <div>
            <input type="text" placeholder="Username" required autofocus name='user'>
            <input type="password" placeholder="Password" required="" name='pass'>
        </div>
        <button name='login' type="submit">Masuk</button>
    </form>
</body>

</html>

<?php
// $pass = password_hash("S3r?usman", PASSWORD_DEFAULT);
// $query = mysqli_query($conn, "insert into member values(null, 'Seriusman Waruwu', 'seriusman0', '$pass', current_timestamp, 1)");
// if ($query) echo "berhasil";
// else echo "gagal";
?>

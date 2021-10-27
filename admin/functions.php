<?php
function getTable($tableName)
{
    global $conn;
    $result = mysqli_query($conn, "select * from $tableName ORDER BY id DESC");
    return $result;
}

function getUser($id)
{
    global $conn;
    $result = mysqli_query($conn, "select * from member ORDER BY id DESC");
    return $result;
}

function totalRecord($tableName)
{
    global $conn;
    $result = mysqli_num_rows((mysqli_query($conn, "select id from $tableName")));
    return $result;
}

function deleteItem($id, $tableName)
{
    global $conn;
    $delete = mysqli_query($conn, "DELETE FROM $tableName WHERE id = '$id'");
    if ($delete) return true;
    else return false;
}

function addQuestions($question, $a, $b, $c, $d, $description, $answer, $level)
{
    global $conn;
    $insert = mysqli_query($conn, "INSERT INTO questions VALUES (null, '$question', '$a', '$b', '$c', '$d',  '$description', '$answer', '$level', current_timestamp)");
    if ($insert) echo "<script>window.alert('Add Question Success');
    window.location='index.php?page=questions'</script>";
    else echo "<script>window.alert('Add Question Failed');
    window.location='index.php?page=questions'</script>";
}

function updateQuestions($id, $question, $a, $b, $c, $d, $description, $answer, $level)
{
    global $conn;
    $update = mysqli_query($conn, "UPDATE questions SET `question` = '$question', `a` = '$a',`b` = '$b',`c` = '$c',`d` = '$d', `description` = '$description', `answer` = '$answer', `level` = '$level' where `id` = '$id'");
    if ($update) echo "<script>window.alert('Update Question Success');
    window.location='index.php?page=questions'</script>";
    else echo "<script>window.alert('Update Question Failed');
    window.location='index.php?page=questions'</script>";
}

function getItem($tableName, $id)
{
    global $conn;
    $result = mysqli_query($conn, "SELECT * FROM $tableName WHERE id = '$id'");
    return $result;
}

function selectedItem($data1, $data2)
{
    if ($data1 == $data2) return "selected";
}

function addUser($name, $email, $password, $status)
{
    global $conn;
    $genPassword = password_hash($password, PASSWORD_DEFAULT);
    $insert = mysqli_query($conn, "INSERT INTO member VALUES (null, '$name', '$email', '$genPassword', current_timestamp, '$status')");
    if ($insert) echo "<script>window.alert('Add User Success');
    window.location='index.php?page=user'</script>";
    else echo "<script>window.alert('Add User Failed');
    window.location='index.php?page=user'</script>";
}

function updateUser($id, $name, $email, $password, $status)
{
    global $conn;
    if ($password != '') {
        $tmpPass = password_hash($password, PASSWORD_DEFAULT);
        $password = $tmpPass;
        $cPass = mysqli_query($conn, "UPDATE member SET `password` = '$password' where `id` = '$id'");
        if ($cPass) echo "<script>window.alert('Update Users Password Success');</script>";
        else echo "<script>window.alert('Update Users Password Failed');</script>";
    }
    $update = mysqli_query($conn, "UPDATE member SET `name` = '$name', `email` = '$email', `update_at` = current_timestamp, `status` = '$status' where `id` = '$id'");
    if ($update) echo "<script>window.alert('Update User Success');
    window.location='index.php?page=user'</script>";
    else echo "<script>window.alert('Update User Failed');
    window.location='index.php?page=user'</script>";
}

function userStatus($data)
{
    switch ($data) {
        case 0:
            return "Member";
        case 1:
            return "Admin";
        case 2:
            return "Owner";
        default:
            return "undefined";
    }
}

function addOption($content)
{
    global $conn;
    $insert = mysqli_query($conn, "INSERT INTO options VALUES (null, '$content', current_timestamp)");
    if ($insert) echo "<script>window.alert('Add Option Success');
        window.location='index.php?page=option'</script>";
    else echo "<script>window.alert('Add Option Failed');
        window.location='index.php?page=option'</script>";
}

function updateOption($id, $content)
{
    global $conn;
    $update = mysqli_query($conn, "UPDATE options SET `content` = '$content', `update_at` = current_timestamp where `id` = '$id'");
    if ($update) echo "<script>window.alert('Update Option Success');
    window.location='index.php?page=option'</script>";
    else echo "<script>window.alert('Update Option Failed');
    window.location='index.php?page=option'</script>";
}

function conv($data)
{
    switch ($data) {
        case 1:
            return "A";
        case 2:
            return "B";
        case 3:
            return "C";
        case 4:
            return "D";
    }
}

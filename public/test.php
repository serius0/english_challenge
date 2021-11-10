<?php

require_once "../app/functions/index.php";
$url = "index.php?page=home";

$pass = '';

echo password_hash($pass, PASSWORD_DEFAULT);

<?php
function url_encode($string)
{
    return urlencode(utf8_encode($string));
}

function url_decode($string)
{
    return utf8_decode(urldecode($string));
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

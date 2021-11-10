<?php
$variable = "enak";
?>

<script>
    var a = "<?= $variable ?>";
    console.log(a);
    var b = "baiklah";
</script>

<?php
$c = "<script>document.write(b)</script>";
echo "Nilai dari c adalah " . $c;
?>
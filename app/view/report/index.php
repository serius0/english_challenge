<?php
$data = mysqli_fetch_assoc(mysqli_query($conn, "select * from history where id=$_GET[id]"));
?>

<div class="main-container">
    <section class="height-100 imagebg text-center" data-overlay="1">
        <div class="background-image-holder">
            <img alt="background" src="img/bg_englishchallenge.png" />
        </div>
        <div class="container pos-vertical-center">
            <div class="row">
                <div class="col-md-7 col-lg-8 ">
                    <div class="boxed boxed--border">
                        <div class="col s12">
                            <div class="card faq-card">
                                <div class="card-content">
                                    <div class="card-body active">
                                        <h1>
                                            Congratulations <?= $data['name'] ?>,
                                            You're Done
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="boxed boxed--border">
                        <h1>Your Total Score</h1>
                        <?php
                        $max = $data['level'] * $data['amount'];
                        $real = $data['score'];
                        $present = $real / $max * 100;
                        ?>
                        <div class="radial" data-value="<?= $present ?>">
                            <span class="h4 radial__label"><?= $real ?></span>
                        </div>
                        of <?= $max ?>
                    </div>
                    <div class="boxed boxed--border">
                        <a class="btn btn--lg btn--primary" href="../app/view/logout.php">Try Again</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

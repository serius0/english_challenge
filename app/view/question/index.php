<?php
$id_session = $_SESSION['id'];

$qleft = mysqli_num_rows(mysqli_query($conn, "select * from tempQuestion where status = 0 and id_session = $id_session"));
if ($qleft < 1) header("location:index.php?page=report&id=$id_session");

// $qdata = mysqli_fetch_array(mysqli_query($conn, "select soal.id as idSoal, soal.question, soal.answer, soal.level, tempQuestion.id as idTemp, tempQuestion.id_session, tempQuestion.id_question, tempQuestion.status from soal, tempQuestion where soal.id=tempQuestion.id_question and tempQuestion.id_session = '$id_session' and tempQuestion.status = '0' limit 1"));
$qdata = mysqli_fetch_array(mysqli_query($conn, "select * from tempQuestion, questions  where questions.id=tempQuestion.id_question and tempQuestion.id_session = '$id_session' and tempQuestion.status = '0' limit 1"));
?>
<div class="main-container">
    <section class="height-100 imagebg text-center" data-overlay="1">
        <div class="background-image-holder">
            <img alt="background" src="img/bg_LesinAja_1.jpg" />
        </div>
        <div class="container pos-vertical-center">
            <div class="row">
                <div class="col-md-7  col-lg-12 ">
                    <div class="boxed boxed--border">
                        <div class="col s12">
                            <div class="card faq-card">
                                <div class="card-content">
                                    <div class="card-body active">
                                        <p class="lead">
                                            <?= $qdata['question'] ?>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="boxed boxed--border">
                        <form action="index.php?page=home" method="POST">
                            <div class="row">
                                <div class="col-md-12">
                                    <a class="btn btn--lg btn--primary" href="index.php?page=validateanswer&id=1&questionId=<?= $qdata['id'] ?>">A. <?= $qdata['a'] ?></a>
                                </div>
                                <div class="col-md-12">
                                    <a class="btn btn--lg btn--primary" href="index.php?page=validateanswer&id=2&questionId=<?= $qdata['id'] ?>">B. <?= $qdata['b'] ?></a>
                                </div>
                                <div class="col-md-12">
                                    <a class="btn btn--lg btn--primary" href="index.php?page=validateanswer&id=3&questionId=<?= $qdata['id'] ?>">C. <?= $qdata['c'] ?></a>
                                </div>
                                <div class="col-md-12">
                                    <a class="btn btn--lg btn--primary" href="index.php?page=validateanswer&id=4&questionId=<?= $qdata['id'] ?>">D. <?= $qdata['d'] ?></a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
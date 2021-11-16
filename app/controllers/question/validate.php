<div class="main-container">
    <section class="height-100 imagebg text-center" data-overlay="1">
        <div class="background-image-holder">
            <img alt="background" src="img/bg_englishchallenge.png" />
        </div>
        <div class="container pos-vertical-center">
            <div class="row">
                <div class="col-md-7 col-lg-12">
                    <div class="boxed boxed--border">
                        <div class="col s12">
                            <div class="card faq-card">
                                <div class="card-content">
                                    <div class="card-body active">
                                        <p class="lead">
                                            <?php
                                            $qId = $_GET['questionId'];
                                            $answerId = $_GET['id'];

                                            function updateScore()
                                            {
                                                global $conn;
                                                mysqli_query($conn, "update history set history.`score`=score+level where history.id = $_SESSION[id]");
                                            }

                                            //id ini adalah idtmpQ
                                            $checkQ  = mysqli_fetch_assoc(mysqli_query($conn, "select * from tempQuestion where id = '$qId'"));
                                            $question = mysqli_fetch_array(mysqli_query($conn, "select * from questions where id = '$checkQ[id_question]'"));

                                            if ($question['answer'] == $answerId) {
                                                echo "<h1>Correct</h1>";
                                                updateScore();
                                                //update status tempQuestion
                                                mysqli_query($conn, "UPDATE tempQuestion set status = 2 where tempQuestion.id_session = $_SESSION[id] and tempQuestion.id_question = $qId");
                                            } else {
                                                echo "<h1>Incorrect</h1>";
                                                //update status tempQuestion
                                                mysqli_query($conn, "UPDATE tempQuestion set status = 1 where tempQuestion.id_session = $_SESSION[id] and tempQuestion.id_question = $qId");
                                            ?>
                                        <p>The answer should be</p>
                                        <p><b><?= conv($question['answer']) . ".  " . $question[$question['answer'] + 1] ?></b></p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="boxed boxed--border">
                        <h1><?= $question['description'] ?></h1>

                    <?php }

                                            //cek score
                                            $scoreSementara = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM history where id = $_SESSION[id]"));
                                            echo "Your current score = $scoreSementara[score]"

                    ?>

                    
                    </div>
                    <a class="btn btn--primary type--uppercase" href="index.php?page=question">Next</a>
                </div>
            </div>
        </div>
    </section>
</div>
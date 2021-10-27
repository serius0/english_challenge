<div class="main-container">
    <section class="height-100 imagebg text-center" data-overlay="1">
        <div class="background-image-holder">
            <img alt="background" src="img/bg_englishchallenge.png" />
        </div>
        <div class="container pos-vertical-center">
            <div class="row">
                <div class="col-md-7 col-lg-5 ">
                    <div class="boxed boxed--border">
                        <h3>Welcome, </br>let's get started by fill the form bellow</h3>
                    </div>
                    <div class="boxed boxed--border">
                        <form action="index.php?page=home" method="POST">
                            <div class="row">
                                <div class="col-md-12">
                                    <input id="name" name="name" type="text" required placeholder="Your Name" autofocus>
                                </div>
                                <div class="input-select col-md-12">
                                    <select id="level" name="level" required>
                                        <option value="">Select An Option</option>
                                        <option selected value="1">Beginner</option>
                                        <option value="2">Intermediate</option>
                                        <option value="3">Advanced</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <select id="amount" name="amount" required>
                                        <option value="">Amount Of Test</option>
                                        <option selected value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="30">30</option>
                                        <option value="40">40</option>
                                        <option value="50">50</option>
                                    </select>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn btn--primary type--uppercase" type="submit" name="action">Start</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
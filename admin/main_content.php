<span class="card-title dark4">This Is Dashboard</span>
<div class="section me-page-body">
    <!--Dashboard analytics-->
    <div class="row center m-b-no">
        <div class="col s12 m6 l3 me-sl">
            <div class="card">
                <div class="card-content dash-nav-box">
                    <span class="card-title dash-nav-title">Total Record</span>
                    <p class="dash-nav-body"><i class="material-icons text-teal">supervisor_account</i><span><?= totalRecord('history') ?></span></p>
                    <p class="dash-nav-footer">From Last Update</p>
                </div>
            </div>
        </div>
        <div class="col s12 m6 l3 me-sl">
            <div class="card">
                <div class="card-content dash-nav-box">
                    <span class="card-title dash-nav-title">Total Member</span>
                    <p class="dash-nav-body"><i class="material-icons text-green">group_work</i><span><?= totalRecord('member') ?></span></p>
                    <p class="dash-nav-footer">From Last Update</p>
                </div>
            </div>
        </div>
        <div class="col s12 m6 l3 me-sl">
            <div class="card">
                <div class="card-content dash-nav-box">
                    <span class="card-title dash-nav-title">Total Question</span>
                    <p class="dash-nav-body"><i class="material-icons text-deep-purple">shopping_cart</i><span><?= totalRecord('soal') ?></span></p>
                    <p class="dash-nav-footer">From Last Update</p>
                </div>
            </div>
        </div>
        <div class="col s12 m6 l3 me-sl">
            <div class="card">
                <div class="card-content dash-nav-box">
                    <span class="card-title dash-nav-title">Total Option</span>
                    <p class="dash-nav-body"><i class="material-icons text-pink">monetization_on</i><span><?= totalRecord('options') ?></span></p>
                    <p class="dash-nav-footer">From Last 20 Hours</p>
                </div>
            </div>
        </div>
    </div>

</div>
</div>

@extends('layouts.master')

@section('content')
<div class="section me-page-body">
    <div class="row m-b-no">
        <div class="col s12 m12 l3"></div>
        <div class="col s12 m12 l6" style="height:400px">
            <div class="card">
                <div class="card-content">
                    <span class="card-title">Set Your Mission</span>
                    <div class="row">
                        <form class="col s12 no-padding">
                            <div class="row no-margin">
                                <div class="input-field col s12">
                                    <input id="name" type="text">
                                    <label for="name" class="">Name</label>
                                </div>
                                <div class="input-field col s12">
                                    <input id="email" type="email">
                                    <label for="email">Email</label>
                                </div>
                                <div class="input-field col s12">
                                    <input id="password" type="password">
                                    <label for="password">Password</label>
                                </div>
                                <div class="input-field col s12">
                                    <textarea id="message" class="materialize-textarea"></textarea>
                                    <label for="message">Message</label>
                                </div>
                                <div class="col s12">
                                    <p>Gender</p>
                                    <p class="m-t-10">
                                        <input name="gender" type="radio" id="gender1" class="default" />
                                        <label for="gender1">Male</label>
                                        <input name="gender" type="radio" id="gender2" class="default" />
                                        <label for="gender2">Female</label>
                                    </p>
                                </div>
                                <div class="col s12 m-t-20">
                                    <p>
                                        <input type="checkbox" id="checkbox1" checked="checked" class="filled-in default" />
                                        <label for="checkbox1">Remember me</label>
                                    </p>
                                </div>
                                <div class="input-field col s12">
                                    <button class="btn waves-effect waves-light right default" type="submit" name="action">Submit <i class="material-icons right">send</i></button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>


</div>
@endsection

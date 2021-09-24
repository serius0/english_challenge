<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AnymController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home",
    ]);
});

Route::resource('anym', AnymController::class);
Route::get('question', function () {
    $questions =   [
        [
            "no" => 1,
            "slug" => 1,
            "soal" => "Siapa nama saya",
            "answer" => "Seriusman waruwu",
            "desc" => "Nama anda serius karena itu memang nama anda",
        ], [
            "no" => 2,
            "slug" => 2,
            "soal" => "Siapa nama saya",
            "answer" => "Putra Waruwu",
            "desc" => "Putra adalah nama kamu",
        ]
    ];
    return view('question', [

        "title" => "Question",
        "questions" => $questions,
    ]);
})->name('question');

Route::get('singlequestion/{slug}', function ($slug) {
    $questions =   [
        [
            "no" => 1,
            "slug" => 1,
            "soal" => "Siapa nama saya",
            "answer" => "Seriusman waruwu",
            "desc" => "Nama anda serius karena itu memang nama anda",
        ], [
            "no" => 2,
            "slug" => 2,
            "soal" => "Siapa nama saya",
            "answer" => "Putra Waruwu",
            "desc" => "Putra adalah nama kamu",
        ]
    ];

    $new_question = [];
    foreach ($questions as $question) {
        if ($question["slug"] == $slug) {
            $new_question = $question;
        }
    }
    return view('singlequestion', [
        "title" => "sigle question",
        "question" => $new_question,
    ]);
});

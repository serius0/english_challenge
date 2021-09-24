@extends('layouts.master')

@section('content')
@foreach ($questions as $question)
<article>
    <h1><a href="/singlequestion/{{$question["slug"]}}">Soal No {{$question["no"]}}</a></h1>
    <h5>Jawabannya adalah {{$question["answer"]}}</h5>
</article>
@endforeach
@endsection

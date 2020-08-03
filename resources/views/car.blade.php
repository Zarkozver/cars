@extends('layouts.app')
@section('content')
    <div class="container">
        <img src="{{$car->photo}}" alt="" class="img img-fluid w-75">
        <h1 class="card-title">{{$car->name}}</h1>
        <h1 class="card-subtitle mb-2 text-muted">Year: {{$car->year}}</h1>
        <h1 class="card-subtitle mb-2 text-muted">Brand: {{$car->brand->name}}</h1>
        <p class="card-text">Price: {{$car->price}} dollars</p>

        <button-component></button-component>
    </div>
    
@endsection
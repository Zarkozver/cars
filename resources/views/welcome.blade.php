@extends('layouts.app')
@section('content')
    <div class="container">
      <div class="form">
        {!! Form::model($brands,['method'=>'POST','action'=>'CarsController@store']) !!}
              @if (!empty($brands))
              <div class="form-group">
                  {!! Form::label('Brands', 'Brands:',['class'=>'h4 font-weight-light mr-3']) !!}
              @foreach ($brands as $brand)
                      {!! Form::label('brand', $brand->name,['class'=>'h5 font-weight-light']) !!}
                      {!! Form::checkbox('brand[]', $brand->id, false, ['class'=>'h5  mr-4']) !!}
              @endforeach   
            </div>
            @endif
            <div class="form-group">
                {!! Form::submit('Submit', ['class'=>'btn btn-primary']) !!}
            </div>
        {!! Form::close() !!}
      </div>
        <div class="card-columns">
            @foreach ($cars as $car)
            <div class="card">
            <a href="{{route('car',$car->id)}}">
              <img src="{{$car->photo}}" class="img img-fluid w-100" alt="">
              <div class="card-body">
                <h5 class="card-title">{{$car->name}}</h5>
                <h6 class="card-subtitle mb-2 text-muted">Year: {{$car->year}}</h6>
                <h6 class="card-subtitle mb-2 text-muted">Brand: {{$car->brand->name}}</h6>
                <p class="card-text">Price: {{$car->price}} dollars</p>
              </div>
            </a>
            </div>
            @endforeach
          </div>
          {{$cars->links()}}
    </div>
@endsection
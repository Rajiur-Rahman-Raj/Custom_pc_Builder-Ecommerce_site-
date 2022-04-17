@extends('frontend.master')

@section('content')

    <div class="container">
        <div class="row">
            <div class="col-lg-3">

            </div>
            <div class="col-lg-6">
                <div style="height:50px;">
                </div>
                <div class="card">
                    <div class="card-header alert alert-success text-center">
                        <h3>Order Information</h3>
                    </div>
                    <div class="card-body">
                        <h4>Name: {{$order_info->name}}</h4>
                        <h4>Email: {{$order_info->email}}</h4>
                        <h4>Mobile: {{$order_info->phone}}</h4>
                        <h4>Address: {{$order_info->address}}</h4>
                        <h4>Total Amount : {{$total}} /=</h4>
                    </div>
                </div>
                <div class="text-center" style="padding-top:20px;padding-bottom:30px;">
                    <a style="display:inline-block" href="{{url('stripe')}}" class="btn btn-info"> Payment through Stripe </a>
                    <a style="display:inline-block" href="{{url('cash/on/delivery')}}" class="btn btn-warning"> Cash On Delivery </a>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <br><br>


            </div>
        </div>
    </div>


    <div id="colorlib-subscribe">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="col-md-12 text-center">
                        <h2><i class="icon-paperplane"></i>For Any kind of Infromation please feel free to contact with us</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

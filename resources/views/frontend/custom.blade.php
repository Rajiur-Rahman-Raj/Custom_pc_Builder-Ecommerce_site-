@extends('frontend.master')

@section('content')
<aside id="colorlib-hero" class="breadcrumbs">
    <div class="flexslider">
        <ul class="slides">
           <li style="background-image: url({{url('/')}}/frontend_assets/images/cover-img-1.jpg);">
               <div class="overlay"></div>
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                           <div class="slider-text-inner text-center">
                               <h1>Custom Pannel</h1>
                               <h2 class="bread"><span><a href="index.html">Home</a></span> <span>Custom Panel</span></h2>
                           </div>
                       </div>
                   </div>
               </div>
           </li>
          </ul>
      </div>
</aside>


@if(App\Cart::where('customer_ip',$_SERVER['REMOTE_ADDR'])->exists())
<div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <p class="alert alert-danger">
                @if($msg)
                {{$msg}}
                @endif
            </p>
        </div>
    </div>
</div>
@endif

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="alert alert success text-center">
                {{$name}}
            </h3>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">

        @foreach ($products as $products)
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($products->image)}});">
                        {{--  <p class="tag"><span class="new">{{$products->category_name}}</span></p>  --}}
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="{{url('/')}}/{{$url}}/{{$products->name}}/{{$products->price}}"><i class="icon-shopping-cart"></i></a></span>
                                {{--  <span><a href="{{url('processor/details')}}/{{$products->id}}"><i class="icon-eye"></i></a></span>  --}}
                                {{-- <span><a href="#"><i class="icon-heart3"></i></a></span> --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$products->stock}} piece</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="#">{{$products->name}}</a></h3>
                        <p class="price"><span>{{$products->price}} /=</span></p>
                    </div>
                </div>
            </div>
        @endforeach

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

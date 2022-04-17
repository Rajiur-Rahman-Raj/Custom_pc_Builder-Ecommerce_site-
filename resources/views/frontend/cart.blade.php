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
                               <h1>Shopping Cart</h1>
                               <h2 class="bread"><span><a href="{{url('/')}}">Home</a></span> <span><a href="shop.html">Product</a></span> <span>Shopping Cart</span></h2>
                           </div>
                       </div>
                   </div>
               </div>
           </li>
          </ul>
      </div>
</aside>

<div class="colorlib-shop">
    <div class="container">
        <div class="row row-pb-md">
            <div class="col-md-10 col-md-offset-1">
                <div class="process-wrap">
                    <div class="process text-center active">
                        <p><span>01</span></p>
                        <h3>Shopping Cart</h3>
                    </div>
                    <div class="process text-center">
                        <p><span>02</span></p>
                        <h3>Checkout</h3>
                    </div>
                    <div class="process text-center">
                        <p><span>03</span></p>
                        <h3>Order Complete</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-pb-md">
            <div class="col-md-10 col-md-offset-1">
                <div class="product-name">
                    <div class="one-forth text-center">
                        <span>Product Details</span>
                    </div>
                    <div class="one-eight text-center">
                        <span>Price</span>
                    </div>
                    <div class="one-eight text-center">
                        <span>Quantity</span>
                    </div>
                    <div class="one-eight text-center">
                        <span>Total</span>
                    </div>
                    <div class="one-eight text-center">
                        <span>Remove</span>
                    </div>
                </div>


                @foreach ($items as $item)
                <div class="product-cart">
                    <div class="one-forth">
                        <div class="display-tc">
                            <h3>{{$item->name}}</h3>
                        </div>
                    </div>
                    <div class="one-eight text-center">
                        <div class="display-tc">
                            <span class="price">{{$item->price}} /=</span>
                        </div>
                    </div>
                    <div class="one-eight text-center">
                        <div class="display-tc">
                            <span class="price">{{$item->quantity}} pieces</span>
                        </div>
                    </div>
                    <div class="one-eight text-center">
                        <div class="display-tc">
                            <span class="price">{{$item->price*$item->quantity}} /=</span>
                        </div>
                    </div>
                    <div class="one-eight text-center">
                        <div class="display-tc">
                            <a class="btn btn-sm btn-danger text-white" href="{{url('delete/cart/item')}}/{{$item->id}}" class="closed"><i class="fas fa-times"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="total-wrap">
                    <div class="row">
                        <div class="col-md-8">
                            <form action="{{url('apply/coupon')}}" method="POST">
                                @csrf
                                <div class="row form-group">
                                    <div class="col-md-9">
                                        <input type="text" name="code" class="form-control input-number" placeholder="Your Coupon Number...">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="submit" value="Apply Coupon" class="btn btn-primary">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 col-md-push-1 text-center">
                            <div class="total">
                                <div class="sub">
                                    <p><span>Subtotal:</span> <span>{{$subtotal}} /=</span></p>
                                    <p><span>Delivery:</span> <span>{{$delivery}} /=</span></p>
                                    <p><span>Discount:</span> <span>{{$discount}} %</span></p>
                                </div>
                                <div class="grand-total">
                                    <p><span><strong>Total:</strong></span> <span>{{$total}} /=</span></p>
                                </div>
                            </div>

                            <a href="{{url('checkout/view')}}" class="btn btn-info mt-3">CheckOut</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="colorlib-shop">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
                <h2><span>Latest Products</span></h2>
                <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($processor->image)}});">
                        <p class="tag"><span class="new">{{$processor->category_name}}</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$processor->name}}/{{$processor->price}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('processor/details')}}/{{$processor->id}}"><i class="icon-eye"></i></a></span>
                                 {{-- <span><a href="#"><i class="icon-heart3"></i></a></span> --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$processor->stock}} piece</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">{{$processor->name}}</a></h3>
                        <p class="price"><span>{{$processor->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($motherboard->image)}});">
                        <p class="tag"><span class="new">{{$motherboard->category_name}}</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$motherboard->name}}/{{$motherboard->price}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('motherboard/details')}}/{{$motherboard->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$motherboard->stock}} piece</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">{{$motherboard->name}}</a></h3>
                        <p class="price"><span>{{$motherboard->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($ram->image)}});">
                        <p class="tag"><span class="new">{{$ram->category_name}}</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$ram->name}}/{{$ram->price}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('ram/details')}}/{{$ram->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$ram->stock}} piece</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">{{$ram->name}}</a></h3>
                        <p class="price"><span>{{$ram->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($graphics_card->image)}});">
                        <p class="tag"><span class="new">{{$graphics_card->category_name}}</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$graphics_card->name}}/{{$graphics_card->price}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('graphics_card/details')}}/{{$graphics_card->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$graphics_card->stock}} piece</a></span>
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">{{$graphics_card->name}}</a></h3>
                        <p class="price"><span>{{$graphics_card->price}} /=</span></p>
                    </div>
                </div>
            </div>

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

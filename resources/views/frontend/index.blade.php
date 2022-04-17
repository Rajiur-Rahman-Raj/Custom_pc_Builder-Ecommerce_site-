@extends('frontend.master')

@section('content')
<aside id="colorlib-hero">
    <div class="flexslider">
        <ul class="slides">
           <li style="background-image: url({{url('/')}}/frontend_assets/images/banner_1.jpg);">
               <div class="overlay"></div>
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                           <!-- <div class="slider-text-inner">
                               <div class="desc">
                                   <h1 class="head-1">Men's</h1>
                                   <h2 class="head-2">Jeans</h2>
                                   <h2 class="head-3">Collection</h2>
                                   <p class="category"><span>New stylish shirts, pants &amp; Accessories</span></p>
                                   <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                               </div>
                           </div> -->
                       </div>
                   </div>
               </div>
           </li>
           <li style="background-image: url({{url('/')}}/frontend_assets/images/banner_2.jpg);">
               <div class="overlay"></div>
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-md-6 col-md-offset-3 col-md-pull-2 col-sm-12 col-xs-12 slider-text">
                           <div class="slider-text-inner">
                               <div class="desc">
                                   <h1 class="head-1">Offer</h1>
                                   <h2 class="head-2">Sale</h2>
                                   <h2 class="head-3">5% off</h2>
                                   <p class="category"><span>New Powerfull and Gaming Accessories</span></p>
                                   <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </li>
           <li style="background-image: url({{url('/')}}/frontend_assets/images/banner_3.jpg);">
               <div class="overlay"></div>
               <div class="container-fluid">
                   <div class="row">
                       <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 slider-text">
                           <div class="slider-text-inner">
                               <div class="desc">
                                   <h1 class="head-1">New</h1>
                                   <h2 class="head-2">Arrival</h2>
                                   <h2 class="head-3">up to 10% off</h2>
                                   <p class="category"><span>on all AMD Processor</span></p>
                                   <p><a href="#" class="btn btn-primary">Shop Collection</a></p>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
           </li>
          </ul>
      </div>
</aside>
<div id="colorlib-featured-product">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a href="shop.html" class="f-product-1" style="background-image: url({{url('/')}}/frontend_assets/images/item-1.jpg); background-size: cover">
                    <div class="desc">
                        <h2>High <br>Refresh <br>Monitor</h2>
                    </div>
                </a>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-6">
                        <a href="" class="f-product-2" style="background-image: url({{url('/')}}/frontend_assets/images/item-2.jpg);">
                            <div class="desc">
                                <h2>9th <br>Gen <br>Intel</h2>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="" class="f-product-2" style="background-image: url({{url('/')}}/frontend_assets/images/item-3.jpg);">
                            <div class="desc">
                                <h2>Price <br>Drop <br>40%</h2>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-12">
                        <a href="" class="f-product-2" style="background-image: url({{url('/')}}/frontend_assets/images/item-4.jpg);">
                            <div class="desc">
                                <h2>Best in <br>Class <br>Mobo</h2>
                            </div>
                        </a>
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
                <h2><span>New Arrival</span></h2>
                <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($processor->image)}});height:250px">
                        <p class="tag"><span class="new">{{$processor->category_name}}</span></p>
                        <div class="cart">
                            @if($processor->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$processor->name}}/{{$processor->price}}/{{$processor->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('processor/details')}}/{{$processor->id}}"><i class="icon-eye"></i></a></span>
                                 {{-- <span><a href="#"><i class="icon-heart3"></i></a></span> --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$processor->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('processor/details')}}/{{$processor->id}}">{{$processor->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$processor->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($motherboard->image)}});height:250px">
                        <p class="tag"><span class="new">{{$motherboard->category_name}}</span></p>
                        <div class="cart">
                            @if($motherboard->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$motherboard->name}}/{{$motherboard->price}}/{{$motherboard->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('motherboard/details')}}/{{$motherboard->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$motherboard->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('motherboard/details')}}/{{$motherboard->id}}">{{$motherboard->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$motherboard->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($ram->image)}});height:250px">
                        <p class="tag"><span class="new">{{$ram->category_name}}</span></p>
                        <div class="cart">
                            @if($ram->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$ram->name}}/{{$ram->price}}/{{$ram->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('ram/details')}}/{{$ram->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$ram->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('ram/details')}}/{{$ram->id}}">{{$ram->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$ram->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($casing->image)}});height:250px">
                        <p class="tag"><span class="new">{{$casing->category_name}}</span></p>
                        <div class="cart">
                            @if($casing->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$casing->name}}/{{$casing->price}}/{{$casing->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('casing/details')}}/{{$casing->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$casing->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('casing/details')}}/{{$casing->id}}">{{$casing->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$casing->price}} /=</span></p>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($graphics_card->image)}});height:250px">
                        <p class="tag"><span class="new">{{$graphics_card->category_name}}</span></p>
                        <div class="cart">
                            @if($graphics_card->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$graphics_card->name}}/{{$graphics_card->price}}/{{$graphics_card->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('graphics_card/details')}}/{{$graphics_card->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$graphics_card->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('graphics_card/details')}}/{{$graphics_card->id}}">{{$graphics_card->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$graphics_card->price}} /=</span></p>
                    </div>
                </div>
            </div>


            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($power_supply->image)}});height:250px">
                        <p class="tag"><span class="new">{{$power_supply->category_name}}</span></p>
                        <div class="cart">
                            @if($power_supply->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$power_supply->name}}/{{$power_supply->price}}/{{$power_supply->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('power_supply/details')}}/{{$power_supply->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$power_supply->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('power_supply/details')}}/{{$power_supply->id}}">{{$power_supply->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$power_supply->price}} /=</span></p>
                    </div>
                </div>
            </div>


            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($storage->image)}});height:250px">
                        <p class="tag"><span class="new">{{$storage->category_name}}</span></p>
                        <div class="cart">
                            @if($storage->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$storage->name}}/{{$storage->price}}/{{$storage->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('storage/details')}}/{{$storage->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$storage->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('storage/details')}}/{{$storage->id}}">{{$storage->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$storage->price}} /=</span></p>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($product->image)}});height:250px">
                        <p class="tag"><span class="new">{{$product->subcategory_name}}</span></p>
                        <div class="cart">
                            @if($product->stock > 0)
                            <p>
                                <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$product->name}}/{{$product->price}}/{{$product->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="{{url('product/details')}}/{{$product->id}}"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                <span><a href="#"><i class="icon-bar-chart"></i> {{$product->stock}} piece</a></span>
                            </p>
                            @else
                            <p>
                                <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                            </p>
                            @endif
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="{{url('product/details')}}/{{$product->id}}">{{$product->name}}</a></h3>
                        <p class="price"><span style="font-size:22px;font-weight:700">{{$product->price}} /=</span></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<div id="colorlib-intro" class="colorlib-intro" style="background-image: url({{url('/')}}/frontend_assets/images/cover-img-1.jpg);" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="intro-desc">
                    <div class="text-salebox">
                        <div class="text-lefts">
                            <div class="sale-box">
                                <div class="sale-box-top">
                                    <h2 class="number">{{$coupon->coupon_discount}}</h2>
                                    <span class="sup-1">%</span>
                                    <span class="sup-2">Off</span>
                                </div>
                                <h2 class="text-sale">offer</h2>
                            </div>
                        </div>
                        <div class="text-rights">
                            <h2 class="title">{{$coupon->coupon_code}}</h2>
                            <p>Above is the Coupon Code</p>
                            <p><a href="{{url('all/products')}}" class="btn btn-primary">Shop Now</a></p>
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
                <h2><span>Our Products</span></h2>
                <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">

            @foreach ($processors as $processor)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($processor->image)}});height:250px">
                            <p class="tag"><span class="new">{{$processor->category_name}}</span></p>
                            <div class="cart">
                                @if($processor->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$processor->name}}/{{$processor->price}}/{{$processor->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('processor/details')}}/{{$processor->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$processor->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('processor/details')}}/{{$processor->id}}">{{$processor->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$processor->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>

        <div class="row">
            @foreach ($motherboards as $motherboard)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($motherboard->image)}});height:250px">
                            <p class="tag"><span class="new">{{$motherboard->category_name}}</span></p>
                            <div class="cart">
                                @if($motherboard->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$motherboard->name}}/{{$motherboard->price}}/{{$motherboard->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('motherboard/details')}}/{{$motherboard->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$motherboard->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('motherboard/details')}}/{{$motherboard->id}}">{{$motherboard->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$motherboard->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="row">
            @foreach ($rams as $ram)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($ram->image)}});height:250px">
                            <p class="tag"><span class="new">{{$ram->category_name}}</span></p>
                            <div class="cart">
                                @if($ram->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$ram->name}}/{{$ram->price}}/{{$ram->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('ram/details')}}/{{$ram->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$ram->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('ram/details')}}/{{$ram->id}}">{{$ram->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$ram->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="row">
            @foreach ($casings as $casing)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($casing->image)}});height:250px">
                            <p class="tag"><span class="new">{{$casing->category_name}}</span></p>
                            <div class="cart">
                                @if($casing->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$casing->name}}/{{$casing->price}}/{{$casing->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('casing/details')}}/{{$casing->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$casing->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('casing/details')}}/{{$casing->id}}">{{$casing->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$casing->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>


        <div class="row">
            @foreach ($graphics_cards as $graphics_card)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($graphics_card->image)}});height:250px">
                            <p class="tag"><span class="new">{{$graphics_card->category_name}}</span></p>
                            <div class="cart">
                                @if($graphics_card->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$graphics_card->name}}/{{$graphics_card->price}}/{{$graphics_card->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('graphics_card/details')}}/{{$graphics_card->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$graphics_card->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('graphics_card/details')}}/{{$graphics_card->id}}">{{$graphics_card->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$graphics_card->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="row">
            @foreach ($power_supplies as $power_supply)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($power_supply->image)}});height:250px">
                            <p class="tag"><span class="new">{{$power_supply->category_name}}</span></p>
                            <div class="cart">
                                @if($power_supply->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$power_supply->name}}/{{$power_supply->price}}/{{$power_supply->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('power_supply/details')}}/{{$power_supply->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$power_supply->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('power_supply/details')}}/{{$power_supply->id}}">{{$power_supply->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$power_supply->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>


        <div class="row">
            @foreach ($storages as $storage)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($storage->image)}});height:250px">
                            <p class="tag"><span class="new">{{$storage->category_name}}</span></p>
                            <div class="cart">
                                @if($storage->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$storage->name}}/{{$storage->price}}/{{$storage->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('storage/details')}}/{{$storage->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$storage->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('storage/details')}}/{{$storage->id}}">{{$storage->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$storage->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>


        <div class="row">
            @foreach ($products as $product)
                <div class="col-md-3 text-center">
                    <div class="product-entry">
                        <div class="product-img" style="background-image: url({{url($product->image)}});height:250px">
                            <p class="tag"><span class="new">{{$product->subcategory_name}}</span></p>
                            <div class="cart">
                                @if($product->stock > 0)
                                <p>
                                    <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$product->name}}/{{$product->price}}/{{$product->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                    <span><a href="{{url('product/details')}}/{{$product->id}}"><i class="icon-eye"></i></a></span>
                                    {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                    <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                                    <span><a href="#"><i class="icon-bar-chart"></i> {{$product->stock}} piece</a></span>
                                </p>
                                @else
                                <p>
                                    <span class="addtocart" style="padding:10px 10px;color:white"><b>Stock Out</b></span>
                                </p>
                                @endif
                            </div>
                        </div>
                        <div class="desc">
                            <h3><a href="{{url('product/details')}}/{{$product->id}}">{{$product->name}}</a></h3>
                            <p class="price"><span style="font-size:22px;font-weight:700">{{$product->price}} /=</span></p>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <div class="row">
            <div class="col-lg-12 text-center">
                <a href="{{url('all/products')}}" style="background:#595959;padding:15px 40px;display:inline-block;font-weight:600">See More products</a>
            </div>
        </div>

        </div>
    </div>
</div>


{{-- <div class="colorlib-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2 text-center colorlib-heading">
                <h2>Recent Blog</h2>
                <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <article class="article-entry">
                    <a href="blog.html" class="blog-img" style="background-image: url({{url('/')}}/frontend_assets/images/blog-1.jpg);"></a>
                    <div class="desc">
                        <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                        <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                        <h2><a href="blog.html">Openning Branches</a></h2>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="article-entry">
                    <a href="blog.html" class="blog-img" style="background-image: url({{url('/')}}/frontend_assets/images/blog-2.jpg);"></a>
                    <div class="desc">
                        <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                        <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                        <h2><a href="blog.html">Openning Branches</a></h2>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                    </div>
                </article>
            </div>
            <div class="col-md-4">
                <article class="article-entry">
                    <a href="blog.html" class="blog-img" style="background-image: url({{url('/')}}/frontend_assets/images/blog-3.jpg);"></a>
                    <div class="desc">
                        <p class="meta"><span class="day">02</span><span class="month">Mar</span></p>
                        <p class="admin"><span>Posted by:</span> <span>Noah Henderson</span></p>
                        <h2><a href="blog.html">Openning Branches</a></h2>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life</p>
                    </div>
                </article>
            </div>
        </div>
    </div>
</div> --}}

<div id="colorlib-subscribe">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="col-md-12 text-center">
                    <h2><i class="icon-paperplane"></i>For Any kind of Infromation please feel free to contact with us</h2>
                </div>
                {{-- <div class="col-md-6">
                    <form class="form-inline qbstp-header-subscribe">
                        <div class="row">
                            <div class="col-md-12 col-md-offset-0">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="email" placeholder="Enter your email">
                                    <button type="submit" class="btn btn-primary">Subscribe</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div> --}}
            </div>
        </div>
    </div>
</div>

@endsection

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
                               <h1>Product Detail</h1>
                               <h2 class="bread"><span><a href="index.html">Home</a></span> <span><a href="shop.html">Product</a></span> <span>Product Detail</span></h2>
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
        <div class="row row-pb-lg">
            <div class="col-md-10 col-md-offset-1">
                <div class="product-detail-wrap">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="product-entry">
                                <div class="product-img" style="background-image: url({{url($details->image)}});">
                                </div>
                            </div>
                        </div>
                        @if(session('StockMsg'))
                            <p style="color:red;font-size:25px;font-weight:500">{{session('StockMsg')}}</p>
                        @endif
                        <div class="col-md-7">
                            <div class="desc">
                                <h3>{{$details->name}}</h3>
                                <p class="price">
                                    <span>{{$details->price}} /=</span>
                                    {{--  <span class="rate text-right">
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-full"></i>
                                        <i class="icon-star-half"></i>
                                        (74 Rating)
                                    </span>  --}}
                                </p>

                                {{-- with stock test purpose in practicum board --}}
                                <div class="row row-pb-sm">
                                    <div class="col-md-4">
                                        <form action="{{url('add/to/cart')}}" method="POST">
                                            @csrf
                                            <input type="hidden" name="category_id" value="{{$details->category_id}}">
                                            <input type="hidden" name="name" value="{{$details->name}}">
                                            <input type="hidden" name="price" value="{{$details->price}}">
                                            <div class="form-group">
                                                <input type="number" min="1" max="{{$details->stock}}" name="quantity" style="border:1px solid #FFC91A;padding:5px;" required>
                                            </div>

                                            <input type="submit" value="Add to Cart" class="btn btn-warning">
                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="row">
                    <div class="col-md-12 tabulation">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#description">Description</a></li>
                            <!--<li><a data-toggle="tab" href="#review">Reviews</a></li>-->
                        </ul>
                        <div class="tab-content">
                            <div id="description" class="tab-pane fade in active">
                                {!!$details->details!!}
                         </div>
                           <!--<div id="review" class="tab-pane fade">-->
                           <!--    <div class="row">-->
                           <!--        <div class="col-md-7">-->
                           <!--            <h3>23 Reviews</h3>-->
                           <!--            <div class="review">-->
                           <!--                <div class="user-img" style="background-image: url(images/person1.jpg)"></div>-->
                           <!--                <div class="desc">-->
                           <!--                    <h4>-->
                           <!--                        <span class="text-left">Jacob Webb</span>-->
                           <!--                        <span class="text-right">14 March 2018</span>-->
                           <!--                    </h4>-->
                           <!--                    <p class="star">-->
                           <!--                        <span>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-half"></i>-->
                           <!--                            <i class="icon-star-empty"></i>-->
                           <!--                        </span>-->
                           <!--                        <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>-->
                           <!--                    </p>-->
                           <!--                    <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>-->
                           <!--                </div>-->
                           <!--            </div>-->
                           <!--            <div class="review">-->
                           <!--                <div class="user-img" style="background-image: url(images/person2.jpg)"></div>-->
                           <!--                <div class="desc">-->
                           <!--                    <h4>-->
                           <!--                        <span class="text-left">Jacob Webb</span>-->
                           <!--                        <span class="text-right">14 March 2018</span>-->
                           <!--                    </h4>-->
                           <!--                    <p class="star">-->
                           <!--                        <span>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-half"></i>-->
                           <!--                            <i class="icon-star-empty"></i>-->
                           <!--                        </span>-->
                           <!--                        <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>-->
                           <!--                    </p>-->
                           <!--                    <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>-->
                           <!--                </div>-->
                           <!--            </div>-->
                           <!--            <div class="review">-->
                           <!--                <div class="user-img" style="background-image: url(images/person3.jpg)"></div>-->
                           <!--                <div class="desc">-->
                           <!--                    <h4>-->
                           <!--                        <span class="text-left">Jacob Webb</span>-->
                           <!--                        <span class="text-right">14 March 2018</span>-->
                           <!--                    </h4>-->
                           <!--                    <p class="star">-->
                           <!--                        <span>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-full"></i>-->
                           <!--                            <i class="icon-star-half"></i>-->
                           <!--                            <i class="icon-star-empty"></i>-->
                           <!--                        </span>-->
                           <!--                        <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span>-->
                           <!--                    </p>-->
                           <!--                    <p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p>-->
                           <!--                </div>-->
                           <!--            </div>-->
                           <!--        </div>-->
                           <!--        <div class="col-md-4 col-md-push-1">-->
                           <!--            <div class="rating-wrap">-->
                           <!--                <h3>Give a Review</h3>-->
                           <!--                <p class="star">-->
                           <!--                    <span>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        (98%)-->
                           <!--                    </span>-->
                           <!--                    <span>20 Reviews</span>-->
                           <!--                </p>-->
                           <!--                <p class="star">-->
                           <!--                    <span>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        (85%)-->
                           <!--                    </span>-->
                           <!--                    <span>10 Reviews</span>-->
                           <!--                </p>-->
                           <!--                <p class="star">-->
                           <!--                    <span>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        (98%)-->
                           <!--                    </span>-->
                           <!--                    <span>5 Reviews</span>-->
                           <!--                </p>-->
                           <!--                <p class="star">-->
                           <!--                    <span>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        (98%)-->
                           <!--                    </span>-->
                           <!--                    <span>0 Reviews</span>-->
                           <!--                </p>-->
                           <!--                <p class="star">-->
                           <!--                    <span>-->
                           <!--                        <i class="icon-star-full"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        <i class="icon-star-empty"></i>-->
                           <!--                        (98%)-->
                           <!--                    </span>-->
                           <!--                    <span>0 Reviews</span>-->
                           <!--                </p>-->
                           <!--            </div>-->
                           <!--        </div>-->
                           <!--    </div>-->
                           <!--</div>-->
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
                <h2><span>Similar Products</span></h2>
                <p>We love to tell our successful far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
            </div>
        </div>
        <div class="row">

            @foreach ($similar_products as $similar_product)
            <div class="col-md-3 text-center">
                <div class="product-entry">
                    <div class="product-img" style="background-image: url({{url($similar_product->image)}});">
                        <p class="tag"><span class="new">{{$similar_product->category_name}}</span></p>
                        <div class="cart">
                            <p>
                                <span class="addtocart"><a href="#"><i class="icon-shopping-cart"></i></a></span>
                                <span><a href="product-detail.html"><i class="icon-eye"></i></a></span>
                                {{--  <span><a href="#"><i class="icon-heart3"></i></a></span>
                                <span><a href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>  --}}
                            </p>
                        </div>
                    </div>
                    <div class="desc">
                        <h3><a href="shop.html">{{$similar_product->name}}</a></h3>
                        <p class="price"><span>{{$similar_product->price}} /=</span></p>
                    </div>
                </div>
            </div>
            @endforeach


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

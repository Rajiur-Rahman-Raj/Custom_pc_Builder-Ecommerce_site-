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
                               <h1>Products</h1>
                               <h2 class="bread"><span><a href="index.html">Home</a></span> <span>Shop</span></h2>
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
        <div class="row">
            <div class="col-md-10 col-md-push-2">
                <div class="row row-pb-lg">

                    @foreach ($products as $product)
                    <div class="col-md-3">
                        <div class="product-entry">
                            <div class="product-img" style="background-image: url({{url($product->image)}});height:220px">
                                <p class="tag"><span class="new">{{$product->category_name}}</span></p>
                                <div class="cart">
                                    @if($product->stock > 0)
                                    <p>
                                        <span class="addtocart"><a href="{{url('add/to/cart')}}/{{$product->name}}/{{$product->price}}/{{$product->category_id}}"><i class="icon-shopping-cart"></i></a></span>
                                        <span><a href="{{url('/')}}/{{$url}}/{{$product->id}}"><i class="icon-eye"></i></a></span>
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
                                <h3><a href="{{url('/')}}/{{$url}}/{{$product->id}}">{{$product->name}}</a></h3>
                                <!--<p class="price"><span style="fonr-size:35px !important;font-weight:800">{{$product->price}} /=</span></p>-->
                            </div>
                             <h4 style="fonr-size:25px;font-weight:800">{{$product->price}} /=</h4>
                        </div>
                    </div>
                @endforeach

                </div>
                <div class="row">
                    <div class="col-md-12">
                        {{ $products->links() }}
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-md-pull-10">
                <div class="sidebar">
                    <div class="side">
                        <h2>Categories</h2>
                        <div class="fancy-collapse-panel">
                      <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                        @foreach ($categories as $category)
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne{{$category->id}}" aria-expanded="true" aria-controls="collapseOne">{{$category->category_name}}
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne{{$category->id}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">

                                    @php $subcategories = DB::table('sub_categories')->where('category_id',$category->id)->get(); @endphp

                                    @foreach ($subcategories as $subcategory)
                                    <ul>
                                        <li><a href="{{url('filter')}}/{{$category->id}}/{{$subcategory->id}}">{{$subcategory->subcategory_name}}</a></li>
                                    </ul>
                                    @endforeach

                                </div>
                            </div>
                        </div>
                        @endforeach



                      </div>
                   </div>
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

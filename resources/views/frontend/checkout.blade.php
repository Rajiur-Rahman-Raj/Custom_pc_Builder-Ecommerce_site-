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
                               <h1>Checkout</h1>
                               <h2 class="bread"><span><a href="index.html">Home</a></span> <span><a href="cart.html">Shopping Cart</a></span> <span>Checkout</span></h2>
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
                    <div class="process text-center active">
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
        <div class="row">
            <div class="col-md-7">
                <form action="{{url('place/an/order')}}" method="post" class="colorlib-form">
                    @csrf
                    <h2>Billing Details</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                    <label for="country">Select Divisions</label>
                                    <div class="form-field">
                                    <i class="icon icon-arrow-down3"></i>
                                    <select name="division_id" id="division_id" class="form-control" required>
                                        <option value="">Select Divisions</option>
                                        @foreach ($divisions as $division)
                                            <option value="{{$division->id}}">{{$division->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <label for="country">Select District</label>
                                    <div class="form-field">
                                    <i class="icon icon-arrow-down3"></i>
                                    <select name="district_id" id="district_id" class="form-control" required>

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <label for="country">Select Area</label>
                                    <div class="form-field">
                                    <i class="icon icon-arrow-down3"></i>
                                    <select name="area_id" id="area_id" class="form-control" required>

                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="fname">Full Name</label>
                                <input required type="text" id="fname" name="name" value="{{Auth::user()->name}}" class="form-control" placeholder="Your Nmae">
                            </div>
                            <div class="col-md-6">
                                <label for="fname">E-mail Address</label>
                                <input required type="text" id="email" name="email" value="{{Auth::user()->email}}" class="form-control" placeholder="Your firstname">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label for="Phone">Phone Number</label>
                                <input type="text" name="phone" value="{{Auth::user()->contact}}" class="form-control" placeholder="" required>
                            </div>
                            <div class="col-md-6">
                                <label for="lname">Zip/Postal Code</label>
                                <input type="text" name="postal_code" id="zippostalcode" class="form-control" placeholder="Zip / Postal">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="fname">Address</label>
                                <input type="text" name="address" id="address" class="form-control" placeholder="Enter Your Address" required>
                            </div>
                        </div>
                    </div>

            </div>
            <div class="col-md-5">
                <div class="cart-detail">
                    <h2>Cart Total</h2>
                    <ul>
                        <li>
                            <span>Subtotal</span> <span>{{session('subtotal')}} /=</span>
                        </li>
                        <li><span>Shipping</span> <span>60 /=</span></li>
                        <li><span>Discount</span> <span>{{session('discount')}} %</span></li>
                        <li><span>Order Total</span> <span>{{session('total')}} /=</span></li>
                    </ul>
                </div>

                <div class="row">
                    <div class="col-md-12 text-center">
                        <p><input type="submit" class="btn btn-sm btn-warning" value="Place an order"></p>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>


<div id="colorlib-subscribe">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-12 text-center">
                    <h2><i class="icon-paperplane"></i>For Any kind of Infromation please feel free to contact with us</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    $(document).ready(function() {
      $('#division_id').on('change', function() {
        var division = $(this).val();
          if(division) {
            $.ajax({
                url: '/findDistrictWithDivisionId/'+division,
                type: "GET",
                data : {"_token":"{{ csrf_token() }}"},
                dataType: "json",
                success:function(data) {
                    // console.log(data);
                  if(data){
                    $('#district_id').empty();
                    $('#district_id').focus;
                    $('#district_id').append('<option value="">-- Select District --</option>');
                    $.each(data, function(key, value){
                    $('select[name="district_id"]').append('<option value="'+ value.id +'">' + value.name+ '</option>');
                });
              }else{
                $('#district_id').empty();
              }
              }
            });
          }else{
            $('#district_id').empty();
          }
        });
      });
</script>

<script>
    $(document).ready(function() {
      $('#district_id').on('change', function() {
        var district_id = $(this).val();
          if(district_id) {
            $.ajax({
                url: '/findAreaWithDistrictId/'+district_id,
                type: "GET",
                data : {"_token":"{{ csrf_token() }}"},
                dataType: "json",
                success:function(data) {
                    // console.log(data);
                  if(data){
                    $('#area_id').empty();
                    $('#area_id').focus;
                    $('#area_id').append('<option value="">-- Select Area --</option>');
                    $.each(data, function(key, value){
                    $('select[name="area_id"]').append('<option value="'+ value.id +'">' + value.name+ '</option>');
                });
              }else{
                $('#area_id').empty();
              }
              }
            });
          }else{
            $('#area_id').empty();
          }
        });
      });
</script>
@endsection

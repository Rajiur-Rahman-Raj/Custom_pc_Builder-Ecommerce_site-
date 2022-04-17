@extends('backend.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7">
                <div class="card mt-3 rounded">
                    <div class="card-header bg-info text-white">
                        <i class="fas fa-percent"></i> <b>Offer Lists</b>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                              <tr>
                                <th scope="col">SL</th>
                                <th scope="col">Coupon Code</th>
                                <th scope="col">Discount (%)</th>
                                <th scope="col">Actions</th>
                              </tr>
                            </thead>
                            <tbody>
                            <?php $sl=1 ?>
                            @foreach ($coupons as $coupon)
                               <tr>
                                    <th scope="row">{{$sl}}</th>
                                    <td>{{$coupon->coupon_code}}</td>
                                    <td>{{$coupon->coupon_discount}}</td>
                                    <td><a href="{{url('delete/coupon')}}/{{$coupon->id}}" class="btn btn-sm btn-danger rounded">Delete</a></td>
                                </tr>
                            <?php $sl++ ?>
                            @endforeach

                            </tbody>
                          </table>
                    </div>
                </div>

            </div>
            <div class="col-lg-5">
                <div class="card mt-3 rounded">
                    <div class="card-header bg-info text-white">
                        <i class="fas fa-percent"></i> <b>Add New Offer</b>
                    </div>
                    <div class="card-body">
                        <form action="{{url('add/new/coupon')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label>Coupon Code : </label>
                                <input type="text" name="coupon_code" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Coupon Discount : </label>
                                <input type="number" name="coupon_discount" class="form-control" min="1" required>
                            </div>
                            <div class="form-group mt-4">
                                <input type="submit" class="btn btn-sm btn-success rounded" value="Add Coupon">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

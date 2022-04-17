@extends('backend.master')

@section('content')
    <div class="container-fluid">
        <div class="card mt-3">
            <div class="card-header bg-success text-white">
                <div class="row">
                    <div class="col-lg-6">
                        <i class="fas fa-check"></i> <b>Approved Orders List</b>
                    </div>
                    <div class="col-lg-6 text-right">
                        @if(session('approveMsg'))
                            <p style="color:white;font-size:15px;font-weight:500">{{session('approveMsg')}}</p>
                        @endif
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th scope="col">OrderID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Total Price</th>
                        <th scope="col">Payment Type</th>
                        <th scope="col">Payment Status</th>
                        <th scope="col">Order Status</th>
                        <th scope="col">Actions</th>
                      </tr>
                    </thead>
                    <tbody>

                        @foreach ($orders as $order)
                        <tr>
                            <th scope="row">{{$order->id}}</th>
                            <td>{{$order->user_name}}</td>
                            <td class="text-info"><b>{{$order->grand_total}} Taka</b></td>
                            <td>{{$order->payment_type}}</td>
                            <td>
                                @if($order->payment_status == 0)
                                Due
                                @else
                                Paid
                                @endif
                            </td>
                            <td>Approved</td>
                            <td>
                                <a href="{{url('complete/order')}}/{{$order->id}}" class="btn btn-sm btn-success rounded"><i class="fas fa-clipboard-check"></i></a>
                                <a href="{{url('generate/pdf')}}/{{$order->id}}" class="btn btn-sm btn-info rounded ml-2"><i class="fas fa-print"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection

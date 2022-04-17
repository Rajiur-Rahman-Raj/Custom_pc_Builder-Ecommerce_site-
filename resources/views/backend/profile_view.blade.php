@extends('backend.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="card mt-3">
                    <div class="card-header">
                        <h5>My Profile</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <div class="admin_image">
                                    <img src="@if(Auth::user()->image != null){{url($id->image)}}@endif" alt="" class="img-fluid" style="height:200px; width:200px; border-radius: 50%">
                                </div>
                            </div>
                        </div>
                        <div class="row mt-5">
                            <div class="col-lg-12 mb-1">
                                <h5 style="display:inline">Name : </h5>
                                <p style="display:inline">{{Auth::user()->name}}</p>
                            </div>
                            <div class="col-lg-12 mb-1">
                                <h5 style="display:inline">Contact : </h5>
                                <p style="display:inline">{{Auth::user()->contact}}</p>
                            </div>
                            <div class="col-lg-12 mb-1">
                                <h5 style="display:inline">Address : </h5>
                                <p style="display:inline">{{Auth::user()->address}}</p>
                            </div>
                            <div class="col-lg-12 mt-5 text-center">
                                <a href="{{url('admin/profile/update')}}/{{$id->id}}" class="btn-sm btn-info text-white">Update Profile</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
@endsection

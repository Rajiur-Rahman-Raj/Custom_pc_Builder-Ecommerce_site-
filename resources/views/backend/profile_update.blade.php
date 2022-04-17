@extends('backend.master')

@section('content')
<div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header text-center text-dark mt-3">
                        <h5>Update Your Information</h5>
                    </div>

                    <div class="card-body">
                        <form action="{{url('admin/profile/edit')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" value="{{$info->id}}" name="id">
                            <div class="form-group">
                                <label for="name">Your Name :</label>
                                <input type="text" id="name" class="form-control @error('name') is-invalid @enderror" name="name" value="{{$info->name}}">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="contact">Contact :</label>
                                <input type="text" id="contact" class="form-control @error('contact') is-invalid @enderror" name="contact" value="{{$info->contact}}">
                                @error('contact')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="address">Address :</label>
                                <input type="text" id="address" class="form-control @error('address') is-invalid @enderror" name="address" value="{{$info->address}}">
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="image">Your Image :</label>
                                <input type="file" id="image" class="pb-5 form-control @error('image') is-invalid @enderror" name="image" value="{{$info->image}}" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                                @error('image')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Image Preview:</label>
                                <img id="blah" alt="Your image" width="220" height="200" src="@if(Auth::user()->image != null){{url($info->image)}}@endif">
                            </div>

                            <div class="text-center">
                                <input type="submit" value="Update" class="btn-sm btn-success">
                                <input type="reset" value="Clear" class="btn-sm btn-danger ml-3">
                            </div>
                        </form>
                    </div>

                </div>
            </div>


            @if(session('msg'))
                <div class="col-lg-4">
                    <div class="mt-3">
                        <p style="color:black" class="alert alert-info">{{session('msg')}}</p>
                    </div>
                </div>
            @endif


        </div>
    </div>
@endsection

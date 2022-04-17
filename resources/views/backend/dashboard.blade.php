@extends('backend.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            @if(Auth::user()->email_verified_at == null)
            <div class="col-lg-6">
                <div class="card mt-3">
                    <div class="card-header">
                        <h4>Verification Notice :</h4>
                    </div>
                    <div class="card-body">
                        <h5>Hello!! {{Auth::user()->name}}</h5>
                        <h6>Please Verify your email address. We have sent an email in </h6>
                        {{Auth::user()->email}}
                    </div>
                </div>
            </div>
            @endif

            @if(Auth::user()->email_verified_at != null)
                @if(Auth::user()->name == null || Auth::user()->image == null || Auth::user()->contact == null)
                    <div class="col-lg-6">
                        <div class="card mt-3">
                            <div class="card-header">
                                <h4>Profile Notice :</h4>
                            </div>
                            <div class="card-body">
                                <h5>Hello!! {{Auth::user()->name}}</h5>
                                <h6>Please Complete your profile as soon as possible. This is mendatry to grant your system access</h6>
                            </div>
                        </div>
                    </div>
                @endif
            @endif


            @if(Auth::user()->status == 'pending')
            <div class="col-lg-6">
                <div class="card mt-3">
                    <div class="card-header">
                        <h4>Admin Notice :</h4>
                    </div>
                    <div class="card-body">
                        <h5>Hello!! {{Auth::user()->name}}</h5>
                        <h6>Please Inform the <span>Super Admin</span> to grant your user access through</h6>
                        alifhossain174@gmail.com
                    </div>
                </div>
            </div>
            @endif
            @if(Auth::user()->email_verified_at != null && Auth::user()->status == 'granted')
            <div class="col-lg-6">
                <div class="card mt-3">
                    <div class="card-header">
                        <h4>Welcome Notice :</h4>
                    </div>
                    <div class="card-body">
                        <h5>Hello!! {{Auth::user()->name}}</h5>
                        <h6>Welcome to Custom PC Builder</h6>
                    </div>
                </div>
            </div>
            @endif
        </div>


    </div>

@endsection

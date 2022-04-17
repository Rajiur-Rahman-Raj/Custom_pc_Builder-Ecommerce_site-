<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    {{--  <meta name="_token" content="{{ csrf_token() }}">  --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Welcome to Dashboard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="{{url('/')}}/assets/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{url('/')}}/assets/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="{{url('/')}}/assets/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="{{url('/')}}/assets/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="{{url('/')}}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="{{url('/')}}/assets/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="{{url('/')}}/assets/css/custom.css">
    <!-- Favicon-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  </head>
  <body>
    <!-- Side Navbar -->
    <nav class="side-navbar">
      <div class="side-navbar-wrapper">
        <!-- Sidebar Header    -->
        <div class="sidenav-header d-flex align-items-center justify-content-center">
          <!-- User Info-->
          <div class="sidenav-header-inner text-center"><img src="@if(Auth::user()->image != null){{url(Auth::user()->image)}}@endif" alt="No Image" class="img-fluid rounded-circle">
            <h3 class="h4 mt-2">{{Auth::user()->name}}</h3><span>
                @if(Auth::user()->type == "super_admin")
                Super Admin
                @else
                Admin
                @endif
            </span>
          </div>
          <!-- Small Brand information, appears on minimized sidebar-->
          <div class="sidenav-header-logo"><a href="index.html" class="brand-small text-center"> <strong>B</strong><strong class="text-primary">D</strong></a></div>
        </div>
        <!-- Sidebar Navigation Menus-->
        <div class="main-menu">
          <h5 class="sidenav-heading">Menu</h5>
          <ul id="side-main-menu" class="side-menu list-unstyled">
            @if(Auth::user()->email_verified_at == null)

            @else
            <li><a href="{{url('admin/profile/view')}}"> <i class="far fa-user"></i>My Profile</a></li>
            @endif

            @if(Auth::user()->email_verified_at != null && Auth::user()->type == "admin" && Auth::user()->status == "granted")
            <li><a href="#exampledropdownDropdown8" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-shopping-cart"></i> Order Management </a>
                <ul id="exampledropdownDropdown8" class="collapse list-unstyled ">
                    <li><a href="{{url('pending/order/lists')}}"><i class="fas fa-pause"></i>Pending Orders <span class="text-warning">[ {{App\Sale::where('order_status',0)->count()}} ]</span></a></li>
                    <li><a href="{{url('approved/order/lists')}}"><i class="fas fa-check"></i>Approved Orders</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-microchip"></i>Processor</a>
                <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                  <li><a href="{{url('processor/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                  <li><a href="{{url('processor/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-server"></i>MotherBoard</a>
                <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                    <li><a href="{{url('motherboard/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('/motherboard/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-memory"></i>RAM </a>
                <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                    <li><a href="{{url('ram/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('ram/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown6" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-gamepad"></i>Graphics Card </a>
                <ul id="exampledropdownDropdown6" class="collapse list-unstyled ">
                    <li><a href="{{url('gpu/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('gpu/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-database"></i>Storage </a>
                <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                    <li><a href="{{url('storage/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('storage/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-suitcase"></i>Casing </a>
                <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                    <li><a href="{{url('casing/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('casing/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown5" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-bolt"></i> Power Supply </a>
                <ul id="exampledropdownDropdown5" class="collapse list-unstyled ">
                    <li><a href="{{url('psu/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('psu/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown7" aria-expanded="false" data-toggle="collapse"> <i class="icon-grid"></i> Other Components </a>
                <ul id="exampledropdownDropdown7" class="collapse list-unstyled ">
                    <li><a href="{{url('others/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('others/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            @endif


            @if(Auth::user()->email_verified_at != null && Auth::user()->type == "super_admin" && Auth::user()->status == "granted")
            <li><a href="{{url('all/admin/view')}}"> <i class="fas fa-users"></i>Admins @if(Auth::user()->where('status', 'pending')->where('type','admin')->count() != 0)<div class="badge badge-warning">{{Auth::user()->where('status', 'pending')->where('type','admin')->count()}} New</div>@endif</a></li>
            <li><a href="{{url('sales/page/view')}}"> <i class="fas fa-file-invoice-dollar"></i> Sales Information</a></li>
            <li><a href="{{url('stock/report/generate')}}"><i class="fas fa-layer-group"></i>Stock Report </a></li>
            <li><a href="{{url('category/subcategory/page/view')}}"><i class="icon-interface-windows"></i>Category-SubCategory</a></li>
            <li><a href="{{url('coupon/page/view')}}"><i class="fas fa-tags"></i>Offer Management</a></li>
            <li><a href="#exampledropdownDropdown8" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-shopping-cart"></i> Order Management </a>
                <ul id="exampledropdownDropdown8" class="collapse list-unstyled ">
                    <li><a href="{{url('pending/order/lists')}}"><i class="fas fa-pause"></i>Pending Orders <span class="text-warning">[ {{App\Sale::where('order_status',0)->count()}} ]</span></a></li>
                    <li><a href="{{url('approved/order/lists')}}"><i class="fas fa-check"></i>Approved Orders</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-microchip"></i>Processor</a>
                <ul id="exampledropdownDropdown" class="collapse list-unstyled ">
                  <li><a href="{{url('processor/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                  <li><a href="{{url('processor/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown1" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-server"></i>MotherBoard</a>
                <ul id="exampledropdownDropdown1" class="collapse list-unstyled ">
                    <li><a href="{{url('motherboard/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('/motherboard/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown2" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-memory"></i>RAM </a>
                <ul id="exampledropdownDropdown2" class="collapse list-unstyled ">
                    <li><a href="{{url('ram/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('ram/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown6" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-gamepad"></i>Graphics Card </a>
                <ul id="exampledropdownDropdown6" class="collapse list-unstyled ">
                    <li><a href="{{url('gpu/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('gpu/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown3" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-database"></i>Storage </a>
                <ul id="exampledropdownDropdown3" class="collapse list-unstyled ">
                    <li><a href="{{url('storage/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('storage/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown4" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-suitcase"></i>Casing </a>
                <ul id="exampledropdownDropdown4" class="collapse list-unstyled ">
                    <li><a href="{{url('casing/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('casing/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown5" aria-expanded="false" data-toggle="collapse"> <i class="fas fa-bolt"></i> Power Supply </a>
                <ul id="exampledropdownDropdown5" class="collapse list-unstyled ">
                    <li><a href="{{url('psu/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('psu/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            <li><a href="#exampledropdownDropdown7" aria-expanded="false" data-toggle="collapse"> <i class="icon-grid"></i> Other Components </a>
                <ul id="exampledropdownDropdown7" class="collapse list-unstyled ">
                    <li><a href="{{url('others/page')}}"><i class="fas fa-folder-plus"></i>Add New</a></li>
                    <li><a href="{{url('others/list/view')}}"><i class="fas fa-eye"></i>View List</a></li>
                </ul>
            </li>
            @endif

          </ul>
        </div>
      </div>
    </nav>
    <div class="page">
      <!-- navbar-->
      <header class="header">
        <nav class="navbar">
          <div class="container-fluid">
            <div class="navbar-holder d-flex align-items-center justify-content-between">
              <div class="navbar-header"><a id="toggle-btn" href="#" class="menu-btn"><i class="icon-bars"> </i></a><a href="{{url('home')}}" class="navbar-brand">
                  <div class="brand-text d-none d-md-inline-block"><strong class="text-primary">Dashboard</strong></div></a></div>
              <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
                <!-- Notifications dropdown-->
                {{-- <li class="nav-item"> <a id="notifications" href="#" class="nav-link"><i class="fa fa-bell"></i><span class="badge badge-warning">12</span></a></li> --}}

                <!-- Log out-->
                <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
              </ul>
            </div>
          </div>
        </nav>
      </header>





    @yield('content')






    <footer class="main-footer">
            <div class="container-fluid">
              <div class="row">
                <div class="col-sm-12 text-right">
                  <p>Custom PC Builder &copy;2019</p>
                </div>
              </div>
            </div>
          </footer>
        </div>
        <!-- JavaScript files-->
        <script src="{{url('/')}}/assets/vendor/jquery/jquery.min.js"></script>
        <script src="{{url('/')}}/assets/vendor/popper.js/umd/popper.min.js"> </script>
        <script src="{{url('/')}}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="{{url('/')}}/assets/js/grasp_mobile_progress_circle-1.0.0.min.js"></script>
        <script src="{{url('/')}}/assets/vendor/jquery.cookie/jquery.cookie.js"> </script>
        <script src="{{url('/')}}/assets/vendor/chart.js/Chart.min.js"></script>
        <script src="{{url('/')}}/assets/vendor/jquery-validation/jquery.validate.min.js"></script>
        <script src="{{url('/')}}/assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="{{url('/')}}/assets/js/charts-home.js"></script>
        <!-- Main File-->
        <script src="{{url('/')}}/assets/js/front.js"></script>
        <script src="https://kit.fontawesome.com/c218529370.js"></script>



        @yield('footer_js')



      </body>
    </html>

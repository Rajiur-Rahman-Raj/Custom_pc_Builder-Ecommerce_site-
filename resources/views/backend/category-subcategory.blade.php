@extends('backend.master')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-5">
            <div class="card mt-3">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h5>Add New Category</h5>
                        </div>
                        <div class="col-md-6 text-right">
                            @if(session('cataddmsg'))
                                <p style="color:green;font-size:15px;font-weight:600">{{session('cataddmsg')}}</p>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{url('add/new/category')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-10">
                                <input type="text" name="category_name" class="form-control" placeholder="Category Name" required>
                            </div>
                            <div class="col-md-2">
                                <input type="submit" value="Add" class="btn btn-success rounded">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h5>View All Categories</h5>
                        </div>
                        <div class="col-md-6 text-right">
                            @if(session('catdelmsg'))
                                <p style="color:red;font-size:15px;font-weight:600">{{session('catdelmsg')}}</p>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-hover table-responsive">
                        <thead>
                          <tr>
                            <th scope="col">SL</th>
                            <th scope="col">Category</th>
                            <th scope="col" class="text-center">Time</th>
                            <th scope="col">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                            <?php $sl=1 ?>
                            @foreach ($categories as $category)
                                <tr>
                                    <th scope="row">{{$sl}}</th>
                                    <td>{{$category->category_name}}</td>
                                    <td>{{$category->created_at}}</td>
                                    <td class="text-center">
                                        {{-- <a href="{{url('delete/category')}}/{{$category->id}}" class="btn btn-sm btn-danger rounded"><i class="fas fa-trash-alt"></i></a> --}}
                                    </td>
                                </tr>
                                <?php $sl++ ?>
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
        <div class="col-md-7 border-left">
            <div class="card mt-3">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h5>Add New Sub-Category</h5>
                        </div>
                        <div class="col-md-6 text-right">
                            @if(session('addsubmsg'))
                                <p style="color:green;font-size:15px;font-weight:600">{{session('addsubmsg')}}</p>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{url('add/sub/category')}}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-5">
                                <select name="category_id" class="form-control" required>
                                    <option value="">Select Category</option>
                                    @foreach ($categories as $categories_item)
                                        <option value="{{$categories_item->id}}">{{$categories_item->category_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-5">
                                <input type="text" name="subcategory_name" class="form-control" placeholder="Sub-Category Name">
                            </div>
                            <div class="col-md-2">
                                <input type="submit" value="Add" class="btn btn-success rounded">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h5>View ALL Sub-Category</h5>
                </div>
                <div class="card-body">
                    <table class="table table-hover table-responsive">
                        <thead>
                          <tr>
                            <th scope="col">SL</th>
                            <th scope="col">Category</th>
                            <th scope="col">Sub-Category</th>
                            <th scope="col" class="text-center">Time</th>
                            <th scope="col">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                            <?php $sl=1 ?>
                            @foreach ($sub as $sub_item)
                                <tr>
                                    <th scope="row">{{$sl}}</th>
                                    <td>{{$sub_item->category_name}}</td>
                                    <td>{{$sub_item->subcategory_name}}</td>
                                    <td>{{$sub_item->created_at}}</td>
                                    <td><a href="{{url('delete/category')}}/{{$sub_item->id}}" class="btn btn-sm btn-danger rounded">Delete</a></td>
                                </tr>
                                <?php $sl++ ?>
                            @endforeach
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

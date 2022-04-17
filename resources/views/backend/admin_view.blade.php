@extends('backend.master')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="card mt-3">
                    <div class="card-header text-center bg-info text-white">
                        <h5>Admin List</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-hover">
                            <thead class="thead-dark">
                                <tr>
                                <th scope="col">SL</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Address</th>
                                <th scope="col">Type</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                <form action="{{url('admin/update')}}" method="POST">
                                @csrf
                                <div class="text-right"><input onclick="status()" type="submit" value="Update Status" class="btn-sm btn-success text-white mb-2 text-right"></div>
                                @foreach ($admin_info as $item)
                                <input type="hidden" name="admin_id[]" value="{{$item->id}}">
                                    <tr>
                                        <th scope="row">1</th>
                                        <th><img src="@if($item->image != null){{url($item->image)}}@endif" class="img-fluid"></th>
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->email}}</td>
                                        <td>{{$item->contact}}</td>
                                        <td>{{$item->address}}</td>
                                        <td><input type="text" placeholder="granted/pending" name="type[{{$item->id}}]" class="text-center" value="{{$item->type}}" required></td>
                                        <td><input type="text" placeholder="granted/pending" name="status[{{$item->id}}]" class="text-center" value="{{$item->status}}" required></td>
                                        <td><a onclick="del()" href="{{url('admin/delete')}}/{{$item->id}}" class="btn-sm btn-danger">Delete</a></td>
                                    </tr>
                                @endforeach
                                </form>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>


        <div class="row">
            <div class="col-lg-12">
                <div class="card mt-3">
                    <div class="card-header text-center bg-info text-white">
                        <h5>Customers List</h5>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped table-hover">
                            <thead class="thead-dark">
                                <tr>
                                <th scope="col">SL</th>
                                <th scope="col">Image</th>
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Contact</th>
                                <th scope="col">Address</th>
                                <th scope="col">Type</th>
                                <th scope="col">Status</th>
                                <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                <form action="{{url('admin/update')}}" method="POST">
                                @csrf
                                <div class="text-right"><input onclick="status()" type="submit" value="Update Status" class="btn-sm btn-success text-white mb-2 text-right"></div>
                                @foreach ($customer_info as $item)
                                <input type="hidden" name="admin_id[]" value="{{$item->id}}">
                                    <tr>
                                        <th scope="row">1</th>
                                        <th><img src="@if($item->image != null){{url($item->image)}}@endif" class="img-fluid"></th>
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->email}}</td>
                                        <td>{{$item->contact}}</td>
                                        <td>{{$item->address}}</td>
                                        <td><input type="text" placeholder="granted/pending" name="type[{{$item->id}}]" class="text-center" value="{{$item->type}}" required></td>
                                        <td><input type="text" placeholder="granted/pending" name="status[{{$item->id}}]" class="text-center" value="{{$item->status}}" required></td>
                                        <td><a onclick="del()" href="{{url('admin/delete')}}/{{$item->id}}" class="btn-sm btn-danger">Delete</a></td>
                                    </tr>
                                @endforeach
                                </form>
                            </tbody>
                        </table>

                        {{ $customer_info->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


<script>
    function status() {
        alert("Status Updated");
    }
    function del(){
        alert("Admin Has Successfully Deleted");
    }
</script>

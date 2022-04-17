@extends('backend.master')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-header bg-info text-white rounded">
                    <div class="row">
                        <div class="col-md-6">
                            <h5><i class="fas fa-gamepad"></i> Add New Graphics Card</h5>
                        </div>
                        <div class="col-md-6 text-right">
                            @if(session('msg'))
                                <p style="color:white;font-size:15px;font-weight:500">{{session('msg')}}</p>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <form action="{{url('add/gpu')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-3">
                                <select id="category" name="category_id" class="form-control" required>
                                    <option value="">Select Category</option>
                                    @foreach ($category as $category_item)
                                        <option value="{{$category_item->id}}">{{$category_item->category_name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <select id="subcategory" name="subcategory_id" class="form-control" required>
                                    <option>Select Sub-Category</option>
                                </select>
                            </div>
                            <div class="col-md-2">
                                <input type="text" name="brand" class="form-control" placeholder="Brand Name" required>
                            </div>
                            <div class="col-md-2">
                                    <input type="text" name="price" class="form-control" placeholder="Price" required>
                                </div>
                            <div class="col-md-2">
                                <input type="text" name="stock" class="form-control" placeholder="Stock" required>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-md-5">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Model Name :</label>
                                            <input type="text" name="name" class="form-control" placeholder="Model Name" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Wattage :</label>
                                            <input type="text" name="watt" class="form-control" placeholder="Wattage">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="image">Product Image :</label>
                                            <input type="file" id="image" class="form-control" name="image" onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Image Preview:</label>
                                            <img id="blah" alt="" class="img-fluid">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <div class="form-group">
                                    <label>Description :</label>
                                    <textarea name="details" class="form-control"></textarea>
                                </div>
                                <div class="row mt-5">
                                    <div class="col-md-12 text-center">
                                        <input type="submit" value="Add New" class="btn btn-success rounded mr-3">
                                        <input type="reset" value="Clear All" class="btn btn-danger rounded">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer_js')

<script src="{{url('/')}}/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script src="{{url('/')}}/vendor/unisharp/laravel-ckeditor/adapters/jquery.js"></script>
<script>
    $('textarea').ckeditor();
    // $('.textarea').ckeditor(); // if class is prefered.
</script>


<script>
$(document).ready(function() {
    $('#category').on('change', function() {
    var category = $(this).val();
        if(category) {
        $.ajax({
            url: '/findsubWithcatId/'+category,
            type: "GET",
            data : {"_token":"{{ csrf_token() }}"},
            dataType: "json",
            success:function(data) {
                // console.log(data);
                if(data){
                $('#subcategory').empty();
                $('#subcategory').focus;
                $('#subcategory').append('<option value="">-- Select Name --</option>');
                $.each(data, function(key, value){
                $('select[name="subcategory_id"]').append('<option value="'+ value.id +'">' + value.subcategory_name+ '</option>');
            });
            }else{
            $('#subcategory').empty();
            }
            }
        });
        }else{
        $('#subcategory').empty();
        }
    });
    });
</script>
@endsection

@extends('backend.master')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card mt-3">
                <div class="card-header bg-info text-white rounded">
                    <div class="row">
                        <div class="col-md-4">
                            <h5><i class="fas fa-microchip"></i> View All Processor</h5>
                        </div>
                        <div class="col-md-4 text-center">
                            @if(session('msg'))
                                <p style="color:white;font-size:15px;font-weight:500">{{session('msg')}}</p>
                            @endif
                        </div>
                        <div class="col-md-4 text-right">
                            <input type="text" id="search" name="search" class="form-control rounded" placeholder="Search Processor">
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                          <tr>
                            <th scope="col">SL</th>
                            <th scope="col">Brand</th>
                            <th scope="col">Image</th>
                            <th scope="col">ID</th>
                            <th scope="col">Model</th>
                            <th scope="col">IGPU</th>
                            <th scope="col" class="text-center">Stock</th>
                            <th scope="col" class="text-center">Price</th>
                            <th scope="col" class="text-center"><i class="fas fa-trash-alt"></i></th>
                            <th scope="col" class="text-center"><i class="far fa-edit"></i></th>
                          </tr>
                        </thead>
                        <tbody>
                        <?php $sl = 1 ?>
                        <form action="{{url('processor/price/stock/update')}}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-10">
                                    {{ $processors->links() }}
                                </div>
                                <div class="col-md-2 text-right">
                                    <input type="submit" value="Update ALL" class="btn-sm btn-info rounded text-white mb-2">
                                </div>
                            </div>
                        @foreach ($processors as $processor)
                        <input type="hidden" name="processor_id[]" value="{{$processor->id}}">
                            <tr>
                                <th scope="row">{{$sl}}</th>
                                <td>{{$processor->brand}}</td>
                                <td><img src="{{url($processor->image)}}" style="height:50px;width:60px"></td>
                                <td>{{$processor->id}}</td>
                                <td>{{$processor->name}}</td>
                                <td>{{$processor->graphics}}</td>
                                @if($processor->stock < 3)
                                <td><input min="0" type="number" placeholder="Stock" name="stock[{{$processor->id}}]" class="text-center form-control" value="{{$processor->stock}}" style="color:red;font-weight:500" required></td>
                                @else
                                <td><input min="0" type="number" placeholder="Stock" name="stock[{{$processor->id}}]" class="text-center form-control" value="{{$processor->stock}}" style="color:green;font-weight:500" required></td>
                                @endif
                                <td><input min="0" type="number" placeholder="Price" name="price[{{$processor->id}}]" class="text-center form-control" value="{{$processor->price}}" required></td>
                                <td>
                                    <a href="{{url('delete/processor')}}/{{$processor->id}}" class="btn btn-sm btn-danger rounded"><i class="fas fa-trash-alt"></i></a>
                                </td>
                                <td><a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="{{$processor->id}}" data-original-title="Edit"><i class="far fa-edit"></i></a></td>
                            </tr>
                            <?php $sl++ ?>
                        @endforeach
                        </form>
                        </tbody>
                      </table>
                </div>
            </div>
        </div>
    </div>
</div>

{{--  Modal Start  --}}


<div class="modal fade" id="ajaxModel" aria-hidden="true">

    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title" id="modelHeading"></h4>
            </div>

            <div class="modal-body">

                 <form id="productForm" class="form-horizontal">

                   <input type="hidden" name="modal_id" id="modal_id">

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" id="name_modal" name="name_modal" placeholder="Enter Name" value="" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Price</label>
                        <div class="col-sm-12">
                            <input type="number" class="form-control" id="price_modal" name="price_modal" placeholder="Price" min="0" value="" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Stock</label>
                        <div class="col-sm-12">
                            <input type="number" class="form-control" id="stock_modal" name="stock_modal" placeholder="Stock" min="0" value="" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Socket</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" id="socket_modal" name="socket_modal" placeholder="Socket" value="" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Brand</label>
                        <div class="col-sm-12">
                            <input type="text" class="form-control" id="brand_modal" name="brand_modal" placeholder="Brand Name" value="" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Details</label>
                        <div class="col-sm-12">
                            <textarea id="details_modal" name="details_modal" required="" placeholder="Details" class="form-control"></textarea>
                        </div>
                    </div>

                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary" id="saveBtn">Save Changes</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>

{{--  Modal End  --}}

@endsection


@section('footer_js')

<script src="{{url('/')}}/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
<script src="{{url('/')}}/vendor/unisharp/laravel-ckeditor/adapters/jquery.js"></script>
<script>
    $('textarea').ckeditor();
</script>

<script type="text/javascript">

    $(function () {

      $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
      });

      $('body').on('click', '.editProduct', function () {

        var product_id = $(this).data('id');

        $.get("{{ url('/model/get/processor/data') }}" +'/'+ product_id , function (data) {

            $('#modelHeading').html("Edit Processor Info");
            $('#saveBtn').val("edit-user");
            $('#ajaxModel').modal('show');
            $('#modal_id').val(data.id);
            $('#name_modal').val(data.name);
            $('#brand_modal').val(data.brand);
            $('#details_modal').val(data.details);
            $('#socket_modal').val(data.socket);
            $('#price_modal').val(data.price);
            $('#stock_modal').val(data.stock);

        })

        });

        $('#saveBtn').click(function (e) {

            e.preventDefault();
            $(this).html('Sending..');

            $.ajax({
            data: $('#productForm').serialize(),
            url: "{{ url('/add/processor/from/modal') }}",
            type: "POST",
            dataType: 'json',

            success: function (data) {
                $('#productForm').trigger("reset");
                $('#ajaxModel').modal('hide');
                location.reload(true);

            },

            error: function (data) {

                console.log('Error:', data);
                $('#saveBtn').html('Error');

            }

            });

        });

    });

  </script>


<script type="text/javascript">
    $('#search').on('keyup',function(){
        $value=$(this).val();
        $.ajax({
            type : 'get',
            url : '{{URL::to('search/processor')}}',
            data:{'search':$value},
            success:function(data){
            $('tbody').html(data);
            }
        });
    })
</script>
@endsection

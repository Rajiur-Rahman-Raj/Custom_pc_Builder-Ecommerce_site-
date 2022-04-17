@extends('backend.master')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-7">
                <div class="card mt-3">
                    <div class="card-header bg-info text-white">
                        <div class="row">
                            <div class="col-lg-7">
                                <i class="fas fa-dollar-sign"></i> <b>Sales Details</b>
                            </div>
                            <div class="col-lg-5 text-right">
                                <a href="{{url('print/sales/report')}}" class="btn btn-sm btn-warning rounded"><b>Print ALL Sales PDF</b></a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                              <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Total Amount</th>
                                <th scope="col">Payment Type</th>
                                <th scope="col">Time Period</th>
                              </tr>
                            </thead>
                            <tbody>

                                <?php $earnings=0 ?>

                                @foreach ($sales as $sale)
                                <tr>
                                    <th scope="row">{{$sale->id}}</th>
                                    <td>{{$sale->grand_total}} Taka</td>
                                    <td>{{$sale->payment_type}}</td>
                                    <?php
                                    $newDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $sale->updated_at)->format('d M Y');
                                    ?>
                                    <td>{{$newDate}}</td>
                                </tr>
                                <?php $earnings=$earnings+$sale->grand_total ?>
                                @endforeach

                            </tbody>
                          </table>

                          {{-- {{ $sales->links() }} --}}
                    </div>
                </div>
                <div class="mt-5 text-center">
                    <h2>Total Earning : {{$earnings}} Taka Only</h2>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="card mt-3">
                    <div class="card-header bg-info text-white">
                        <i class="fas fa-search-dollar"></i> <b>Filter for Particular Sales</b>
                    </div>
                    <div class="card-body">
                        <form action="{{url('filter/sales/by/date')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label>From :</label>
                                <input type="date" name="from" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>To :</label>
                                <input type="date" name="to" class="form-control" required>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Filter Sales" class="btn btn-success rounded">
                            </div>
                        </form>
                    </div>
                </div>

                <div class="card mt-3">
                    <div class="card-header bg-info text-white">
                        <i class="fas fa-search-dollar"></i> <b>Filter for Printing PDF</b>
                    </div>
                    <div class="card-body">
                        <form action="{{url('filter/sales/report/by/date/pdf')}}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label>From :</label>
                                <input type="date" name="from" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>To :</label>
                                <input type="date" name="to" class="form-control" required>
                            </div>
                            <div class="mt-4">
                                <input type="submit" value="Print PDF" class="btn btn-warning rounded">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

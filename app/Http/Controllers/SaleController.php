<?php

namespace App\Http\Controllers;
use App\Sale;
use Carbon\Carbon;
use Illuminate\Http\Request;
use PDF;

class SaleController extends Controller
{
    public function salePageView(){
        $sales = Sale::where('payment_status',1)->get();
        return view('backend.sales_view',compact('sales'));
    }
    public function filterSalesByDate(Request $request){
        $from = $request->from." ".date('H:i:s');
        $to = $request->to." ".date('H:i:s');

        $info = Sale::where('payment_status',1)->get();

        $sales = $info->whereBetween('updated_at', [$from,$to]);
        $sales->all();

        return view('backend.sales_view',compact('sales'));
    }
    public function printSalesReport(){

        $info = Sale::where('payment_status',1)->get();

        $pdf = PDF::loadView('backend.sales_report',compact('info'));
        return $pdf->download('sales_report.pdf');
    }
    public function filterSalesReportPDF(Request $request){
        $from = $request->from." ".date('H:i:s');
        $to = $request->to." ".date('H:i:s');

        $info = Sale::where('payment_status',1)->get();

        $sales = $info->whereBetween('updated_at', [$from,$to]);
        $sales->all();

        $pdf = PDF::loadView('backend.sales_report_filter',compact('sales'));
        return $pdf->download('sales_report_filter.pdf');
    }
}

<?php

namespace App\Http\Controllers;

use App\Category;
use App\Processor;
use Carbon\Carbon;
use Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class ProcessorController extends Controller
{
    public function pageView(){

        $category = Category::all();
        return view('backend.add_processor',compact('category'));
    }

    public function addProduct(Request $request){

        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/processor_images/'.$image_name,100));

            Processor::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'socket'         => $request->socket,
                'ram_type'       => $request->ram_type,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'graphics'       => $request->graphics,
                'image'          => 'processor_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);

        }

        else{
            Processor::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'socket'         => $request->socket,
                'ram_type'       => $request->ram_type,
                'details'        => $request->details,
                'price'          => $request->price,
                'graphics'       => $request->graphics,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New Processor has been added');

    }

    public function viewProcessor(){

        $processors = DB::table('processors')
                         ->join('categories','processors.category_id','=','categories.id')
                         ->join('sub_categories','processors.subcategory_id','=','sub_categories.id')
                         ->select('processors.*','categories.category_name','sub_categories.subcategory_name')
                         ->orderBy('id','desc')
                         ->paginate(10);

        return view('backend.view_processor',compact('processors'));
    }

    public function deleteProcessor($id){

        $image_data = Processor::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            Processor::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            Processor::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }

    }

    public function updatePriceStock(Request $request){
        foreach($request->processor_id as $value){
            Processor::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }

    public function searchProcessor(Request $request){
        if($request->ajax())
        {
            $output="";
            $products=DB::table('processors')->where('name','LIKE','%'.$request->search."%")->OrderBy('id','desc')->get();

            if($products)
            {
                $sl = 1;
                foreach ($products as $key => $product) {
                    $output.='<tr>'.
                    '<td>'.$sl.'</td>'.
                    '<td>'.$product->brand.'</td>'.
                    '<td>'.'<img style="width:60px" src="http://127.0.0.1:8000/'.$product->image.'">'.'</td>'.
                    '<td>'.$product->id.'</td>'.
                    '<td>'.$product->name.'</td>'.
                    '<td>'.$product->graphics.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/processor/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }
    }
    public function getDataForModel($id){

        $product = Processor::find($id);
        return response()->json($product);

    }
    public function addDataByModel(Request $request){

        Processor::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'socket'  => $request->socket_modal,
            'details' => $request->details_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }

}

<?php

namespace App\Http\Controllers;

use App\Category;
use App\Ram;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Image;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class RamController extends Controller
{
    public function pageView(){
        $category = Category::all();
        return view('backend.add_ram',compact('category'));
    }

    public function addRam(Request $request){
        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/ram_images/'.$image_name,100));

            Ram::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'bus_speed'      => $request->bus_speed,
                'ram_type'       => $request->ram_type,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'image'          => 'ram_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);
        }

        else{
            Ram::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'bus_speed'      => $request->bus_speed,
                'ram_type'       => $request->ram_type,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New RAM has been added');
    }

    public function viewRam(){

        $rams = DB::table('rams')
                         ->join('categories','rams.category_id','=','categories.id')
                         ->join('sub_categories','rams.subcategory_id','=','sub_categories.id')
                         ->select('rams.*','categories.category_name','sub_categories.subcategory_name')
                         ->orderBy('id','desc')
                         ->paginate(10);

        return view('backend.view_ram',compact('rams'));
    }

    public function deleteRam($id){
        $image_data = Ram::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            Ram::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            Ram::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
    }
    public function updatePriceStock(Request $request){
        foreach($request->ram_id as $value){
            Ram::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }
    public function searchRam(Request $request){

        if($request->ajax())
        {
            $output="";
            $products=DB::table('rams')->where('name','LIKE','%'.$request->search."%")->OrderBy('id','desc')->get();

            if($products)
            {
                $sl = 1;
                foreach ($products as $key => $product) {
                    $output.='<tr>'.
                    '<td>'.$sl.'</td>'.
                    '<td>'.$product->brand.'</td>'.
                    '<td>'.'<img style="width:60px" src="http://127.0.0.1:8000/'.$product->image.'">'.'</td>'.
                    '<td>'.$product->ram_type.'</td>'.
                    '<td>'.$product->id.'</td>'.
                    '<td>'.$product->name.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/ram/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }

    }

    public function getDataForModel($id){
        $product = Ram::find($id);
        return response()->json($product);
    }

    public function addDataByModel(Request $request){
        
        Ram::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'ram_type'=> $request->ram_type_modal,
            'details' => $request->details_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }
}

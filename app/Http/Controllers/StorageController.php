<?php

namespace App\Http\Controllers;

use App\Category;
use App\Storage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Image;
use Illuminate\Support\Str;

class StorageController extends Controller
{
    public function pageView(){
        $category = Category::all();
        $storage_types = DB::table('storage_type')->get();
        return view('backend.add_storage',compact('category','storage_types'));
    }
    public function addStorage(Request $request){
        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/storage_images/'.$image_name,100));

            Storage::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'storage_type'   => $request->storage_type,
                'capacity'       => $request->capacity,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'image'          => 'storage_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);

        }

        else{
            Storage::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'storage_type'   => $request->storage_type,
                'capacity'       => $request->capacity,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New Storage has been added');
    }

    public function viewStorage(){
        $storages = DB::table('storages')
                    ->join('categories','storages.category_id','=','categories.id')
                    ->join('sub_categories','storages.subcategory_id','=','sub_categories.id')
                    ->select('storages.*','categories.category_name','sub_categories.subcategory_name')
                    ->orderBy('id','desc')
                    ->paginate(10);

        return view('backend.view_storage',compact('storages'));
    }

    public function deleteStorage($id){
        $image_data = Storage::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            Storage::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            Storage::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
    }

    public function updatePriceStock(Request $request){
        foreach($request->storage_id as $value){
            Storage::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }
    public function searchStorage(Request $request){
        if($request->ajax())
        {
            $output="";
            $products=DB::table('storages')->where('name','LIKE','%'.$request->search."%")->OrderBy('id','desc')->get();

            if($products)
            {
                $sl = 1;
                foreach ($products as $key => $product) {
                    $output.='<tr>'.
                    '<td>'.$sl.'</td>'.
                    '<td>'.$product->brand.'</td>'.
                    '<td>'.'<img style="width:60px" src="http://127.0.0.1:8000/'.$product->image.'">'.'</td>'.
                    '<td>'.$product->capacity.'</td>'.
                    '<td>'.$product->id.'</td>'.
                    '<td>'.$product->name.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/storage/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }
    }

    public function getDataForModel($id){
        $product = Storage::find($id);
        return response()->json($product);
    }

    public function addDataByModel(Request $request){
        
        Storage::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'capacity'  => $request->capacity_modal,
            'details' => $request->details_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }
}

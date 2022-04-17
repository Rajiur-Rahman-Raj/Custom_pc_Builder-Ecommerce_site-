<?php

namespace App\Http\Controllers;

use App\Category;
use App\GraphicsCard;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Image;
use Illuminate\Support\Str;

class GraphicsCardController extends Controller
{
    public function pageView(){
        $category = Category::all();
        return view('backend.add_gpu',compact('category'));
    }
    public function addGPU(Request $request){
        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/gpu_images/'.$image_name,100));

            GraphicsCard::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'watt'           => $request->watt,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'image'          => 'gpu_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);

        }

        else{
            GraphicsCard::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'watt'           => $request->watt,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New GPU has been added');
    }
    public function viewGPU(){
        $gpus = DB::table('graphics_cards')
                ->join('categories','graphics_cards.category_id','=','categories.id')
                ->join('sub_categories','graphics_cards.subcategory_id','=','sub_categories.id')
                ->select('graphics_cards.*','categories.category_name','sub_categories.subcategory_name')
                ->orderBy('id','desc')
                ->paginate(10);

        return view('backend.view_gpu',compact('gpus'));
    }
    public function deleteGPU($id){
        $image_data = GraphicsCard::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            GraphicsCard::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            GraphicsCard::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
    }
    public function updatePriceStock(Request $request){
        foreach($request->gpu_id as $value){
            GraphicsCard::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }
    public function searchGPU(Request $request){
        if($request->ajax())
        {
            $output="";

            $products=DB::table('graphics_cards')
                            ->where('graphics_cards.name','LIKE','%'.$request->search."%")
                            ->OrderBy('id','desc')
                            ->get();

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
                    '<td>'.$product->watt.' watt'.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/gpu/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }
    }
    public function getDataForModel($id){
        $product = GraphicsCard::find($id);
        return response()->json($product);
    }
    public function addDataByModel(Request $request){
        GraphicsCard::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'details' => $request->details_modal,
            'watt'    => $request->watt_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }
}

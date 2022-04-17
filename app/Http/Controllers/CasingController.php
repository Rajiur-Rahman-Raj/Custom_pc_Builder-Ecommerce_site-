<?php

namespace App\Http\Controllers;

use App\Casing;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Image;
use Illuminate\Support\Str;

class CasingController extends Controller
{
    public function pageView(){
        $category = Category::all();
        $form_factors = DB::table('form_factor')->get();
        return view('backend.add_casing',compact('category','form_factors'));
    }

    public function addCasing(Request $request){
        if($request->hasFile('image')){

            $get_image = $request->file('image');
            $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
            Image::make($get_image)->resize(800,800)->save(base_path('public/casing_images/'.$image_name,100));

            Casing::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'form_factor'    => $request->form_factor,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'image'          => 'casing_images/'.$image_name,
                'created_at'     => Carbon::now(),
            ]);

        }

        else{
            Casing::insert([
                'category_id'    => $request->category_id,
                'subcategory_id' => $request->subcategory_id,
                'name'           => $request->name,
                'brand'          => $request->brand,
                'form_factor'    => $request->form_factor,
                'details'        => $request->details,
                'price'          => $request->price,
                'stock'          => $request->stock,
                'created_at'     => Carbon::now(),
            ]);
        }

        return back()->with('msg','A New Casing has been added');
    }

    public function viewCasing(){
        $casings = DB::table('casings')
                        ->join('categories','casings.category_id','=','categories.id')
                        ->join('sub_categories','casings.subcategory_id','=','sub_categories.id')
                        ->join('form_factor','casings.form_factor','=','form_factor.id')
                        ->select('casings.*','categories.category_name','sub_categories.subcategory_name','form_factor.name as form_factor_name')
                        ->orderBy('id','desc')
                        ->paginate(10);

        return view('backend.view_casing',compact('casings'));
    }

    public function deleteCasing($id){
        $image_data = Casing::findOrfail($id)->image;

        if($image_data != null){
            unlink(base_path('public/'.$image_data));
            Casing::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
        else{
            Casing::findOrFail($id)->delete();
            return back()->with('msg','Item has been Deleted');
        }
    }
    public function updatePriceStock(Request $request){
        foreach($request->casing_id as $value){
            Casing::findOrFail($value)->update([
                'stock' => $request->stock[$value],
                'price' => $request->price[$value],
            ]);
        }
        return back()->with('msg','Information Updated');
    }

    public function searchCasing(Request $request){
        if($request->ajax())
        {
            $output="";

            $products=DB::table('casings')
                            ->join('form_factor','casings.form_factor','=','form_factor.id')
                            ->where('casings.name','LIKE','%'.$request->search."%")
                            ->select('casings.*','form_factor.name as form_factor_name')
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
                    '<td>'.$product->form_factor_name.'</td>'.
                    '<td>'.$product->stock.'</td>'.
                    '<td>'.$product->price.'</td>'.
                    '<td>'.'<a class="btn btn-sm btn-danger rounded mb-1" href="/delete/casing/'.$product->id.'">'.'Delete'.'</a>'.'</td>'.
                    '<td>'.'<a class="edit btn btn-warning btn-sm editProduct rounded" href="javascript:void(0)" data-toggle="tooltip" data-id="'.$product->id.'" data-original-title="Edit">'.'Edit'.'</a>'.'</td>'.
                    '</tr>';

                    $sl++;
                }
                return Response($output);
            }
        }
    }

    public function getDataForModel($id){
        $product = Casing::find($id);
        return response()->json($product);
    }

    public function addDataByModel(Request $request){
        Casing::findOrFail($request->modal_id)->update([
            'name'    => $request->name_modal,
            'brand'   => $request->brand_modal,
            'details' => $request->details_modal,
            'price'   => $request->price_modal,
            'stock'   => $request->stock_modal,
        ]);

        return response()->json(['success'=>'Product saved successfully.']);
    }
}

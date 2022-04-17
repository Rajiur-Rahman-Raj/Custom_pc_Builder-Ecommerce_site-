<?php

namespace App\Http\Controllers;

use App\User;
use Image;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use App\Processor;
use App\MotherBoard;
use App\Ram;
use App\GraphicsCard;
use App\PowerSupply;
use App\Storage;
use PDF;

class BackendController extends Controller
{
    public function profileView(){
        $id = User::where('id', Auth::user()->id)->first();
        return view('backend.profile_view',compact('id'));
    }

    public function profileUpdate($id){
        $match = Auth::user()->id;
        if($id == $match){
            $info = User::findOrFail($id);
            return view('backend.profile_update', compact('info'));
        }
        else{
            return redirect('404');
        }
    }

    public function profileEdit(Request $request){
        $this->validate($request,['name'=>'required','contact'=>'required','address'=>'required'],[
            'name.required' => 'Please Type Your Name',
            'contact.required' => 'Enter Your Contact Number',
            'address.required' => 'Enter Your Address',
        ]);
        if($request->hasFile('image')){
            $old_image = User::findOrFail($request->id)->image;
            if($old_image == null){
                $get_image = $request->file('image');
                $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
                Image::make($get_image)->resize(400,400)->save(base_path('public/admin_images/'.$image_name,100));

                User::findOrFail($request->id)->update([
                    'name' => $request->name,
                    'contact' => $request->contact,
                    'address' => $request->address,
                    'image' => 'admin_images/'.$image_name,
                ]);
            }
            else{
                unlink(base_path('public/'.$old_image));
                $get_image = $request->file('image');
                $image_name = str::random(5).'.'.$get_image->getClientOriginalExtension();
                Image::make($get_image)->resize(400,400)->save(base_path('public/admin_images/'.$image_name,100));

                User::findOrFail($request->id)->update([
                    'name' => $request->name,
                    'contact' => $request->contact,
                    'address' => $request->address,
                    'image' => 'admin_images/'.$image_name,
                ]);
            }
        }
        else{
            $old_image = User::findOrFail($request->id)->image;
            if(base_path('public/'.$old_image)){
                unlink(base_path('public/'.$old_image));
            }
            User::findOrFail($request->id)->update([
                'name' => $request->name,
                'contact' => $request->contact,
                'address' => $request->address,
                'image' => $request->image,
            ]);
        }
        return back()->with('msg', "Information Updated, Go to your profile");
    }
    public function adminView(){
        $admin_info = User::orderBy('id', 'desc')->where('type', 'admin')->get();
        $customer_info = User::orderBy('id','desc')->where('type','customer')->paginate(15);

        return view('backend.admin_view', compact('admin_info','customer_info'));
    }
    public function adminUpdate(Request $req){
        foreach($req->admin_id as $value){
            User::findOrFail($value)->update([
                'type' => $req->type[$value],
                'status' => $req->status[$value],
            ]);
        }
        return back();
    }
    public function adminDelete($id){

        $image = User::findOrFail($id)->image;
        if($image == null){
            $info = User::findOrFail($id)->delete();
            return back();
        }
        else{
            unlink(base_path('public/'.$image));
            $info = User::findOrFail($id)->delete();
            return back();
        }
    }
    public function stockReportGenerate(){
        $processors = Processor::all();
        $mother_boards = MotherBoard::all();
        $rams = Ram::all();
        $graphics_cards = GraphicsCard::all();
        $power_supplies = PowerSupply::all();
        $storages = Storage::all();

        $pdf = PDF::loadView('backend.stock_report',compact('processors','mother_boards','rams','graphics_cards','power_supplies','storages'));
        return $pdf->download('stock_report.pdf');
    }
}

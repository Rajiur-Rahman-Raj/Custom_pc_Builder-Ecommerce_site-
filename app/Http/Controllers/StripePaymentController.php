<?php


namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Session;
use Stripe;
use App\Sale;
use App\Mail\OrderMail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class StripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */

    public function stripe()
    {
        $total = session('total');
        return view('frontend.stripe',compact('total'));
    }

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */

    public function stripePost(Request $request)
    {
        $total = session('total');
        $sale_id = session('sale_id');

        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
            "amount" => $total * 100,
            "currency" => "usd",
            "source" => $request->stripeToken,
            "description" => "Test payment from itsolutionstuff.com."
        ]);

        $data = DB::table('billings')
                    ->where('sale_id', $sale_id)
                    ->get();

        $email = Auth::user()->email;
        Mail::to($email)->send(new OrderMail($data));


        Sale::where('id',$sale_id)->update([
            'payment_status' => 1,
            'payment_type'   => 'Stripe',
        ]);

        Session::flash('success', 'Payment successful!');

        return view('frontend.order-complete');
        return back();
    }

}

<html>
    <body>
        <div style="text-align:center;margin-bottom:20px;">
            <h2>Custom PC Builder</h2>
        </div>
        <div style="margin-bottom:5px">
            <h3>Order ID : {{$sale_id}}</h3>
        </div>
        <div style="margin-bottom:5px">
            <h4><u>Shipping Information :</u></h4>
            <p><b>Name : </b> {{$shipping_address->name}}</p>
            <p><b>Phone : </b> {{$shipping_address->phone}}</p>
            <p><b>Divisions : </b> {{$shipping_address->division_name}}</p>
            <p><b>Districts : </b> {{$shipping_address->district_name}}</p>
            <p><b>Area : </b> {{$shipping_address->area_name}}</p>
        </div>

        <div>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Quantity</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $subtotal = 0;
                        $delivery = 60;
                    ?>
                    @foreach ($order_info as $item)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->quantity}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->price}} /=</td>
                        </tr>
                        <?php $subtotal = $subtotal+($item->price*$item->quantity) ?>
                    @endforeach
                </tbody>
            </table>
            <br>
                <h4>Delivery Charge = 60 Taka</h4>
                <h4>Total Amount to be paid = {{$subtotal+60}} Taka</h4>
                <br>
                <h5>Thank You</h5>
        </div>
    </body>
</html>

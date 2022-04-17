<h2>Order Information :</h2>
<h3>Order ID : {{$order[0]->sale_id}}</h3>
<table style="padding:10px;border:1px solid black">
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
    @foreach ($order as $item)
        <tr style="padding:5px;border:1px solid black">
            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->name}}</td>
            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->quantity}}</td>
            <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->price}} /=</td>
        </tr>
        <?php $subtotal = $subtotal+($item->price*$item->quantity) ?>
    @endforeach
    <br>
    <h4>Delivery Charge = 60 Taka</h4>
    <h4>Total Amount to be paid = {{$subtotal+60}} Taka</h4>
    <br><br>
    <h5>Thank You</h5>
</tbody>
</table>

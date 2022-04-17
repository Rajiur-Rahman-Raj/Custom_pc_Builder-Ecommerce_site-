<html>
<body>

    <?php
        $subtotal = 0;
    ?>

    <div style="text-align:center;margin-bottom:20px;">
        <h2>Sales Report</h2>
    </div>

    <div>
        <table>
            <thead>
                <tr style="padding:5px;border:1px solid black">
                    <th style="padding:5px;border:1px solid black"><b>ID</b></th>
                    <th style="padding:5px;border:1px solid black"><b>Total Amount</b></th>
                    <th style="padding:5px;border:1px solid black"><b>Payment Type</b></th>
                    <th style="padding:5px;border:1px solid black"><b>Time Period</b></th>
                </tr>
            </thead>
            <tbody>
                @foreach ($sales as $item)
                    <tr style="padding:5px;border:1px solid black">
                        <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->id}}</td>
                        <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->grand_total}} Taka</td>
                        <td style="padding:5px;border:1px solid black;text-slign:center">{{$item->payment_type}}</td>
                        <?php
                        $newDate = Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $item->updated_at)->format('d M Y');
                        ?>
                        <td style="padding:5px;border:1px solid black;text-slign:center">{{$newDate}}</td>
                    </tr>
                    <?php $subtotal = $subtotal+$item->grand_total ?>
                @endforeach
            </tbody>
        </table>
    </div>

    <h3>Total Earning: {{$subtotal}} Taka Only</h3>

</body>
</html>

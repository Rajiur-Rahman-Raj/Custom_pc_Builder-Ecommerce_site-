<html>
    <body>
        <div style="text-align:center;margin-bottom:20px;">
            <h2>Custom PC Builder</h2>
        </div>

        <div style="margin-bottom:10px">
            <h3>Processors</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($processors as $processor)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$processor->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$processor->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$processor->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div style="margin-bottom:10px">
            <h3>MotherBoards</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($mother_boards as $mother_board)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$mother_board->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$mother_board->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$mother_board->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div style="margin-bottom:10px">
            <h3>RAM's</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($rams as $ram)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$ram->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$ram->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$ram->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div style="margin-bottom:10px">
            <h3>Graphics Card</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($graphics_cards as $graphics_card)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$graphics_card->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$graphics_card->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$graphics_card->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div style="margin-bottom:10px">
            <h3>Power Supply</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($power_supplies as $power_supply)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$power_supply->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$power_supply->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$power_supply->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div style="margin-bottom:10px">
            <h3>Storages</h3>
            <table>
                <thead>
                    <tr style="padding:5px;border:1px solid black">
                        <th style="padding:5px;border:1px solid black"><b>Name</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Stock</b></th>
                        <th style="padding:5px;border:1px solid black"><b>Price</b></th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($storages as $storage)
                        <tr style="padding:5px;border:1px solid black">
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$storage->name}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$storage->stock}}</td>
                            <td style="padding:5px;border:1px solid black;text-slign:center">{{$storage->price}} /=</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

    </body>
</html>

<?php

namespace App\Http\Controllers;

use App\Models\Item;
use Illuminate\Http\Request;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $url = env("APP_URL", "http://127.0.0.1") . ":" . env("APP_PORT", "8000");

        // dd($request->all());
        $item = new Item();
        $item->name = $request->name;
        $item->description = $request->description;
        $item->price = $request->price;
        $item->category_id = $request->category_id;
        $item->qty = $request->qty;
        $photos = $request->photo;

        $photoPaths = [];

        foreach ($photos as $key => $photo) {
            $path = $photo->store("/");
            array_push($photoPaths, $path);
        };

        $jsonEncodedPath = json_encode($photoPaths);

        if ($jsonEncodedPath) {
            $item->photos = $jsonEncodedPath;
        }

        $item->save();

        $photoFileNames = json_decode($item->photos);
        $photoUrls = [];

        foreach ($photoFileNames as $key => $eachphotoFileNames) {
            array_push($photoUrls, $eachphotoFileNames);
        }
        return [
            'id' => $item->id,
            'name' => $item->name,
            'description' => $item->description,
            'price' => $item->price,
            'qty' => $item->qty,
            'category_id' => $item->category_id,
            'photos' => array(
                $url . "/photos/" . $photoUrls[0],
                $url . "/photos/" . $photoUrls[1]
            ),

        ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function show(Item $item)
    {
        $result = $item->all();
        
        return $result;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Item $item)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Item  $item
     * @return \Illuminate\Http\Response
     */
    public function destroy(Item $item)
    {
        //
    }

    public function FindItem($id)
    {
        $itemList = Item::find($id);
        return $itemList;
    }
}

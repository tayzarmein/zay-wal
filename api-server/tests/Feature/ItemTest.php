<?php

namespace Tests\Feature;

use App\Models\Category;
use App\Models\Item;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Tests\TestCase;

class ItemTest extends TestCase
{
    use RefreshDatabase;
    /**
     * Admin can create an item.
     *
     * @return void
     */
    public function testCreateItem()
    {
        $this->withoutExceptionHandling();

        $url = env("APP_URL", "http://127.0.0.1") . ":" . env("APP_PORT", "8000");

        //create a category
        $someCategoryData = [
            'name' => 'category1',
            'description' => 'description'
        ];

        $category =  Category::create($someCategoryData);

        Storage::fake('local');

        $photo1 = UploadedFile::fake()->image('photo1.jpg', 50, 50);
        $photo2 = UploadedFile::fake()->image('photo2.jpg', 50, 50);

        $photo1HashName = $photo1->hashName();
        $photo2HashName = $photo2->hashName();

        $postData = [
            'name' => 'Apple',
            'description' => 'Apple Fruit',
            'price' => 250,
            'qty' => 10,
            'category_id' => $category->id,
            'photo' => [
                $photo1,
                $photo2,
            ],
        ];

        $response = $this->postJson('/api/items', $postData);

        $this->assertDatabaseHas('items', [
            'name' => 'Apple',
            'description' => 'Apple Fruit',
            'price' => 250,
            'qty' => 10,
            'category_id' => $category->id,
            'photos' => json_encode([$photo1HashName, $photo2HashName]),
        ]);
        $this->assertDatabaseCount('items', 1);
        $response->assertStatus(200);
        $response->assertJson([
            'name' => 'Apple',
            'description' => 'Apple Fruit',
            'price' => 250,
            'qty' => 10,
            'category_id' => $category->id,
            'photos' => [
                $url . "/photos/" . $photo1HashName,
                $url . "/photos/" . $photo2HashName
            ],
        ]);
    }

    public function testGetItem()
    {
        Storage::fake('local');
        
        $photo1 = UploadedFile::fake()->image('photo1');
        $photo2 = UploadedFile::fake()->image('photo2');
        $path1 = $photo1->store('local');
        $path2 = $photo2->store('local');

        $paths = [];
        array_push($paths, $path1, $path2);
        
        $someCategoryData = [
            'name' => 'Category2',
            'description' => 'Category2 Description'
        ];

        $category = Category::create($someCategoryData);
        $someItemData = [
            'name' => 'Item1',
            'description' => 'Item1 Description',
            'price' => 200,
            'category_id' => $category->id,
            'photos' => $paths[1],
        ];

        $item = Item::create($someItemData);
        
        $getresponse = $this->getJson('/api/items');
        // dd($getresponse);
        $getresponse->assertStatus(200);
        $getresponse->assertJsonFragment($item->toArray());
        $getresponse->assertJsonStructure([['name','description','price','photos', 'category_id']]);
    }

    /**
     * Admin can check an item detail.
     *
     * @return void
     */
    public function testGetItemDetail()
    {   
        Storage::fake('local');
        $itemPhoto = UploadedFile::fake()->image('fish_photo');

        $someCategoryData = [
            'name' => 'Category2',
            'description' => 'Category2 Description'
        ];
        $category = Category::create($someCategoryData);

        // add sample data
        $item = new Item();
        $item->name = "fish";
        $item->description = "fresh fish";
        $item->price = "2000";
        $item->category_id = $category->id;
        $item->photos = $itemPhoto->store('local');
        $item->save();

        $itemArray = $item->toArray();
        
        //test
        $testResponse = $this->get('/api/items/' . $itemArray["id"]);
        
        $testResponse->assertStatus(200);
        $testResponse->assertJson($itemArray);
        $testResponse->assertJsonStructure(['name','description','price','photos']);
        
    }

    public function testUpdateItem()
    {
        
    }
}

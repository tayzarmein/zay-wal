<?php

namespace Tests\Feature;

use App\Models\Category;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
use Tests\TestCase;

class CategoryTest extends TestCase
{
    use RefreshDatabase;
    /**
     * Admin can create a category.
     *
     * @return void
     */
    public function testCreateCategory()
    {
        $postData = [
            'name' => 'category1',
            'description' => 'description',
        ];

        $testResponse = $this->postJson('api/categories', $postData);

        $testResponse->assertStatus(201);
        $this->assertDatabaseHas('categories', $postData);
        $testResponse->assertJsonStructure([
            'id',
            'name',
            'description',
        ]);
        $testResponse->assertJson($postData);
    }

    public function testGetCategory()
    {
        $categoryData = [
            'name' => 'category2',
            'description' => 'category2 description'
        ];

        Category::create($categoryData);

        $testResponse = $this->getJson('api/categories');
        $testResponse->assertStatus(200);
        $this->assertDatabaseHas('categories', $categoryData);
    }

    public function testUpdateCategory()
    {
        //setup
        $initialCategoryData = [
            'name' => 'category3',
            'description' => 'category3 description'
        ];
        $initialCategory = Category::create($initialCategoryData);

        //operations
        $dataToBeUpdated = [
            'name' => 'changed',
            'description' => 'changed',
        ];

        $testResponse = $this->putJson("api/categories/" . $initialCategory->id, $dataToBeUpdated);

        //assertions

        $testResponse->assertStatus(200);
        $this->assertDatabaseHas('categories', $dataToBeUpdated);

    }
}

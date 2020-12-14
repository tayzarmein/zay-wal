<?php

namespace Tests\Feature;

use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithFaker;
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
        $data = [
            'name' => 'Apple',
            'description' => 'Apple Fruit',
            'price' => 22.5
        ];

        $response = $this->postJson('/api/items', $data);

        $response->assertStatus(201);
        $response->assertJson([
            'name' => 'Apple',
            'description' => 'Apple Fruit',
            'price' => 22.5
        ]);
    }
}

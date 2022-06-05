<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class productSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('product')->insert([
            'categories_id'=>'2',
            'name'=>'Boys Graphic Print Hosiery TShirt',
            'mrp'=>'425',
            'price'=>'400',
            'qty'=>('10'),
            'image'=>('417562076_gallery-2B.jpg'),
            'short_desc'=>('Shirt'),
            'description'=>("Give your summer wardrobe a style upgrade with the HRX Boys Active T'Shirt. Team it with a pair of shorts for your morning workout or a denim for an evening out wioth the guys."),
            'meta_title'=>('Shirt'),
            'meta_desc'=>('Shirt'),
            'meta_keyword'=>('Shirt'),
            'status'=>('1'),


        ]);
    }
}

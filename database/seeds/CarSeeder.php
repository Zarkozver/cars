<?php

use Illuminate\Database\Seeder;
Use App\Brand;
class CarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('cars')->insert([
            'name'=>Str::random(10),
            'brand_id'=>rand(1,Brand::all()->count()),
            'price'=>rand(1000,3000),
            'year'=>rand(2000,2020),
            'photo'=>'http://lorempixel.com/400/200/transport/'.rand(1,10)
        ]);
        
    }
}

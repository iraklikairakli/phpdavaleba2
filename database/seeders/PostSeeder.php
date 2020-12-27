<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use Illuminate\Support\Facades\DB;


class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        foreach(range(1,10) as $index)
        {
            DB::table('posts')->insert([
                'title' => $faker->title,
                'text' => $faker->text,
                'is_approved' => $faker->boolean()
            ]);
        }
    }
}

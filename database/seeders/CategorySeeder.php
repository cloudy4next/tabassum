<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
        ['category' => 'Itel'],
        ['category' => 'Tecno'],
        ['category' => 'Marcel'],
        ['category' => 'Polar'],
        ['category' => 'Grameenphone'],
        ['category' => 'Lovello'],
        ];

        foreach ($permissions as $permission) {
        DB::table('categories')->insert([
        [
        'category' => $permission['category'],
        'created_at' => date('Y-m-d H:i:s'),
        'updated_at' => date('Y-m-d H:i:s')
        ]
        ]);
        }
    }
}
s

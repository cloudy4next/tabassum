<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use App\Models\User;
use Spatie\Permission\Models\Permission;
class UserPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        DB::table('permissions')->truncate();
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
        $permissions = [
        ['name' => 'Dashboard'],
        ['name' => 'Dashboard Gp'],
        ['name' => 'Dashboard mobile'],
        ['name' => 'Dashboard polar'],
        ['name' => 'Dashboard lovello'],
        ['name' => 'Profit'],
        ['name' => 'Profit store'],
        ['name' => 'Profit edit'],
        ['name' => 'profit delete'],
        ['name' => 'investment'],
        ['name' => 'investment store'],
        ['name' => 'investment edit'],
        ['name' => 'investment delete'],
        ['name' => 'Expense'],
        ['name' => 'Expense edit'],
        ['name' => 'Expense delete'],
        ['name' => 'Expense store'],
        ['name' => 'Category'],
        ['name' => 'Category store'],
        ['name' => 'Category edit'],
        ['name' => 'Category delete'],
        ['name' => 'Permission model'],
        ['name' => 'Mobile'],
        ['name' => 'GP'],
        ['name' => 'Polar'],

        ];

        foreach ($permissions as $permission) {
        DB::table('permissions')->insert([
        [
        'name' => $permission['name'],
        'guard_name' => 'web',
        'created_at' => date('Y-m-d H:i:s'),
        'updated_at' => date('Y-m-d H:i:s')
        ]
        ]);
        }
        $user = User::create([
        'name' => 'jahangir',
        'email' => 'jahangir7200@live.com',
        'password' => bcrypt('123123'),
        ]);

        Role::create(["name" => "Super admin"])->givePermissionTo(Permission::all());
        $user->assignRole('Super admin');
    }
}

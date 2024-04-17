<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        DB::table('users')->insert([
            'id' => '2',
            'name' => 'Test User',
            'email' => 'test@example.com',
            'email_verified_at' => '2023-04-22 12:04:55',
            'password' => Hash::make('123456'),
            'remember_token' => '123456'
        ]);
        DB::table('KhachHang')->insert([
            'ID' => '4',
            'HoTen' => 'Dong Van Cong',
            'DiaChi' => 'Hung Yen',
            'Email' => 'dongvancong24@gmail.com',
            'SoDT' => '0334624356',
            'TaiKhoan' => 'vancong2002',
            'MatKhau' => '123456'
        ]);
    }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeders extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('signup')->insert([
            'FullName'=>'ABCDEFBanerjee',
            'UserName'=>'abcad37',
            'Number'=>'6289656669',
            'Email'=>'abcd@gmail.com',
            'Password'=>Hash::make('123456789'),
            'CPassword'=>Hash::make('123456789')

        ]);
    }

    // public function run()
    // {
    //     DB::table('signup')->insert([
    //         'FullName'=>'AbcdD',
    //         'UserName'=>'avb77',
    //         'Number'=>'6289556669',
    //         'Email'=>'abcd@gmail.com',
    //         'Password'=>Hash::make('123456789'),
    //         'CPassword'=>Hash::make('123456789')

    //     ]);
    // }
}

<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UsuarioSeeder extends Seeder
{
    
    public function run(): void
    {
        User::create(
        [
            'name' => 'Marcio',
            'email' => 'marcio@gmail.com',            
            'password' => Hash::make('senha123'),
        ]
        );
    }
}

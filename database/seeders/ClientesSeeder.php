<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Cliente;

class ClientesSeeder extends Seeder
{
    
    public function run(): void
    {
        Cliente::create([
            'nome' => 'Márcio Dutra',
            'email' => 'marcio@gmail.com',
            'endereco' => 'Cel Genuino, 342',
            'logradouro' => 'Porto Alegre',
            'cep' => '90010-350',
            'bairro' => 'Centro',
        ]
        );

        Cliente::create([
            'nome' => 'Yasmin Dutra',
            'email' => 'yasmin@gmail.com',
            'endereco' => 'Rua dos maias, 541',
            'logradouro' => 'Porto Alegre',
            'cep' => '90050-254',
            'bairro' => 'Parque dos Mayas',
        ]
        );
    }
}

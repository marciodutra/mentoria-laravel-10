<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Venda;

class VendasSeeder extends Seeder
{
    
    public function run(): void
    {
        Venda::create([
            'numero_da_venda' => 1,
            'produto_id' => 2,
            'cliente_id' => 1,
        ]
        );

       Venda::create([
            'numero_da_venda' => 1,
            'produto_id' => 2,
            'cliente_id' => 1,
        ]
        );
    
    }
}

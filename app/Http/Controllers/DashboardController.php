<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index() {

        $totalDeProdutoCadastrado = $this->buscaTotalProdutoCadastrado();

        return view('pages.dashboard.dashboard');
    }

    public function buscaTotalProdutoCadastrado() {
        
    }
}

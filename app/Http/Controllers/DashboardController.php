<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produto;
use App\Models\Cliente;
use App\Models\Venda;
use App\Models\Usuario;


class DashboardController extends Controller
{
    public function index() {

        $totalDeProdutoCadastrado = $this->buscaTotalProdutoCadastrado();
        $totalDeClienteCadastrado = $this->buscaTotalClienteCadastrado();
        $totalDeVendaCadastrado = $this->buscaTotalVendaCadastrado();
        // $totalDeUsuarioCadastrado = $this->buscaTotalUsuarioCadastrado();

         return view('pages.dashboard.dashboard', compact('totalDeProdutoCadastrado', 'totalDeClienteCadastrado', 'totalDeVendaCadastrado'));
    }

    public function buscaTotalProdutoCadastrado() {
        $findProduto = Produto::all()->count();

        return $findProduto;
    }

    public function buscaTotalClienteCadastrado() {
        $findCliente = Cliente::all()->count();

        return $findCliente;
    }

    public function buscaTotalVendaCadastrado() {
        $findVenda = Venda::all()->count();

        return $findVenda;
    }

    // public function buscaTotalUsuarioCadastrado() {
    //     $findUsuario = Usuario::all()->count();

    //     return $findUsuario;
    // }
}

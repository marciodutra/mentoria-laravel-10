<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produto;

class ProdutosController extends Controller
{
    public function index() {
        $findProduto = Produto::all();
        
        return view('pages.produtos.paginacao', compact('findProduto'));
    }
}

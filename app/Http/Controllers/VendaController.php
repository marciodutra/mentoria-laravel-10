<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Http\Requests\FormRequestVenda;
use App\Models\Venda;
use App\Models\Cliente;
use App\Models\Produto;

class VendaController extends Controller
{
    public function __construct(Venda $venda)
    {
       $this->venda = $venda; 
    }

    public function index(Request $request) {
        $pesquisar = $request->pesquisar;
        $findVendas = $this->venda->getVendasPesquisarIndex(search: $pesquisar ?? '');
        
        return view('pages.vendas.paginacao', compact('findVendas'));
    }

    public function delete(Request $request) 
    {
        $id = $request->id;
        $buscaRegistro = Venda::find($id);
        $buscaRegistro->delete();
        return response()->json(['success'=>true]);
    }

    public function cadastrarVenda(FormRequestVenda $request) 
    {
        
        if($request->method() == "POST") {
            //cria os dados
            $data = $request->all();
            
            Venda::create($data);

            Toastr::success('Gravado com sucesso!');
            return redirect()->route('vendas.index');
        }

        return view('pages.vendas.create');
    }

    public function atualizarVenda(FormRequestVenda $request, $id) 
    {
}
}
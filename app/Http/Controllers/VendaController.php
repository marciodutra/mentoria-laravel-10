<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use App\Http\Requests\FormRequestVenda;
use App\Models\Venda;
use App\Models\Cliente;
use App\Models\Produto;
use App\Http\Controllers\cadastrarVendas;
use Illuminate\Support\facades\Mail;
use App\Mail\ComprovanteDeVendaEmail;

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
    

    public function cadastrarVendas(FormRequestVenda $request) 
    {
        $findNumeracao = Venda::max('numero_da_venda')+1;
        $findProduto = Produto::all();
        $findCliente = Cliente::all();

        if($request->method() == "POST") {
            //cria os dados
            $data = $request->all();
            $data['numero_da_venda'] = $findNumeracao;
            
            Venda::create($data);

            Toastr::success('Gravado com sucesso!');
            return redirect()->route('vendas.index');
        }

                
        return view('pages.vendas.create', compact('findNumeracao', 'findProduto', 'findCliente'));
    }

    public function enviaComprovantePorEmail($id) 
    {
        $buscaVenda = Venda::where('id', '=', $id)->first();
        $produtoNome = $buscaVenda->produto->nome;
        $clienteEmail = $buscaVenda->cliente->email;
        $clienteNome = $buscaVenda->cliente->nome;
        $sendMailData = [
            'produtoNome' => $produtoNome,
            'clienteNome' => $clienteNome,
        ];

        Mail::to($clienteEmail)->send(new ComprovanteDeVendaEmail($sendMailData));

        Toastr::success('Enviado com sucesso!');
            return redirect()->route('vendas.index');

    }
    
}
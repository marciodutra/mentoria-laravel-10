<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cliente;
use Brian2694\Toastr\Facades\Toastr;
use App\Models\Componentes;
use App\Http\Requests\FormRequestClientes;

class ClientesController extends Controller
{
    public function __construct(Cliente $cliente)
    {
       $this->cliente = $cliente; 
    }

    public function index(Request $request) {
        $pesquisar = $request->pesquisar;
        $findCliente = $this->cliente->getClientesPesquisarIndex(search: $pesquisar ?? '');
        
        return view('pages.clientes.paginacao', compact('findCliente'));
    }

    public function delete(Request $request) 
    {
        $id = $request->id;
        $buscaRegistro = Cliente::find($id);
        $buscaRegistro->delete();
        return response()->json(['success'=>true]);
    }

    public function cadastrarCliente(FormRequestClientes $request)
    {
        
        if($request->method() == "POST") {
            //cria os dados
            $data = $request->all();
                        
            Cliente::create($data);

            Toastr::success('Gravado com sucesso!');
            return redirect()->route('clientes.index');
        }

        return view('pages.clientes.create');
    }

    public function atualizarCliente(FormRequestClientes $request, $id) 
    {
        
        if($request->method() == "PUT") {
            //alterar os dados
            $data = $request->all();
            $buscaRegistro = Cliente::find($id);
            $buscaRegistro->update($data);

            return redirect()->route('clientes.index');
        
        }

        $findCliente = Cliente::where('id', '=', $id)->first();
        return view('pages.clientes.atualiza', compact('findCliente'));
    }
}

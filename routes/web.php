<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProdutosController;
use Resources\Views\atualizar;
use App\Http\Controllers\ClientesController;
use App\Http\Controllers\VendaController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UsuarioController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::prefix('dashboard')->group(function() {
    Route::get('/', [DashboardController::class, 'index'])->name('dashboard.index');    
});

Route::prefix('produtos')->group(function() {
    Route::get('/', [ProdutosController::class, 'index'])->name('produto.index');
    //Create
    Route::get('/cadastrarProduto', [ProdutosController::class, 'cadastrarProduto'])->name('cadastrar.produto');
    Route::post('/cadastrarProduto', [ProdutosController::class, 'cadastrarProduto'])->name('cadastrar.produto');
    //Update
    Route::get('/atualizarProduto/{id}', [ProdutosController::class, 'atualizarProduto'])->name('atualizarProduto');
    Route::put('/atualizarProduto/{id}', [ProdutosController::class, 'atualizarProduto'])->name('atualizarProduto');
    //Delete
    Route::delete('/delete', [ProdutosController::class, 'delete'])->name('produto.delete');
});

Route::prefix('clientes')->group(function() {
    Route::get('/', [ClientesController::class, 'index'])->name('clientes.index');
    //Create
    Route::get('/cadastrarCliente', [ClientesController::class, 'cadastrarCliente'])->name('cadastrar.cliente');
    Route::post('/cadastrarCliente', [ClientesController::class, 'cadastrarCliente'])->name('cadastrar.cliente');
    //Update
    Route::get('/atualizarCliente/{id}', [ClientesController::class, 'atualizarCliente'])->name('atualizarCliente');
    Route::put('/atualizarCliente/{id}', [ClientesController::class, 'atualizarCliente'])->name('atualizarCliente');
    //Delete
    Route::delete('/delete', [ClientesController::class, 'delete'])->name('cliente.delete');
});

Route::prefix('vendas')->group(function() {
    Route::get('/', [VendaController::class, 'index'])->name('vendas.index');
    //Create
    Route::get('/cadastrarVenda', [VendaController::class, 'cadastrarVendas'])->name('cadastrar.venda');
    Route::post('/cadastrarVenda', [VendaController::class, 'cadastrarVendas'])->name('cadastrar.venda');
    Route::get('/enviaComprovantePorEmail/{id}', [VendaController::class, 'enviaComprovantePorEmail'])->name('enviaComprovantePorEmail.venda');
});

Route::prefix('usuario')->group(function() {
    Route::get('/', [UsuarioController::class, 'index'])->name('usuario.index');
    Route::get('/cadastrarUsuario', [UsuarioController::class, 'cadastrarUsuario'])->name('cadastrar.usuario');
    Route::post('/cadastrarUsuario', [UsuarioController::class, 'cadastrarUsuario'])->name('cadastrar.usuario');
    //Update
    Route::get('/atualizarUsuario/{id}', [UsuarioController::class, 'atualizarUsuario'])->name('atualizarUsuario');
    Route::put('/atualizarUsuario/{id}', [UsuarioController::class, 'atualizarUsuario'])->name('atualizarUsuario');
    //Delete
    Route::delete('/delete', [UsuarioController::class, 'delete'])->name('usuario.delete');
});



@extends('index')

@section('content')

    <form class="row g-3" method="POST" action="{{ route('atualizarUsuario', $findUsuario->id) }}">
        @csrf
        @method('PUT')
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Editar usuário</h1>        
        </div>
        <div class="mb-3">
          <label  class="form-label">Nome</label>
          <input type="text" value=" {{ isset($findUsuario->name) ? $findUsuario->name : old('name') }}" class="form-control @error('nome') is-invalid @enderror" name="nome">
          @if ($errors->has('name'))
            <div class="invalid-feedback">{{ $errors->first('name') }}</div>
          @endif
        </div>
        <div class="mb-3">
          <label  class="form-label">Email</label>
          <input value=" {{ isset($findUsuario->email) ? $findUsuario->email : old('email') }}" class="form-control @error('email') is-invalid @enderror" name="email">
          @if ($errors->has('email'))
            <div class="invalid-feedback">{{ $errors->first('email') }}</div>
          @endif
        </div>
        <div class="mb-3">
          <label  class="form-label">Nova senha</label>
          <input type="password" class="form-control @error('password') is-invalid @enderror" name="password">
          @if ($errors->has('password'))
            <div class="invalid-feedback">{{ $errors->first('password') }}</div>
          @endif
        </div>
          <button type="submit" class="btn btn-success">ATUALIZAR</button>
    </form>
@endsection
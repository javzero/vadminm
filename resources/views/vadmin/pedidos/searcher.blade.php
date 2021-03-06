@section('searcher')

<div class="row header-options">
    <div class="Search-Filters search-filters">
        {{-- Search --}}
        <h4 class="hide-desk">Buscador</h4>
        {!! Form::open(['method' => 'GET', 'url' => 'vadmin/pedidos', 'class' => 'navbar-form', 'role' => 'search']) !!}
            <div class="inner-column">
                <a href="{{ url('vadmin/pedidos?show=1') }}"><button type="button" class="btn btnSquare btnRed">Pendientes</button></a>
                <a href="{{ url('vadmin/pedidos?show=2') }}"><button type="button" class="btn btnSquare btnYellow">Preparado</button></a>
                <a href="{{ url('vadmin/pedidos?show=3') }}"><button type="button" class="btn btnSquare btnGreen">Enviado</button></a>
                <a href="{{ url('vadmin/pedidos?show=5') }}"><button type="button" class="btn btnSquare btnBlue">Todos</button></a>
                <div class="input-group">
                    <span class="input-group-btn">
                    <input type="text" class="form-control" name="number" placeholder="Buscar por número...">
                        <button class="btn btnGreen" type="submit">
                            <i class="ion-ios-search"></i>
                        </button>
                    </span>
                </div>
                <div class="input-group">
                    <span class="input-group-btn">
                        {!! Form::text('name', null, ['id' => 'ClientAutoComplete', 'class' => 'form-control', 'placeholder' => 'Nombre de Cliente']) !!}
                        {!! Form::text('id', null, ['id' => 'ClientIdInput', 'class' => 'Hidden']) !!}
                        <button class="btn btnGreen" type="submit">
                            <i class="ion-ios-search"></i>
                        </button>
                    </span>
                </div>
            </div>
        {!! Form::close() !!}
        {{-- /Search --}}
        <div class="btnClose2"><i class="ion-close-round"></i></div>		
    </div>
</div>
@if(isset($_GET['show']) || isset($_GET['number']))
<div class="row search-results">
    <div class="col-md-3 pull-right text-right pad0">
        <a href="{{ url('vadmin/pedidos') }}"><button type="button" class="btnSm btnBlue">Mostrar Todos</button></a>
    </div>
    <div class="col-md-3 pad0">
        @if($pedidos->total() == 1)
            <b>1</b> Resultado encontrado
        @else
            <b>{{ $pedidos->total() }}</b> resultados encontrados
        @endif
    </div>
</div>
@endif

@endsection
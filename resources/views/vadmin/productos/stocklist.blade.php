@component('vadmin.components.tablelist')
    @slot('tableTitles')
        {{-- <th></th> --}}
        <th>Código</th>
        <th>Descripción</th>
        <th>Stock Depósito</th>
        <th>Stock Local</th>
        <th>Stock Min.</th>
        <th>Stock Max.</th>
        <th></th>
    @endslot
    @slot('tableContent')
        @foreach($products as $item)
            <tr id="Id{{ $item->id }}" class="TableList-Row table-list-row">
                {{-- <td class="list-checkbox">
                    <input type="checkbox" class="BatchDelete" data-id="{{ $item->id }}">
                </td> --}}
                <td>{{ $item->codigo }}</td>
                <td>{{ $item->nombre }}</td>
                <td>
                    @if( $item->stock1 < $item->stockmin)
                    <span class="badge">{{ $item->stock1 }}</span>
                    @else
                        {{ $item->stock1 }}
                    @endif
                </td>
                <td>
                    @if( $item->stock2 < $item->stockmin)
                    <span class="badge">{{ $item->stock2 }}</span>
                    @else
                        {{ $item->stock2 }}
                    @endif
                </td>
                <td>{{ $item->stockmin }}</td>
                <td>{{ $item->stockmax }}</td>
                <td class="list-actions">
                    <div class="TableList-Actions inner Hidden">                        
                        <a href="{{ url('vadmin/productos/'. $item->id) }}" class="btn action-btn btnBlue">
							<i class="ion-ios-search"></i>
						</a>
                        {{--  <a class="Delete btn action-btn btnRed" data-id="{!! $item->id !!}">
                            <i class="ion-ios-trash-outline"></i>
                        </a> --}}
                        <a class="Close-Actions-Btn btn btn-close btnGrey">
                            <i class="ion-ios-close-empty"></i>
                        </a>
                    </div>
                </td>
            </tr>
        @endforeach
    @endslot
    @slot('tableEmpty')
        @if(! count($products))
        <tr>
            <td>No se han encontrado registros</td>
        </tr>
        @endif
    @endslot
    @slot('pagination')
        {!! $products->render(); !!}
    @endslot
@endcomponent

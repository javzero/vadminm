@extends('vadmin.layouts.main')

{{-- PAGE TITLE--}}
@section('title', 'Vadmin | Fletes')

{{-- HEAD--}}
@section('header')
	@section('header_title', 'Listado de Fletes') 
	@section('options')
		<div class="actions">
            <a  id="ToNewItem" href="{{ url('vadmin/fletes/create') }}" class="btn btnSm buttonOther"><i class="ion-plus-round"></i> Nuevo Flete</a>
			<a href=""><button type="button" class="animated fadeIn btnSm buttonOther">Opciones</button></a>
            <button class="OpenFilters btnSm buttonOther pull-right"><i class="ion-ios-search"></i></button>
		</div>	
	@endsection
@endsection

@section('content')
    <div class="container">
		<div class="row">		
			@include('vadmin.fletes.searcher')

			@component('vadmin.components.tablelist')
				@slot('tableTitles')
					<th></th>
					<th>Nombre</th>
					<th>Teléfono</th>
					<th>Dirección</th>
					<th>Provincia</th>
					<th>Localidad</th>
					<th></th>
				@endslot
				@slot('tableContent')
					@foreach($fletes as $item)
						<tr id="Id{{ $item->id }}" class="TableList-Row table-list-row">
							<td class="list-checkbox">
								<input type="checkbox" class="BatchDelete" data-id="{{ $item->id }}">
							</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->telefono }}</td>
							<td>@if(is_null($item->direccion)) @else {{ $item->direccion }} @endif </td>
							<td>@if(is_null($item->provincia)) @else {{ $item->provincia->name }} @endif </td>
							<td>@if(is_null($item->localidad)) @else {{ $item->localidad->name }} @endif </td>
							<td class="list-actions">
								<div class="TableList-Actions inner Hidden">
									<a href="{{ url('/vadmin/fletes/' . $item->id . '/edit') }}" class="btn action-btn btnGreen" data-id="{{ $item->id }}">
										<i class="ion-edit"></i>
									</a>
									{{-- <a target="_blank" class="btn action-btn btnBlue">
										<i class="ion-ios-search"></i>
									</a> --}}
									<a class="Delete btn action-btn btnRed" data-id="{!! $item->id !!}">
										<i class="ion-ios-trash-outline"></i>
									</a>
									<a class="Close-Actions-Btn btn btn-close btnGrey">
										<i class="ion-ios-close-empty"></i>
									</a>
								</div>
							</td>
						</tr>
					@endforeach
				@endslot
				@slot('tableEmpty')
					@if(! count($fletes))
					<tr>
						<td>No se han encontrado registros</td>
					</tr>
					@endif
				@endslot
				@slot('pagination')
					{!! $fletes->render(); !!}
				@endslot
			@endcomponent
		</div>

		<div class="col-md-3">
			<div class="form-group">
				{{-- {!! Form::select('excelcantidad', ['25' => 'Últimos 25', '50' => 'Últimos 50', '*' => 'Todos' ], null, ['id' => 'ExcelAmmount', 'class' => 'form-control Select-Chosen', 'placeholder' => 'Seleccione una opcion']) !!} --}}
				<a id="ExportExcelBtn" href="{{ URL::to('vadmin/exportExcel/Flete/listado-fletes') }}"><button  class="btnSmall green-back"><i class="ion-android-exit"></i> Exportar a Excel</button></a>
			</div>
			{{-- <a href="{{ URL::to('vadmin/exportExcel/'/xls',str_replace(' ', '-', $client->razonsocial.'('.$fecha.')')) }}"><button class="btnSmall blue-back"><i class="ion-android-exit"></i> Descargar Excel</button></a> --}}
		</div>
		<button id="BatchDeleteBtn" class="button buttonCancel batchDeleteBtn Hidden"><i class="ion-ios-trash-outline"></i> Eliminar seleccionados</button>
	</div>  
	<div id="Error"></div>
	
@endsection

@section('custom_js')

	<script type="text/javascript">

	/////////////////////////////////////////////////
    //                  DELETE                     //
    /////////////////////////////////////////////////
	
	// $('#ExcelAmmount').on('change', function(e){
	// 	e.preventDefault();
	// 	var ammount = $(this).val();
	// 	var route   = "{{ URL::to('vadmin/exportExcel/Flete/listado-fletes') }}/"+ ammount +"";
	// 	// href="{{ URL::to('vadmin/exportExcel/Flete/50') }}"
	// 	$('#ExportExcelBtn').attr('href', route);
	// 	console.log(route);


	// });
	/////////////////////////////////////////////////
    //                  DELETE                     //
    /////////////////////////////////////////////////
	
	// -------------- Single Delete -------------- //
	// --------------------------------------------//
	$(document).on('click', '.Delete', function(e){
		e.preventDefault();
		var id    = $(this).data('id');
		var route = "{{ url('vadmin/delete_fletes') }}/"+id+"";
		deleteRecord(id, route, 'Cuidado!','Desea eliminar este flete?');
	});

	// -------------- Batch Delete --------------- //
	// --------------------------------------------//

	// ---- Batch Confirm Deletion ---- //
	$(document).on('click', '#BatchDeleteBtn', function(e) { 

		var rowsToDelete = [];  
		$(".BatchDelete:checked").each(function() {  
			rowsToDelete.push($(this).attr('data-id'));
		});

		var id = rowsToDelete;
		var route = "{{ url('vadmin/delete_fletes') }}/"+id+"";
		deleteRecord(id, route, 'Cuidado!','Desea eliminar estos fletes?');
	});

	</script>


@endsection


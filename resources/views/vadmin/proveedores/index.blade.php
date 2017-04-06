
@extends('vadmin.layouts.main')

{{-- PAGE TITLE--}}
@section('title', 'Vadmin | Proveedores')

{{-- HEAD--}}
@section('header')
	@section('header_title', 'Listado de Proveedores') 
	@section('options')
		<div class="actions">
            <a href="{{ url('vadmin/proveedores/create') }}" class="btn btnSm buttonOther">Nueva</a>
            <button class="OpenFilters btnSm buttonOther pull-right"><i class="ion-ios-search"></i></button>
		</div>	
	@endsection
@endsection

{{-- STYLES--}}
@section('styles')
	{{-- Include Styles Here --}}
@endsection


{{-- CONTENT --}}
@section('content')
    <div class="container">
		<div class="row">		
			@include('vadmin.proveedores.searcher')
            <div class="col-md-12 animated fadeIn main-list">

				@foreach($proveedores as $item)
				<div id="Id{{ $item->id }}" class="row Item-Row item-row Select-Row-Trigger">
					{{-- Column --}}
					<div class="noimg">
					</div>

					<div class="content">
						{{-- Column --}}
						<div class="col-xs-12 col-sm-4 col-md-4 inner">
							<span><b>{{ $item->razonsocial }}</b> | {{ $item->nombre }}</span><br>
							<span class="small">Código: {{ $item->id }}</span>
						</div>
						{{-- Column --}}
						<div class="col-xs-6 col-sm-3 col-md-4 mobile-hide">
							<span class="small-text">@if(is_null($item->telefonos)) @else {{ $item->telefonos }} @endif</span> <br>
							<span class="small-text">@if(is_null($item->email)) @else {{ $item->email }} @endif</span>
						</div>
						<div class="col-md-3 mobile-hide">
							<span class="small-text">@if(is_null($item->iva)) @else {{ $item->iva->name }} @endif</span> <br>
							<span class="small-text">@if(is_null($item->cuit)) @else {{ $item->cuit }} @endif</span>
						</div>
					</div>
					{{-- Batch Delete --}} 
					<div class="batch-delete-checkbox">
						<input type="checkbox" class="BatchDelete" data-id="{{ $item->id }}">
					</div>
					{{-- Hidden Action Buttons --}}
					<div class="List-Actions lists-actions Hidden">
						<a class="ShowEditBtn btnSmall buttonOk" data-id="{{ $item->id }}">
							<i class="ion-ios-compose-outline"></i>
						</a>
						<a href="{{ url('vadmin/proveedores/'. $item->id) }}" class="btnSmall buttonOther">
							<i class="ion-ios-search"></i>
						</a>
						<button class="Delete btnSmall buttonCancel" data-id="{!! $item->id !!}">
							<i class="ion-ios-trash-outline"></i>
						</button>
						<a class="Close-Actions-Btn btn btn-danger btn-close">
							<i class="ion-ios-close-empty"></i>
						</a>
					</div>
				</div>

				@endforeach


                {{-- If there is no articles published shows this --}}
                @if(! count($proveedores))
                <div class="Item-Row item-row empty-row">
                    No se han encontrado items
                </div>
                @endif
            </div>
            {!! $proveedores->render(); !!}
            <br>

		</div>
		<button id="BatchDeleteBtn" class="button buttonCancel batchDeleteBtn Hidden"><i class="ion-ios-trash-outline"></i> Eliminar seleccionados</button>
	</div>  
	<div id="Error"></div>
	
@endsection

@section('scripts')
	{{-- Include Scripts Here --}}
@endsection

@section('custom_js')

	<script type="text/javascript">

	/////////////////////////////////////////////////
    //                     DELETE                  //
    /////////////////////////////////////////////////


	// -------------- Single Delete -------------- //
	// --------------------------------------------//
	$(document).on('click', '.Delete', function(e){
		e.preventDefault();
		var id = $(this).data('id');
		confirm_delete(id, 'Cuidado!','Está seguro?');
	});

	function delete_item(id, route) {	

		var route = "{{ url('vadmin/ajax_delete_proveedor') }}/"+id+"";

		$.ajax({
			url: route,
			method: 'post',             
			dataType: "json",
			data: {id: id},
			success: function(data){
				console.log(data);
				if (data == 1) {
					$('#Id'+id).hide(200);
					alert_ok('Ok!','Eliminación completa');
				} else {
					alert_error('Ups!','Ha ocurrido un error');
				}
			},
			error: function(data)
			{
				$('#Error').html(data.responseText);
				console.log(data);	
			},
		});
	}

	// -------------- Batch Deletex -------------- //
	// --------------------------------------------//

	// ---- Batch Confirm Deletion ---- //
	$(document).on('click', '#BatchDeleteBtn', function(e) { 

		var rowsToDelete = [];  
		$(".BatchDelete:checked").each(function() {  
			rowsToDelete.push($(this).attr('data-id'));
		});

		var id = rowsToDelete;
		confirm_batch_delete(id,'Cuidado!','Está seguro que desea eliminar?');
		
	});

	// ---- Delete ---- //
	function batch_delete_item(id) {

		var route = "{{ url('vadmin/ajax_batch_delete_proveedores') }}/"+id+"";

		$.ajax({
			url: route,
			method: 'post',             
			dataType: "json",
			data: {id: id},
			success: function(data){
				for(i=0; i < id.length ; i++){
					$('#Id'+id[i]).hide(200);
				}
				$('#BatchDeleteBtn').addClass('Hidden');
				ajax_list();
				// $('#Error').html(data.responseText);
				// console.log(data);
			},
			error: function(data)
			{
				console.log(data);
				$('#Error').html(data.responseText);
			},
		});

	}

	</script>

@endsection

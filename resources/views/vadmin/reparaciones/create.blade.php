
@extends('vadmin.layouts.main')

@section('title', 'Vadmin | Reparaciones')

@section('header')
	@section('header_title', 'Ingreso de Reparación') 
	@section('options')
		<div class="actions">
			<a href="{{ url('vadmin/reparaciones') }}"><button type="button" class="animated fadeIn btnSm buttonOther">Volver</button></a>
		</div>	
	@endsection
@endsection

@section('styles')
	{{--{!! Html::style('plugins/texteditor/trumbowyg.min.css') !!}
	{!! Html::style('plugins/jqueryfiler/themes/jquery.filer-dragdropbox-theme.css') !!}
	{!! Html::style('plugins/colorpicker/spectrum.css') !!} --}}
	{!! Html::style('plugins/jqueryfiler/jquery.filer.css') !!}
@endsection


@section('content')

<div class="container">
	<div class="row">
		<div class="narrow-form">
			<div class="inner">
				{{-- Title --}}
				<div class="title">
					<span>Nueva Reparación</span>
				</div>
				<div class="row">
                    <div class="form-group col-md-7">
                        {{-- Search By Name --}}
                        {!! Form::label('cliente', 'Buscar por nombre') !!}
                        {!! Form::text('cliente', null, ['id' => 'ClientAutoComplete', 'class' => 'form-control']) !!}
                    </div>
                    <div class="form-group col-md-5">
                        {{-- Search By Code  --}}
                        {!! Form::label('codigo', 'Buscar por código') !!}
                        {!! Form::number('codigo', null, ['id' => 'ClientByCode', 'class' => 'form-control']) !!}
                    </div>
                    <div class="col-md-12">
                        <button id="ClientByCodeBtn" class="btnSm btnBlue"> Buscar</button>
                    </div>
                </div>
				<div class="clearfix"></div>
				{{-- Output --}}
				<div id="SmallLoader"></div>
				<div id="ClientOutPut" class="Hidden">
					<div class="output-box">
						<h4>Cliente seleccionado:</h4>
						<div id="ClientData"></div>
						<div id="OutPutForm">
							{!! Form::open(['url' => 'vadmin/reparaciones', 'method' => 'POST', 'id' => 'NewItemForm']) !!}
								<div class="col-md-12">
									<input type="text" name="user_id" class="Hidden" value="{{ Auth::user()->id }}">
								</div>
								{!! Form::text('cliente_id', null, ['id' => 'ClienteIdOutput', 'class' => 'form-control Hidden', 'required' => '']) !!} 
								<br>
								<button id="GenerateReparacionBtn" class="button buttonOk"> Generar Reparación</button>
							{!! Form::close() !!}
						</div>
					</div>
				</div>
				<div id="ClientError" class="output-box Hidden">
					El cliente no existe
				</div>
			</div> {{-- / inner --}}
		</div>  {{-- / narrow form  --}}
	</div> 	{{-- / row  --}}
</div>  {{-- / container  --}}
@endsection

@section('scripts')
	{{-- <script type="text/javascript" src="{{ asset('plugins/texteditor/trumbowyg.min.js')}} "></script> --}}
	<script type="text/javascript" src="{{ asset('plugins/jqueryfiler/jquery.filer.min.js')}} "></script>
	<script type="text/javascript" src="{{ asset('plugins/colorpicker/spectrum.js')}} "></script>
	<script type="text/javascript" src="{{ asset('plugins/colorpicker/jquery.spectrum-es.js')}} "></script>
	{{-- <script type="text/javascript" src="{{ asset('plugins/mask/mask.min.js') }}" ></script>   --}}
	<script type="text/javascript" src="{{ asset('plugins/jqueryUi/jquery-ui.min.js')}} "></script>
	<script type="text/javascript" src="{{ asset('js/jslocal/forms.js') }}" ></script>
	@include('vadmin.components.ajaxscripts');
@endsection

@section('custom_js')
	<script>

	
	$('#GenerateReparacionBtn').click(function(e){
		e.preventDefault();

		var id    = $('#ClientNameOutput').val();
		var route = "{{ url('vadmin/ajax_store_reparacion') }}/"+id+"";
		$('#ClientNameOutput').html(loaderSm('Ingresando solicitud de reparación...'));
		$('#NewItemForm').submit();
	});

    </script>
@endsection

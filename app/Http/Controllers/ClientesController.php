<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Session;
use App\Cliente;
use App\Provincia;
use App\Localidad;
use App\Iva;
use App\Condicventa;
use App\User;
use App\Flete;
use App\Zona;
use App\Lista;
use App\Direntrega;
use App\Tipoct;
use App\Comprobante;
use App\Movimiento;
use App\Pago;
use Excel;
use PDF;

class ClientesController extends Controller
{

    public function index(Request $request)
    {
        $name = $request->get('name');
        $code = $request->get('code');
        $perPage = 25;

        if ($name != '' and $code != ''){
                // Search User AND Role
                $clientes = Cliente::where('razonsocial', 'LIKE', "%$name%")->where('id', 'LIKE', "%$code%")
                ->paginate($perPage);
            } else if ($name != '') {
                // Search by name
                $clientes = Cliente::where('razonsocial', 'LIKE', "%$name%")->paginate($perPage);
           
            } else if ($code !='') {
                // Search by Name or Email
                $clientes = Cliente::where('id', '=', "$code")->paginate($perPage);
            } else {
                // Search All
                // $clientes = Cliente::paginate($perPage);
                $clientes = Cliente::with('provincia','provincia')->with('localidad','localidad')->with('iva','iva')->paginate($perPage);
        }


        // $clientes = Cliente::paginate($perPage);
        return view('vadmin.clientes.index')->with('clientes', $clientes);
    }

    //////////////////////////////////////////////////
    //                    VIEW                      //
    //////////////////////////////////////////////////

    public function ajax_list(Request $request)
    {
        $clientes = Cliente::orderBy('id', 'DESC')->paginate(20);
        return view('vadmin/clientes/list')->with('clientes', $clientes);   
    }

    public function ajax_get($id)
    {
        $cliente = Cliente::findOrFail($id);
        return response()->json($cliente);
    }
    
    public function show($id)
    {
        $cliente    = Cliente::findOrFail($id);
        $dirEntrega = Direntrega::where('cliente_id', '=', $id);
 
        return view('vadmin.clientes.show')
            ->with('cliente', $cliente)
            ->with('dirEntrega', $dirEntrega);
    }

    //////////////////////////////////////////////////
    //                  SEARCH                      //
    //////////////////////////////////////////////////


    public function ajax_list_search(Request $request)
    {   
       
        if ($request->ajax())
        {

            if (isset($_GET['name'])){
                $name = $_GET['name'];
            } 

             if (isset($_GET['id'])){
                $id = $_GET['id'];
            }

            // $clientes = Cliente::where('razonsocial', 'LIKE', '%'.$name.'%' )->paginate(20);

            if ($name != '' and $id != ''){
                // Search User AND Role
                $clientes = Cliente::where('razonsocial', 'LIKE', '%'.$name.'%' )
                ->where('id', 'LIKE', '%'.$id.'%')->paginate(20);
            } else if($name != '') {
                // Search by name
                 $clientes = Cliente::where('razonsocial', 'LIKE', '%'.$name.'%' )->paginate(20);
           
            } else if ($id !='') {
                // Search by Name or Email
                $clientes = Cliente::where('id', 'LIKE', '%'.$id.'%' )->paginate(20);
            } else {
                // Seatch All
                $clientes = Cliente::orderBy('id', 'ASC')->paginate(12);
            }

            return view('vadmin/clientes/list')->with('clientes', $clientes);  
        }

    }


    public function get_client($id)
    {
        
        $client = Cliente::where('id', '=', $id)->first();
        
        if ($client != null) {
            return response()->json(['client' => $client,
                                     'letter' => $client->iva->letter]);
        } else {
            return response()->json(['client' => 0,
                                     'letter' => 0]);
        }
           
    }

    public function get_client_doc_data($id)
    {
        $client = Cliente::where('id', '=', $id)->first();
        if($client->vendedor){
            $client->vendedor    = $client->user->name;
        } else {
            $client->vendedor = '';
        }

        if($client->nombreflete){
            $client->nombreflete = $client->flete->name;
        } else {
            $client->nombreflete = '';
        }

        if($client->direntregas){
            $client->direntregas = $client->direntregas;
        } else {
            $client->direntregas = '';
        }
        
        $client->taxcondition = $client->iva->name;
        $client->condventa = $client->condicventas->name;
        return response()->json(['client' => $client]);

    }

    public function get_client_data($id)
    {

       $client = Cliente::where('id', '=', $id)->first();

       $cliente->tipocte     = $client->tipoct->name;
       $cliente->vendedor    = $client->user->name;
       $cliente->flete_id    = $client->flete->name;
       $cliente->categiva    = $client->iva->name;
       $cliente->dirfiscal   = $client->dirfiscal;
       $cliente->tipofc      = $client->iva->tipofc;
       $cliente->tipofc_code = $client->iva->afipcode;
       $cliente->categoria   = $client->iva->name;
       // ********** IMPORTANT This Id is given by webservice  ********** //
       $cliente->categiva_id = $client->iva_id;
       
       return response()->json(['client' => $client]);
    }

    public function client_autocomplete(Request $request)
    {

        $input = $request->term;

        $queries = Cliente::where('razonsocial', 'LIKE', '%'.$input.'%' )->take(10)->get();

        foreach ($queries as $query)
        {
            $results[] = ['id' => $query->id, 'value' => $query->razonsocial]; //you can take custom values as you want
        }
        return response()->json($results);
    }
    
    //////////////////////////////////////////////////
    //                 ACCOUNTS                     //
    //////////////////////////////////////////////////

    public function accountSearch(Request $request){
        $clientes = Cliente::orderBy('id', 'ASC')->get();
        return view('vadmin/clientes/cuentas')->with('clientes', $clientes);
    }

    public function account($id)
    {
        $goto = $this->accountByDate($id,'0','0','show');
        return $goto;
    }

    public function accountByDate($id, $month, $year, $action)
    {       
        
        $currentMonth  = date('m');
        $saldoAnterior = '';
        $saldoDelMes   = '';
        $mes           = '';

        
        // Default View (Last Month)
        if($month == '0' || $month == $currentMonth){
            $movimientos   = Movimiento::where('cliente_id', '=', $id)->whereRaw('MONTH(created_at) = ?',[$currentMonth])->orderBy('created_at', 'ASC')->get();
            $saldoAnterior = Movimiento::where('cliente_id', '=', $id)->whereRaw('MONTH(created_at) != ?',[$currentMonth])->sum('importe');
            $saldoDelMes   = $movimientos->sum('importe');
            $saldo         = $saldoAnterior + $saldoDelMes;
            $mes           = getMonthName($currentMonth);
            
        // Show All Movements
        } else if($month == '*' && $year == '*' && $action) {
            $movimientos   = Movimiento::where('cliente_id', '=', $id)->orderBy('created_at', 'ASC')->get();
            $saldo         = $movimientos->sum('importe');
            $mes           = 'Todos';
        // Show Old Month
        } else {
            $movimientos   = Movimiento::where('cliente_id', '=', $id)->whereRaw('MONTH(created_at) = ?',[$month])->whereRaw('YEAR(created_at) = ?',[$year])->get();
            $saldoDelMes   = $movimientos->sum('importe');
            $saldo         = $saldoDelMes;
            $mes           = getMonthName($month);
        }
        
        $comprobantes    = Comprobante::where('cliente_id', '=', $id)->pluck('nro','id');
        $client          = Cliente::where('id', '=', $id)->first();
        
        $fecha           = date('Y-m-d H:i:s');


        switch ($action) {
            case 'show':

                return view('vadmin.clientes.cuenta')
                    ->with('movimientos', $movimientos)
                    ->with('client', $client)
                    ->with('comprobantes', $comprobantes)
                    ->with('saldoAnterior', $saldoAnterior)
                    ->with('saldoDelMes', $saldoDelMes)
                    ->with('saldo', $saldo)
                    ->with('mes', $mes) 
                    ->with('fecha', $fecha);
                break;

            case 'exportPdf':

                $pdf = PDF::loadView('vadmin.clientes.cuentaList', compact ('movimientos', 'client', 'comprobantes', 'saldoAnterior', 'saldoDelMes',
                'saldo', 'mes', 'fecha'));
                $pdf->setPaper('A4', 'portrait');

                return $pdf->stream('invoice.pdf');
                break;
            
            default:
                echo 'No Action';
                break;
        }

        
    }


    
    public function exportExcel($id, $type, $filename){
        Excel::create($filename, function($excel) use($id){

            $excel->sheet('New sheet', function($sheet) use($id) {              
                $data  = $this->accountStract($id);
                $movements = $data[0];
                $totals    = $data[1];                
                $sheet->loadView('vadmin.clientes.cuentaExcel', compact ('movements', 'totals'));
            });

        })->export('xls');
    }   
    

    function exportPdf($id)
    {   
        $client    = Cliente::where('id', '=', $id)->first();
        $client    = $client->razonsocial;
        $data      = $this->accountStract($id);
        $movements = $data[0];
        $totals    = $data[1];

        $pdf = PDF::loadView('vadmin.clientes.cuentaPdf', compact ('movements', 'client', 'totals'));
        $pdf->setPaper('A4', 'landscape');
        // Download
        // return $pdf->download('invoice.pdf');
        // Show
        return $pdf->stream('invoice.pdf');
        
    }

    //////////////////////////////////////////////////
    //                  CREATE                      //
    //////////////////////////////////////////////////


    public function create()
    {
        $cliente_id   = Cliente::orderBy('id','DESC')->first();
        $provincias   = Provincia::orderBy('name', 'ASC')->pluck('name', 'id');
        $localidades  = Localidad::orderBy('name', 'ASC')->pluck('name', 'id');
        $iva          = Iva::orderBy('name', 'ASC')->pluck('name', 'id');
        $condicventas = Condicventa::orderBy('name', 'ASC')->pluck('name', 'id');
        $users        = User::where('role', '=', 'seller')->pluck('name', 'id');
        $flete        = Flete::orderBy('name', 'ASC')->pluck('name', 'id');
        $zona         = Zona::orderBy('name', 'ASC')->pluck('name', 'id');
        $lista        = Lista::orderBy('name', 'ASC')->pluck('name', 'id');
        $tipo         = Tipoct::orderBy('name', 'ASC')->pluck('name', 'id');
        return view('vadmin.clientes.create')
            ->with('cliente_id', $cliente_id)
            ->with('provincias', $provincias)
            ->with('localidades', $localidades)
            ->with('iva', $iva)
            ->with('condicventas', $condicventas)
            ->with('users', $users)
            ->with('flete', $flete)
            ->with('zona', $zona)
            ->with('lista', $lista)
            ->with('tipo', $tipo);

    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'razonsocial'          => 'required|unique:clientes,razonsocial',
            // 'cuit'                 => 'required|unique:clientes,cuit'
        ],[
            'razonsocial.required' => 'Debe ingresar una razonsocial',
            'razonsocial.unique'   => 'La razón social ya existe',
            'cuit.required'        => 'Debe ingresar un Cuit',
            // 'cuit.unique'          => 'El Cuit ya existe',
        ]);
        
        // dd($request->all());
        
        $cliente = new Cliente($request->all());
        
        $cliente->iva_id          = $request->iva;
        $cliente->provincia_id    = $request->provincia_id;
        $cliente->localidad_id    = $request->localidad_id;
        $cliente->limitcred       = $request->limitcred;
        $cliente->condicventas_id = $request->condicventas;
        $cliente->listas_id       = $request->listas;
        $cliente->user_id         = $request->vendedor;
        $cliente->zona_id         = $request->zona;
        $cliente->flete_id        = $request->flete;
        
        // dd($cliente);
        
        $cliente->save();

        $entrega = new Direntrega();
        
        if (is_null($request->dirname)) {

        } else {

            $entrega->name         = $request->dirname;
            $entrega->cliente_id   = $request->id_direntrega; 
            $entrega->localidad_id = $request->dirlocalidad_id;
            $entrega->provincia_id = $request->dirprovincia_id;
            $entrega->telefono     = $request->dirtelefono;

            $entrega->save();
        }
        
        Session::flash('flash_message', 'Cliente ingresado correctamente');

        return redirect('vadmin/clientes');
    }


    //////////////////////////////////////////////////
    //                  EDIT                        //
    //////////////////////////////////////////////////

    public function edit($id)
    {
        $cliente      = Cliente::findOrFail($id);
        $cliente_id   = Cliente::orderBy('id','DESC')->first();
        $dirEntrega   = Direntrega::where('cliente_id', '=', $id);
        $provincias   = Provincia::orderBy('name', 'ASC')->pluck('name', 'id');
        $localidades  = Localidad::orderBy('name', 'ASC')->pluck('name', 'id');
        // If there is no loc saved this prevent the error
        if(is_null($cliente->localidad)){
            $locId = ''; 
            } else { 
                $locId = $cliente->localidad->id; 
            }
        $iva          = Iva::orderBy('name', 'ASC')->pluck('name', 'id');
        $condicventas = Condicventa::orderBy('name', 'ASC')->pluck('name', 'id');
        $users        = User::where('role', '=', 'seller')->pluck('name', 'id');
        $flete        = Flete::orderBy('name', 'ASC')->pluck('name', 'id');
        $zona         = Zona::orderBy('name', 'ASC')->pluck('name', 'id');
        $lista        = Lista::orderBy('name', 'ASC')->pluck('name', 'id');
        $tipo         = Tipoct::orderBy('name', 'ASC')->pluck('name', 'id');
        return view('vadmin.clientes.edit')
            ->with('cliente', $cliente)
            ->with('cliente_id', $cliente_id)
            ->with('provincias', $provincias)
            ->with('localidades', $localidades)
            ->with('locId', $locId)
            ->with('iva', $iva)
            ->with('condicventas', $condicventas)
            ->with('users', $users)
            ->with('flete', $flete)
            ->with('zona', $zona)
            ->with('lista', $lista)
            ->with('tipo', $tipo);
    }

    public function update($id, Request $request)
    {
        $cliente = Cliente::findOrFail($id);
        
        $this->validate($request,[
            'razonsocial'          => 'required|unique:clientes,razonsocial,'.$cliente->id,
            // 'cuit'                 => 'required|unique:clientes,cuit,'.$cliente->id
        ],[
            'razonsocial.required' => 'Debe ingresar un nombre',
            'razonsocial.unique'   => 'La razon social ya existe',
            'cuit.required'        => 'Debe ingresar un Cuit',
            // 'cuit.unique'          => 'El Cuit ya existe'
        ]);
        
        $cliente->fill($request->all());
        $cliente->save();
        
        Session::flash('flash_message', 'Cliente actualizado!');
        return redirect('vadmin/clientes');
    }

     //////////////////////////////////////////////////
    //                  DESTROY                     //
    //////////////////////////////////////////////////

    public function destroy(Request $request, $id)
    {   

        if(is_array($request->id)) {
            try {
                foreach ($request->id as $id) {
                    $record = Cliente::find($id);
                    $record->delete();
                }
                return response()->json([
                    'success'   => true,
                ]); 
            }  catch (Exception $e) {
                return response()->json([
                    'success'   => false,
                    'error'    => 'Error: '.$e
                ]);    
            }
        } else {
            try {
                $record = Cliente::find($id);
                $record->delete();
                    return response()->json([
                        'success'   => true,
                    ]);  
                    
                } catch (Exception $e) {
                    return response()->json([
                        'success'   => false,
                        'error'    => 'Error: '.$e
                    ]);    
                }
        }
    }


}
<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Familia;
use Illuminate\Http\Request;
use Session;
// use App\Proveedor;
use App\Categoria;

class FamiliasController extends Controller
{

    //////////////////////////////////////////////////
    //                   VIEW                       //
    //////////////////////////////////////////////////


    public function index(Request $request)
    {
        $keyword = $request->get('search');
        $perPage = 25;

        if (!empty($keyword)) {
            $familias = Familia::where('nombre', 'LIKE', "%$keyword%")
				
                ->paginate($perPage);
        } else {
            $familias = Familia::paginate($perPage);
        }

        return view('vadmin.familias.index', compact('familias'));
    }   


    public function show($id)
    {
        $familia = Familia::findOrFail($id);

        return view('vadmin.familias.show', compact('familia'));
    }


    //////////////////////////////////////////////////
    //                   CREATE                     //
    //////////////////////////////////////////////////

    public function create()
    {
        $categorias = Categoria::orderBy('nombre', 'ASC')->pluck('nombre', 'id');

        return view('vadmin.familias.create')->with('categorias', $categorias);
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $watch = Familia::where('nombre','=', $request->nombre)->where('categoria_id', '=', $request->categoria_id)->get();
        if($watch->isEmpty()){ 
            $requestData = $request->all();
            Familia::create($requestData);
        } else {
        
            $this->validate($request,[
                'nombre'          => 'required|unique:familias,nombre',
            ],[
                'nombre.required' => 'Debe ingresar un nombre',
                'nombre.unique'   => 'La familia ya existe',
            ]);
        }


        // $this->validate($request,[
        //     'nombre'          => 'required|unique:familias,nombre',
        // ],[
        //     'nombre.required' => 'Debe ingresar un nombre',
        //     'nombre.unique'   => 'La familia ya existe',
        // ]);
        
        // $requestData = $request->all();
        // Familia::create($requestData);

        return redirect('vadmin/familias')->with('message', 'Familia creada correctamente');
    }

    //////////////////////////////////////////////////
    //                  UPDATE                      //
    //////////////////////////////////////////////////

    public function edit($id)
    {
        $categorias = Categoria::orderBy('id','ASC')->pluck('nombre','id');
        $familia    = Familia::findOrFail($id);

        return view('vadmin.familias.edit')
            ->with('categorias', $categorias)
            ->with('familia', $familia);
    }

    public function update($id, Request $request)
    {
        $familia = Familia::findOrFail($id);

        $this->validate($request,[
            'nombre'          => 'required|unique:familias,nombre,'.$familia->id
        ],[
            'nombre.required' => 'Debe ingresar un nombre',
            'nombre.unique'   => 'La familia ya existe',
        ]);

        $familia->fill($request->all());
        $familia = $familia->save();

        return redirect('vadmin/familias')->with('message', 'Familia editada correctamente');
    }

    //////////////////////////////////////////////////
    //                  DESTROY                     //
    //////////////////////////////////////////////////

    public function destroy(Request $request, $id)
    {   

        if(is_array($request->id)) {
            try {
                foreach ($request->id as $id) {
                    $record = Familia::find($id);
                    $record->delete();
                }
                return response()->json([
                    'success'   => true,
                ]); 
            }  catch (\Illuminate\Database\QueryException $e) {
                return response()->json([
                    'success'   => false,
                    'error'    => 'Error: '.$e
                ]);    
            }
        } else {
            try {
                $record = Familia::find($id);
                $record->delete();
                    return response()->json([
                        'success'   => true,
                    ]);  
                    
                } catch (\Illuminate\Database\QueryException $e) {
                    return response()->json([
                        'success'   => false,
                        'error'    => 'Error: '.$e
                    ]);    
                }
        }
    }

}

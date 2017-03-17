<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Iva extends Model
{

    protected $table = 'ivas';

    protected $fillable = ['name'];

    protected $primaryKey = 'id';

    public function clientes()
    {
    	return $this->hasMany('App\Cliente');
    }

}

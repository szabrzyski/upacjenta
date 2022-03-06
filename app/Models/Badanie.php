<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Badanie extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'badania';

    public function kategorieBadan()
    {
        return $this->belongsToMany(KategoriaBadan::class, 'badanie_kategoria_badan', 'badanie_id', 'kategoria_badan_id');
    }

}

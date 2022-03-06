<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriaBadan extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'kategorie_badan';

    public function badania()
    {
        return $this->belongsToMany(Badanie::class, 'badanie_kategoria_badan', 'kategoria_badan_id', 'badanie_id');
    }

}

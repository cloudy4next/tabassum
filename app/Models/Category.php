<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use HasFactory;


    protected $fillable = ['parent_id', 'category'];

    public function children()
    {
    return $this->hasMany('App\Models\Category', 'parent_id');
    }

    public function expenses()
    {
        return $this->hasMany('App\Models\Expense');
    }

    public function inventments()
    {
        return $this->hasMany('App\Models\Expense');
    }


    public function profits()
    {
    return $this->hasMany('App\Models\Profit');
    }

    public function salaries()
    {
    return $this->hasMany('App\Models\Salary');
    }
}

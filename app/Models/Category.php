<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use HasFactory;


    protected $fillable = ['parent_id', 'category'];


    public  function getCategoryName($name, $cat_id)
    {
        if (is_array($name)) {
            $category_name = $this->where('category', $name)->whereIn('parent_id', $cat_id)->get()->toArray();
        } else {
            $category_name = $this->where('category', $name)->where('parent_id', $cat_id)->get()->toArray();
        }

        return $category_name;
    }
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

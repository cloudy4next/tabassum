<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;

use Spatie\Activitylog\LogOptions;

class Expense extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use HasFactory;
    use LogsActivity;

    protected $fillable = ['user_id','amount','purpose','category_id'];

    protected $casts = [
    'created_at' => 'datetime',
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }


    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()->useLogName('Expense')->logOnly([
        'amount',
        'user_id',
        ])->setDescriptionForEvent(fn(string $eventName) => "This Expense has been {$eventName}");
    }

}

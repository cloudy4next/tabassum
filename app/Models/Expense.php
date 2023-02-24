<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Contracts\Activity;
use Illuminate\Support\Facades\Auth;

class Expense extends Model
{
    use LogsActivity;
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use HasFactory;

    protected $fillable = ['user_id', 'amount', 'purpose', 'category_id', 'created_at'];

    // protected $casts = [
    //     'created_at' => 'datetime',
    // ];

    public function tapActivity(Activity $activity, string $eventName)
    {
        $activity->causer_id = backpack_user()->id;
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
        ])->setDescriptionForEvent(fn (string $eventName) => "This Expense has been {$eventName}");
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}

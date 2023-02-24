<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;
use Spatie\Activitylog\Contracts\Activity;

class Profit extends Model
{
    use \Backpack\CRUD\app\Models\Traits\CrudTrait;
    use HasFactory;
    use LogsActivity;

    protected $fillable = ['amount', 'category_id', 'user_id'];

    public function tapActivity(Activity $activity, string $eventName)
    {
        $activity->causer_id = backpack_user()->id;
    }
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()->useLogName('Expense')->logOnly([
            'amount',
            'user_id',
        ])->setDescriptionForEvent(fn (string $eventName) => "This Daily Profit has been {$eventName}");
    }
    public function user()
    {
        return $this->belongsTo('App\Models\User');
    }

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
}

<?php

namespace App\Models;

use Illuminate\Validation\Validator;
use Illuminate\Database\Eloquent\Model;

class Sessions extends Model
{

    protected $table = "sessions";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id', // Wh created Session
        'status', // use constant Upcoming and competed
        'name', // session name
        'type',  //  session type
        'intensity', // intensity
        // 'date', // which user to send this notification 
        'fees', // session fees
        'professional_name', // professional name
        'session_id', // autogenerated with prefix from setting number generator
        'created_at', // when notification create 
        'updated_at', // when notification update
    ];

    /**
     * boot => for model eventing
     *
     * @return void
     */
    protected static function boot()
    {
        parent::boot();

        static::created(function ($model) {
            $model->session_id = 'SESSION_' . $model->id; // auto created
            $model->save();
        });
    }

    /**
     * setNameAttribute => set name to title case
     *
     * @param  mixed $value
     *
     * @return void
     */
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = ucwords(strtolower($value));
    }

    /**
     * set Validation Rules
     */
    public static function rules($id)
    {
        $rules = [
            'name' => 'required|max:200',
            'type' => 'required',
            'type' => 'required',
            'fees' => 'required', // |numeric
            // 'professional_name' => 'required', // |numeric
            'user_id' => 'required',
            'status' => 'required',
        ];
        return $rules;
    }

    /**
     * messages => set Error message
     *
     * @return void
     */
    public static function messages()
    {
        /** set error message in trans files */
        return [
            'required' => __('validation.required'),
        ];
    }

    /**
     * Check Validation
     */
    public static function validation($input, $id = null)
    {
        return Validator::make($input, Sessions::rules($id), Sessions::messages());
    }

    /**
     * scopeOrdered => default sorting on created at as ascending
     *
     * @param  mixed $query
     *
     * @return void
     */
    public function scopeOrdered($query)
    {
        return $query->orderBy('created_at', 'desc');
    }

    /**
     * user_detail => User Relation
     *
     * @return void
     */
    public function user_detail()
    {
        return $this->hasOne("App\Models\User", 'id', 'user_id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;

class TargetedMuscles extends Model
{
    protected $table = "targeted_muscles";

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', // Mechanics name
        'code', // Mechanics code generate from name
        'is_active', // Mechanics is active or not
    ];

    /**
     * rules => set validation rules
     *
     * @param  mixed $id
     *
     * @return void
     */
    public static function rules($id)
    {
        $rules = [
            'name' => 'required|max:200',
            'code' => 'required|unique:targeted_muscles,code,' . $id,
            'is_active' => 'required',
        ];
        return $rules;
    }

    /**
     * messages => Set Error Message
     *
     * @return void
     */
    public static function messages()
    {
        return [
            'required' => __('validation.required'),
        ];
    }

    /**
     * validation => Check Validation
     *
     * @param  mixed $input
     * @param  mixed $id
     *
     * @return void
     */
    public static function validation($input, $id = null)
    {
        return Validator::make($input, TargetedMuscles::rules($id), TargetedMuscles::messages());
    }

    /**
     * getIsActiveAttribute
     *
     * @param  mixed $value
     *
     * @return void
     */
    public function getIsActiveAttribute($value)
    {
        return $this->attributes['is_active'] =  $value === 1  ? true : false;
    }

    /**
     * setNameAttribute => get set name to Title case
     *
     * @param  mixed $value
     *
     * @return void
     */
    public function setNameAttribute($value)
    {
        $this->attributes['name'] = ucfirst(strtolower($value));
    }
    public function getNameAttribute($value)
    {
        return $this->attributes['name'] = ucfirst(strtolower($value));
    }

    /**
     * scopeOrdered =>default sorting on created at as ascending
     *
     * @param  mixed $query
     *
     * @return void
     */
    public function scopeOrdered($query)
    {
        return $query->orderBy('created_at', 'desc');
    }
}

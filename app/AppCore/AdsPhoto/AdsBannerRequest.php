<?php

namespace App\AppCore\AdsPhoto;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Request;

class AdsBannerRequest extends FormRequest {

    public function authorize(): bool {
        return true;
    }

    public function rules(Request $request): array {
        $id = $this->route('id');
        if ($id == '0') {
            $rules = [
                'link' => "nullable|url",
                'is_active' => "required",
                'col' => "required",
                'filter_id' => "required",
                'image' => 'required|mimes:jpeg,jpg,png,gif,webp|max:10000',
            ];
        } else {
            $rules = [
                'link' => "nullable|url",
                'is_active' => "required",
                'col' => "required",
                'filter_id' => "required_with:image",
                'image' => 'mimes:jpeg,jpg,png,gif,webp|max:10000',
            ];
        }
        return $rules;
    }

    public function messages() {
        return [
            'filter_id.required_with' => 'برجاء تحديد الفلتر',
        ];
    }

}

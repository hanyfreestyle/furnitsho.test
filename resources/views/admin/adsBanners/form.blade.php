@extends('admin.layouts.app')

@section('content')
    <x-admin.hmtl.breadcrumb :pageData="$pageData"/>

    <x-admin.hmtl.section>
        <x-admin.card.def :page-data="$pageData">
            <form action="{{route($PrefixRoute.'.storeUpdate',intval($rowData->id))}}" method="post" enctype="multipart/form-data">
                @csrf
                @if($pageData['ViewType'] == 'Add')
                    <input type="hidden" name="cat_id" value="{{$key}}">
                @elseif($pageData['ViewType'] == 'Edit')
                    <input type="hidden" name="cat_id" value="{{$rowData->cat_id}}">
                @endif

                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <x-admin.form.select-arr name="is_active" :sendvalue="old('is_active',$rowData->is_active)"
                                                     label="حالة العرض" col="6"
                                                     select-type="selActive"/>

                            <x-admin.form.select-arr name="col" :send-arr="$colList" :sendvalue="old('col',$rowData->col)"
                                                     select-type="DefCat" label="حالة العرض" col="6"/>
                        </div>
                        <div class="row">
                            <x-admin.form.input label="Url" tdir="en" name="link" :row="$rowData" />

                        </div>

                    </div>
                    <div class="col-lg-6">
                        <x-admin.form.upload-file view-type="{{$pageData['ViewType']}}" :row-data="$rowData" fild-name="photo" :multiple="false"/>
                    </div>
                </div>
                <x-admin.form.submit :text="$pageData['ViewType']"/>
            </form>
        </x-admin.card.def>
    </x-admin.hmtl.section>
@endsection

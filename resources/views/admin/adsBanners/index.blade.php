@extends('admin.layouts.app')

@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row">
            </div>
        </div>
    </div>

    @foreach($adsBannerLocations as $loction )
        <x-admin.hmtl.section>
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">{{$loction->name}}</h3>
                </div>
                <div class="card-body">
                    @if(count($photos->where('cat_id', $loction->id)) > 0)
                        <div class="row col-lg-12 hanySort">
                            @foreach($photos->where('cat_id', $loction->id) as $row)
                                <div class="col-lg-3 ListThisItam" data-index="{{$row->id}}" data-position="{{$row->postion}}">
                                    <p class="PhotoImageCard"><img src="{{defImagesDir($row->photo)}}"></p>
                                    <hr>
                                    <div class="row">
                                        @can($PrefixRole.'_edit')
                                            <span class="ml-2">
                                            <x-admin.form.action-button url="{{route($PrefixRoute.'.edit',$row->id)}}" type="edit" :tip="true" size="s"/>
                                            </span>
                                        @endcan

                                        @can($PrefixRole.'_delete')
                                            <x-admin.form.action-button url="#" id="{{route($PrefixRoute.'.destroy',$row->id)}}" type="deleteSweet" :tip="false"/>
                                        @endcan
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @else
                        <x-admin.hmtl.alert-massage type="nodata"/>
                    @endif
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-12">
                    <a href="{{route($PrefixRoute.'.addNew',$loction->id)}}" class="btn btn-primary">Add New</a>
                </div>
            </div>
        </x-admin.hmtl.section>
    @endforeach

@endsection

@push('JsCode')
    <x-admin.table.sweet-delete-js/>

{{--    <script src="{{defAdminAssets('plugins/bootstrap/js/jquery-ui.min.js')}}"></script>--}}
{{--    <script type="text/javascript">--}}
{{--        $(document).ready(function () {--}}
{{--            $('.hanySort').sortable({--}}
{{--                update: function (event, ui) {--}}
{{--                    $(this).children().each(function (index) {--}}
{{--                        if ($(this).attr('data-position') != (index+1)) {--}}
{{--                            $(this).attr('data-position', (index+1)).addClass('updated');--}}
{{--                        }--}}
{{--                    });--}}
{{--                    var positions = [];--}}
{{--                    $('.updated').each(function () {--}}
{{--                        positions.push([$(this).attr('data-index'), $(this).attr('data-position')]);--}}
{{--                        $(this).removeClass('updated');--}}
{{--                    });--}}

{{--                    $.ajax({--}}
{{--                        headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},--}}
{{--                        url: '{{ route($PrefixRoute.'.sortDefPhoto') }}',--}}
{{--                        type: 'POST',--}}
{{--                        dataType: 'text',--}}
{{--                        data: {--}}
{{--                            update: 1,--}}
{{--                            positions: positions--}}
{{--                        },--}}
{{--                        success: function (response) {--}}
{{--                            console.log(response);--}}
{{--                        }--}}
{{--                    });--}}
{{--                }--}}
{{--            });--}}
{{--        });--}}
{{--    </script>--}}

@endpush

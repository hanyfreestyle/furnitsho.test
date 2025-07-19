@extends('admin.layouts.app')

@section('StyleFile')
    <x-admin.data-table.plugins :style="true" :is-active="true"/>
@endsection

@section('content')
    <x-admin.hmtl.breadcrumb :pageData="$pageData"/>
    <x-admin.hmtl.section>
        <x-admin.main.filter-form-data form-name="{{$formName}}" :row="$rowData" :country-id="true"/>

        <x-admin.card.def :page-data="$pageData" :title="$pageData['BoxH1']"  >
            <table {!! Table_Style(true,true)  !!} >
                <thead>
                <tr>
                    <th class="TD_20">#</th>
                    @if($AppPluginConfig['add_country'] and File::isFile(base_path('routes/AppPlugin/data/country.php')))
                        <th class="TD_200">{{__('admin/dataCity.form_country')}}</th>
                    @endif
                    <th class="TD_200">{{__('admin/form.text_name')}}</th>
                    <x-admin.table.action-but po="top" type="edit"/>
                    <x-admin.table.action-but po="top" type="edit"/>
                    @if($AppPluginConfig['deleteData'])
                        <x-admin.table.action-but po="top" type="delete"/>
                    @endif
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </x-admin.card.def>
    </x-admin.hmtl.section>
@endsection

@push('JsCode')
    <x-admin.data-table.sweet-dalete/>
    <x-admin.data-table.plugins :jscode="true" :is-active="true"/>
    <script type="text/javascript">
        $(function () {
            var table = $('.DataTableView').DataTable({
                processing: true,
                serverSide: true,
                pageLength: 10,
                order: [0, 'desc'],
                columnDefs: [
                    {"targets": 3, "className": "text-center"},
                    {"targets": 4, "className": "text-center"},
                ],
                @include('datatable.lang')
                ajax: "{{ route( $PrefixRoute.".DataTable") }}",

                columns: [
                    {data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false},
                    {data: 'country_name', name: 'data_country_translations.name', orderable: true},
                    {data: 'name', name: 'data_city_translations.name', orderable: true},
                        @can($PrefixRole.'_edit')
                    {
                        data: 'is_active', name: 'is_active', orderable: false, searchable: false
                    },
                    {data: 'Edit', name: 'Edit', orderable: false, searchable: false},
                        @endcan

                        @can($PrefixRole.'_delete')
                        @if($AppPluginConfig['deleteData'])
                    {
                        data: 'Delete', name: 'Delete', orderable: false, searchable: false
                    },
                    @endif
                    @endcan
                ],

            });
        });
    </script>
@endpush


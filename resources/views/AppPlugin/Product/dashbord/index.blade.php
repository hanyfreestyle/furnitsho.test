@extends('admin.layouts.app')

@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row">

            </div>
        </div>
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    @include('AppPlugin.Product.dashbord.inc_count')
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <x-app-plugin.product.chart-week/>
                </div>

                <div class="col-lg-6">
                    <x-app-plugin.product.chart-month/>
                </div>
            </div>
        </div>
    </section>

@endsection
@push('JsCode')
    <script src="{{defAdminAssets('plugins/chart.js/Chart.min.js')}}"></script>
@endpush

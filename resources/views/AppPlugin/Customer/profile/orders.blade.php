@extends('web.layouts.app')

@section('content')

    <div id="nt_content" class="mt__5">
        <x-site.def.breadcrumbs>
            {{ Breadcrumbs::render('loginPage',$meta) }}
        </x-site.def.breadcrumbs>


        <div class="kalles-section container mb__100 profile_page mt__20 cb">
            <div class="container">
                <div class="row justify-content-md-center">

                    <div class="col col-lg-3 login_photo order-lg-1 order-1 d-none d-lg-block">
                        <x-site.customer.profile-menu :page-view="$pageView"/>
                    </div>

                    <div class="col col-lg-9 col-12 order-lg-2 order-2">
                        <div class="card profile_card">
                            <div class="card-header">
                                <h3><i class="lab la-cc-visa"></i> {{__('web/profile.menu_orders_list')}}</h3>
                            </div>
                            <div class="card-body">
                                @if(count($orders) > 0 )
                                    <div class="row">
                                        <div class="col-lg-3"><strong>تاريخ الطلب</strong></div>
                                        <div class="col-lg-3"><strong>اجمالى الطلب</strong></div>
                                        <div class="col-lg-3"><strong>الشحن</strong></div>
                                        <div class="col-lg-3"><strong>اجمالى الفاتورة</strong></div>
                                    </div>
                                    @foreach($orders as $order)
                                        <div class="row">
                                            <div class="col-lg-3">{{$order->created_at}}</div>
                                            <div class="col-lg-3">{{number_format($order->total)}}</div>
                                            <div class="col-lg-3">{{number_format($order->shipping ?? 0 )}}</div>
                                            <div class="col-lg-3">{{number_format($order->total_invoice)}}</div>

                                        </div>
                                    @endforeach
                                @else
                                    <div class="col-lg-12">
                                        <div class="alert alert-warning alert-dismissible">
                                            لا توجد طلبات حتى الان ابداء التسوق الان
                                        </div>
                                    </div>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection


<?php echo '<?xml version="1.0" encoding="UTF-8"?>'; ?>
<rss xmlns:g="http://base.google.com/ns/1.0" version="2.0">
    <channel>
        <title>{{$WebConfig->name}}</title>
        <link>https://cottton.shop</link>
        <description>متجر قطن لبيع كل براندات وانواع مراتب السرير</description>
        @foreach($products as $product)
            <item>
                <g:id>{{$product->sku}}</g:id>
                <g:title>{{ $product->name }}</g:title>
                <g:description>{{ cleanDescription($product->short_des)  }}</g:description>
                <g:link>{{urldecode(route('ProductView',$product->slug))}}</g:link>
                <g:image_link>{{getPhotoPath($product->photo,"product","photo")}}</g:image_link>
                <g:condition>جديد</g:condition>
                <g:availability>in stock</g:availability>
                <g:price>{{number_format($product->price,2)}} EGP</g:price>
                @foreach($shippingCity as $city)
                    @if($city->ratesPrice->last())
                        <g:shipping>
                            <g:country>EG</g:country>
                            <g:location_group_name>{{$city->name}}</g:location_group_name>
                            <g:service>Standard</g:service>
                            <g:price>{{number_format($city->ratesPrice->last()->rate,2)}} EGP</g:price>
                        </g:shipping>
                    @endif
                @endforeach
                @if($product->brand->name ?? null)
                    <g:brand>{{ $product->brand->name }}</g:brand>
                @endif
            </item>
        @endforeach
    </channel>
</rss>

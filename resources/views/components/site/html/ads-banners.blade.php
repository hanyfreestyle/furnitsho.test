@push('StyleFile')
    <style>
        .adsBanner img {
            max-width: 100%;
            margin-bottom: 15px;
        }
    </style>
@endpush
<div class="container">
    <div class="row justify-content-center">
        @if(count($adsPhotoList->where('cat_id',$catId)))

            @foreach($adsPhotoList->where('cat_id',$catId) as $photo)
                <div class="{{$photo->col ?? 'col-lg-12'}} text-center adsBanner">
                    @if($photo->link)
                        <a href="{{$photo->link}}"><img src="{{app('url')->asset($photo->photo)}}"></a>
                    @else
                        <img src="{{app('url')->asset($photo->photo)}}">
                    @endif
                </div>
            @endforeach
        @endif
    </div>
</div>

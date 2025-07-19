<?php

namespace App\Http\Controllers\web;

use App\AppPlugin\BlogPost\Models\Blog;
use App\AppPlugin\Leads\ContactUs\ContactUsForm;
use App\AppPlugin\Leads\ContactUs\ContactUsFormRequest;
use App\AppPlugin\Orders\Models\ShippingCity;
use App\AppPlugin\Pages\Models\Page;
use App\AppPlugin\Product\Models\Product;
use App\Helpers\AdminHelper;
use App\Http\Controllers\WebMainController;
use Illuminate\Support\Facades\Auth;


class PagesViewController extends WebMainController {

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function generateXml() {
        // استرداد البيانات المطلوبة، مثل المنتجات

        $ids = ['29', '28', '26', '21', '34'];


        $products = Product::query()
//            ->whereIn('id', $ids)
            ->where('parent_id', null)
            ->where('is_merchants', 1)
            ->where('is_active', true)
            ->where('is_archived', false)
            ->where('on_stock', true)
            ->whereNotNull('photo')
            ->get();
//          dd($products);

        $shippingCity = ShippingCity::query()->with('ratesPrice')->get();
        $xmlContent = view('web.products-xml', compact('products','shippingCity'))->render();

        // إرجاع استجابة XML
        return response($xmlContent, 200)->header('Content-Type', 'application/xml');

    }
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function index() {

        $meta = parent::getMeatByCatId('home');
        parent::printSeoMeta($meta, 'page_index');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'HomePage';
        $pageView['page'] = 'page_index';

        $latestBlog = Blog::def()->take(6)->orderby('published_at', 'desc')->get();
        $homeCategory = self::CashCategoryHomePage(0, 5);

        return view('web.index')->with([
            'pageView' => $pageView,
            'latestBlog' => $latestBlog,
            'homeCategory' => $homeCategory,
        ]);
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function PolicyView($slug) {
        try {
            $slug = AdminHelper::Url_Slug($slug);
            $page = Page::whereTranslation('slug', $slug)
                ->translatedIn()
                ->with('translation')
                ->firstOrFail();
        } catch (\Exception $e) {
            self::abortError404('root');
        }

        parent::printSeoMeta($page, 'page_policy');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'page_policy';
        $pageView['page'] = 'page_policy';

        if (count($page->translations) == 1) {
            $pageView['go_home'] = route('page_index');
        } else {
            $pageView['slug'] = "policy/" . $page->translate(webChangeLocale())->slug;
        }

        return view('web.pages.policy_view')->with([
            'pageView' => $pageView,
            'page' => $page,
        ]);

    }
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function AboutUs() {
        $meta = parent::getMeatByCatId('about');
        parent::printSeoMeta($meta, 'page_AboutUs');

        $page = Page::where('id', $this->WebConfig->page_about)->firstOrFail();

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'AboutUs';

        return view('web.pages.about')->with([
            'pageView' => $pageView,
            'meta' => $meta,
            'page' => $page,
        ]);
    }


//#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
//    public function Trems() {
//        $meta = parent::getMeatByCatId('trems');
//        parent::printSeoMeta($meta, "page_Trems");
//
//        $pageView = $this->pageView;
//        $pageView['SelMenu'] = 'page_Trems';
//        $pageView['page'] = 'page_Trems';
//        $webPrivacy = WebPrivacy::where('is_active', true)->orderby('postion', 'asc')->with('translation')->get();
//
//        return view('web.pages.trems')->with([
//            'pageView' => $pageView,
//            'meta' => $meta,
//            'webPrivacy' => $webPrivacy,
//        ]);
//    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function WishList() {
        $meta = parent::getMeatByCatId('wish_list');
        parent::printSeoMeta($meta, 'page_WishList');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'offers';
        $pageView['profileMenu'] = 'wish_list';
        $pageView['page'] = 'offers';

        return view('web.pages.wish-list')->with([
            'pageView' => $pageView,
            'meta' => $meta,
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function Search() {
        $meta = parent::getMeatByCatId('search');
        parent::printSeoMeta($meta, 'page_search');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'serach_page';
        $pageView['page'] = 'serach_page';

        return view('web.pages.serach')->with([
            'pageView' => $pageView,
            'meta' => $meta,
        ]);
    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function ContactUs() {
        $meta = parent::getMeatByCatId('contact');
        parent::printSeoMeta($meta, 'page_ContactUs');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'contact';
        $pageView['page'] = 'contact';

        return view('web.pages.contact')->with([
            'pageView' => $pageView,
            'meta' => $meta,
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function ContactSaveForm(ContactUsFormRequest $request) {

        $saveContactUs = new ContactUsForm();
        $saveContactUs->name = $request->input('name');
        $saveContactUs->phone = $request->input('phone');
        if ($request->input('countryCode_phone') == 'eg') {
            $saveContactUs->full_number = "+2" . $request->input('phone');
        } else {
            $saveContactUs->full_number = "+" . $request->input('countryDialCode_phone') . $request->input('phone');
        }
        $saveContactUs->country = strtoupper($request->input('countryCode_phone'));
        $saveContactUs->subject = $request->input('subject');
        $saveContactUs->message = $request->input('message');
        $saveContactUs->request_type = $request->input('request_type');
        $saveContactUs->save();
        return redirect()->route('ContactUsThanksPage');
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function ContactUsThanksPage() {
        $meta = parent::getMeatByCatId('contact');
        parent::printSeoMeta($meta, 'ContactUsThanksPage');

        $pageView = $this->pageView;
        $pageView['SelMenu'] = 'contact';
        $pageView['page'] = 'contact';

        return view('web.pages.contact_thanks')->with([
            'pageView' => $pageView,
            'meta' => $meta,
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function UnderConstruction() {
        $config = WebMainController::getWebConfig(0);
        if ($config->web_status == 1 or Auth::check()) {
            return redirect()->route('page_index');
        }
        $meta = parent::getMeatByCatId('home');
        parent::printSeoMeta($meta, 'page_index');

        return view('under');
    }
}

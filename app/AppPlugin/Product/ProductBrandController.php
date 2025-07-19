<?php

namespace App\AppPlugin\Product;

use App\AppPlugin\Product\Models\Brand;
use App\AppPlugin\Product\Models\BrandTranslation;
use App\AppPlugin\Product\Traits\ProductBrandConfigTraits;
use App\Helpers\AdminHelper;
use App\Http\Controllers\AdminMainController;
use App\Http\Requests\def\DefCategoryRequest;
use App\Http\Traits\CrudTraits;
use App\Http\Traits\CategoryTraits;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;


class ProductBrandController extends AdminMainController {

    use CrudTraits;
    use CategoryTraits;
    use ProductBrandConfigTraits ;

    function __construct() {
        parent::__construct();
        $this->controllerName = "Brand";
        $this->PrefixRole = 'Product';
        $this->selMenu = "admin.Shop.";
        $this->PrefixCatRoute = "";
        $this->PageTitle = __('admin/proProduct.app_menu_brand');
        $this->PrefixRoute = $this->selMenu . $this->controllerName;

        $this->model = new Brand();
        $this->translation = new BrandTranslation();
        $this->translationdb = 'brand_id';
        $this->UploadDirIs = 'brand';

        $this->Config = self::LoadConfig();
        if($this->TableCategory){
            self::SetCatTree($this->Config['categoryTree'],$this->Config['categoryDeep']);
        }
        View::share('Config', $this->Config);

        $sendArr = [
            'TitlePage' => $this->PageTitle,
            'PrefixRoute' => $this->PrefixRoute,
            'PrefixRole' => $this->PrefixRole,
            'AddConfig' => true,
            'configArr' => ["editor" => 1],
            'yajraTable' => false,
            'AddLang' => true,
        ];

        self::loadConstructData($sendArr);
        View::share('DefCategoryTextName', __('admin/proProduct.brand_text_name'));
    }
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| # ClearCash
    public function ClearCash() {
        Cache::forget('CashBrandMenuList');
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     CategoryStoreUpdate
    public function CategoryStoreUpdate(DefCategoryRequest $request, $id = 0) {
        return self::TraitsCategoryStoreUpdate($request, $id);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     destroyException
    public function destroyException($id) {
        $deleteRow = Brand::where('id', $id)
            ->withCount('del_category')
            ->withCount('del_product')
            ->firstOrFail();

        if($deleteRow->del_category_count == 0 and $deleteRow->del_product_count == 0) {
            try {
                DB::transaction(function () use ($deleteRow, $id) {
                    $deleteRow = AdminHelper::DeleteAllPhotos($deleteRow);
                    AdminHelper::DeleteDir($this->UploadDirIs, $id);
                    $deleteRow->forceDelete();
                });
            } catch (\Exception $exception) {
                return back()->with(['confirmException' => '', 'fromModel' => 'CategoryProduct', 'deleteRow' => $deleteRow]);
            }
        } else {
            return back()->with(['confirmException' => '', 'fromModel' => 'CategoryProduct', 'deleteRow' => $deleteRow]);
        }

        self::ClearCash();
        return back()->with('confirmDelete', "");
    }

}

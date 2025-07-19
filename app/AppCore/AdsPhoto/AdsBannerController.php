<?php

namespace App\AppCore\AdsPhoto;

use App\Helpers\AdminHelper;
use App\Helpers\photoUpload\PuzzleUploadProcess;
use App\Http\Controllers\AdminMainController;

use App\Http\Traits\DefCategoryTraits;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;

class AdsBannerController extends AdminMainController {

    use DefCategoryTraits;

    function __construct() {
        parent::__construct();
        $this->controllerName = "adsBanners";
        $this->PrefixRole = 'config';
        $this->selMenu = "admin.";
        $this->PrefixCatRoute = "";
        $this->PageTitle = __('admin/config/upFilter.app_menu_def_photo');
        $this->PrefixRoute = $this->selMenu . $this->controllerName;
        $this->model = new AdsBanner();

        $LoadCategory = self::LoadCategory();
        $colList = $LoadCategory['adsBannerCol'];
        View::share('colList', $colList);


        $sendArr = [
            'TitlePage' => $this->PageTitle,
            'PrefixRoute' => $this->PrefixRoute,
            'PrefixRole' => $this->PrefixRole,
            'AddButToCard' => false,
        ];
        self::loadConstructData($sendArr);
//        $this->middleware('permission:' . $this->PrefixRole . '_defPhoto_view', ['only' => ['index']]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function ClearCash() {
        Cache::forget('AdsDefPhotoList_Cash');
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     index
    public function index() {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "List";
        $photos = AdsBanner::query()->get();
        $LoadCategory = self::LoadCategory();
        $adsBannerLocations = $LoadCategory['adsBannerLocations'];

        return view('admin.adsBanners.index')->with([
            'photos' => $photos,
            'adsBannerLocations' => $adsBannerLocations
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function create($key) {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Add";
        $rowData = AdsBanner::findOrNew(0);
        return view('admin.adsBanners.form')->with([
            'pageData' => $pageData,
            'rowData' => $rowData,
            'key' => $key,
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function edit($id) {
        $pageData = $this->pageData;
        $pageData['ViewType'] = "Edit";
        $rowData = AdsBanner::findOrFail($id);
        return view('admin.adsBanners.form')->with([
            'pageData' => $pageData,
            'rowData' => $rowData,
        ]);
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function storeUpdate(AdsBannerRequest $request, $id = '0') {

        $saveImgData = new PuzzleUploadProcess();
        $saveImgData->setCountOfUpload('1');
        $saveImgData->setUploadDirIs('ads-photo');
        $saveImgData->setnewFileName($request->cat_id);
        $saveImgData->UploadOne($request);

        $saveData = AdsBanner::findOrNew($id);
        $saveData->col = $request->input('col');
        $saveData->is_active = $request->input('is_active');
        $saveData->link = $request->input('link');
        $saveData->cat_id = $request->input('cat_id');
        $saveData = AdminHelper::saveAndDeletePhoto($saveData, $saveImgData);
        $saveData->save();
        self::ClearCash();
        return self::redirectWhere($request, $id, $this->PrefixRoute . '.index');

    }


#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function destroy($id) {
        $deleteRow = AdsBanner::findOrFail($id);
        $deleteRow = AdminHelper::onlyDeletePhotos($deleteRow, 3);
        $deleteRow->delete();
        self::ClearCash();
        return redirect(route($this->PrefixRoute . '.index'))->with('confirmDelete', "");
    }

#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
    public function sortDefPhotoList() {
        $pageData = $this->pageData;
        $rowData = AdsBanner::orderBy('position')->paginate(50);
        $pageData['ViewType'] = "List";
        return view('admin.appCore.photo_def.indexSort', compact('pageData', 'rowData'));
    }
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
#|||||||||||||||||||||||||||||||||||||| #     sortDefPhotoList
    public function sortDefPhotoSave(Request $request) {
        $positions = $request->positions;
        foreach ($positions as $position) {
            $id = $position[0];
            $newPosition = $position[1];
            $saveData = DefPhoto::findOrFail($id);
            $saveData->postion = $newPosition;
            $saveData->save();
        }
        Cache::forget('DefPhoto_Cash');
        return response()->json(['success' => $positions]);
    }

}

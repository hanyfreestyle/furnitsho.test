<?php

use App\AppPlugin\Product\AttributeController;
use App\AppPlugin\Product\AttributeValueController;
use App\AppPlugin\Product\ManageAttributeController;
use App\AppPlugin\Product\ProductBrandController;
use App\AppPlugin\Product\ProductCategoryController;
use App\AppPlugin\Product\ProductController;
use App\AppPlugin\Product\ProductDashboardController;
use App\AppPlugin\Product\ProductLandingController;
use App\AppPlugin\Product\ProductTagsController;
use Illuminate\Support\Facades\Route;

Route::get('/', [ProductDashboardController::class, 'Dashboard'])->name('Dashboard');


Route::get('/category/', [ProductCategoryController::class, 'CategoryIndex'])->name('Shop.Category.index');
Route::get('/category/Main', [ProductCategoryController::class, 'CategoryIndex'])->name('Shop.Category.index_Main');
Route::get('/category/SubCategory/{id}', [ProductCategoryController::class, 'CategoryIndex'])->name('Shop.Category.SubCategory');
Route::get('/category/DataTable', [ProductCategoryController::class, 'DataTable'])->name('Shop.Category.DataTable');
Route::get('/category/create', [ProductCategoryController::class, 'CategoryCreate'])->name('Shop.Category.create');
Route::get('/category/create/ar', [ProductCategoryController::class, 'CategoryCreate'])->name('Shop.Category.create_ar');
Route::get('/category/create/en', [ProductCategoryController::class, 'CategoryCreate'])->name('Shop.Category.create_en');
Route::get('/category/edit/{id}', [ProductCategoryController::class, 'CategoryEdit'])->name('Shop.Category.edit');
Route::get('/category/editAr/{id}', [ProductCategoryController::class, 'CategoryEdit'])->name('Shop.Category.editAr');
Route::get('/category/editEn/{id}', [ProductCategoryController::class, 'CategoryEdit'])->name('Shop.Category.editEn');
Route::get('/category/emptyPhoto/{id}', [ProductCategoryController::class, 'emptyPhoto'])->name('Shop.Category.emptyPhoto');
Route::get('/category/DeleteLang/{id}', [ProductCategoryController::class, 'DeleteLang'])->name('Shop.Category.DeleteLang');
Route::post('/category/update/{id}', [ProductCategoryController::class, 'CategoryStoreUpdate'])->name('Shop.Category.update');
Route::get('/category/destroy/{id}', [ProductCategoryController::class, 'destroyException'])->name('Shop.Category.destroy');
Route::get('/category/config', [ProductCategoryController::class, 'config'])->name('Shop.Category.config');
Route::get('/category/emptyIcon/{id}', [ProductCategoryController::class, 'emptyIcon'])->name('Shop.Category.emptyIcon');
Route::get('/category/CatSort/{id}', [ProductCategoryController::class, 'CategorySort'])->name('Shop.Category.CatSort');
Route::post('/category/SaveSort', [ProductCategoryController::class, 'CategorySaveSort'])->name('Shop.Category.SaveSort');


Route::get('/brand/', [ProductBrandController::class, 'CategoryIndex'])->name('Shop.Brand.index');
Route::get('/brand/Main', [ProductBrandController::class, 'CategoryIndex'])->name('Shop.Brand.index_Main');
Route::get('/brand/SubCategory/{id}', [ProductBrandController::class, 'CategoryIndex'])->name('Shop.Brand.SubCategory');
Route::get('/brand/DataTable', [ProductBrandController::class, 'DataTable'])->name('Shop.Brand.DataTable');
Route::get('/brand/create', [ProductBrandController::class, 'CategoryCreate'])->name('Shop.Brand.create');
Route::get('/brand/create/ar', [ProductBrandController::class, 'CategoryCreate'])->name('Shop.Brand.create_ar');
Route::get('/brand/create/en', [ProductBrandController::class, 'CategoryCreate'])->name('Shop.Brand.create_en');
Route::get('/brand/edit/{id}', [ProductBrandController::class, 'CategoryEdit'])->name('Shop.Brand.edit');
Route::get('/brand/editAr/{id}', [ProductBrandController::class, 'CategoryEdit'])->name('Shop.Brand.editAr');
Route::get('/brand/editEn/{id}', [ProductBrandController::class, 'CategoryEdit'])->name('Shop.Brand.editEn');
Route::get('/brand/emptyPhoto/{id}', [ProductBrandController::class, 'emptyPhoto'])->name('Shop.Brand.emptyPhoto');
Route::get('/brand/DeleteLang/{id}', [ProductBrandController::class, 'DeleteLang'])->name('Shop.Brand.DeleteLang');
Route::post('/brand/update/{id}', [ProductBrandController::class, 'CategoryStoreUpdate'])->name('Shop.Brand.update');
Route::get('/brand/destroy/{id}', [ProductBrandController::class, 'destroyException'])->name('Shop.Brand.destroy');
Route::get('/brand/config', [ProductBrandController::class, 'config'])->name('Shop.Brand.config');
Route::get('/brand/emptyIcon/{id}', [ProductBrandController::class, 'emptyIcon'])->name('Shop.Brand.emptyIcon');
Route::get('/brand/CatSort/{id}', [ProductBrandController::class, 'CategorySort'])->name('Shop.Brand.CatSort');
Route::post('/brand/SaveSort', [ProductBrandController::class, 'CategorySaveSort'])->name('Shop.Brand.SaveSort');

Route::get('/product/update-prices', [ProductController::class, 'UpdatePrices'])->name('Shop.UpdatePrices.index');

Route::get('/product/', [ProductController::class, 'ProductIndex'])->name('Shop.Product.index');
Route::post('/product/', [ProductController::class, 'ProductIndex'])->name('Shop.Product.filter');
Route::get('/product/DataTable', [ProductController::class, 'ProductDataTable'])->name('Shop.Product.DataTable');

Route::get('/product/achived', [ProductController::class, 'ProductIndex'])->name('Shop.ProductAchived.index');
Route::post('/product/achived', [ProductController::class, 'ProductIndex'])->name('Shop.Product.filter_archived');
Route::get('/product/DataTableArchived', [ProductController::class, 'DataTableArchived'])->name('Shop.Product.DataTableArchived');

Route::get('/product/SoftDelete/', [ProductController::class, 'ProductIndex'])->name('Shop.Product.SoftDelete');
Route::get('/product/DataTableSoftDelete/', [ProductController::class, 'DataTableSoftDelete'])->name('Shop.Product.DataTableSoftDelete');

Route::get('/product/create', [ProductController::class, 'create'])->name('Shop.Product.create');
Route::get('/product/create/ar', [ProductController::class, 'create'])->name('Shop.Product.create_ar');
Route::get('/product/create/en', [ProductController::class, 'create'])->name('Shop.Product.create_en');
Route::get('/product/edit/{id}', [ProductController::class, 'edit'])->name('Shop.Product.edit');
Route::get('/product/editAr/{id}', [ProductController::class, 'edit'])->name('Shop.Product.editAr');
Route::get('/product/editEn/{id}', [ProductController::class, 'edit'])->name('Shop.Product.editEn');
Route::post('/product/update/{id}', [ProductController::class, 'storeUpdate'])->name('Shop.Product.update');

Route::get('/product/destroy/{id}', [ProductController::class, 'destroy'])->name('Shop.Product.destroy');
Route::get('/product/restore/{id}', [ProductController::class, 'Restore'])->name('Shop.Product.restore');
Route::get('/product/force/{id}', [ProductController::class, 'ForceDeleteException'])->name('Shop.Product.force');
Route::get('/product/DeleteLang/{id}', [ProductController::class, 'DeleteLang'])->name('Shop.Product.DeleteLang');
Route::get('/product/emptyPhoto/{id}', [ProductController::class, 'emptyPhoto'])->name('Shop.Product.emptyPhoto');

Route::get('/product/photos/{id}', [ProductController::class, 'ListMorePhoto'])->name('Shop.Product.More_Photos');
Route::post('/product/AddMore', [ProductController::class, 'AddMorePhotos'])->name('Shop.Product.More_PhotosAdd');
Route::post('/product/saveSort', [ProductController::class, 'sortPhotoSave'])->name('Shop.Product.sortPhotoSave');
Route::get('/product/PhotoDel/{id}', [ProductController::class, 'More_PhotosDestroy'])->name('Shop.Product.More_PhotosDestroy');
Route::get('/product/config', [ProductController::class, 'config'])->name('Shop.Product.config');


Route::get('/product/tags', [ProductTagsController::class, 'TagsIndex'])->name('Shop.ProductTags.index');
Route::get('/product/tags/DataTable', [ProductTagsController::class, 'TagsDataTable'])->name('Shop.ProductTags.DataTable');
Route::get('/product/tags/create', [ProductTagsController::class, 'TagsCreate'])->name('Shop.ProductTags.create');
Route::get('/product/tags/edit/{id}', [ProductTagsController::class, 'TagsEdit'])->name('Shop.ProductTags.edit');
Route::post('/product/tags/update/{id}', [ProductTagsController::class, 'TagsStoreUpdate'])->name('Shop.ProductTags.update');
Route::get('/product/tags/destroy/{id}', [ProductTagsController::class, 'TagsDelete'])->name('Shop.ProductTags.destroy');
Route::get('/product/tags/config', [ProductTagsController::class, 'TagsConfig'])->name('Shop.ProductTags.config');
Route::get('/product/tags/TagsSearch', [ProductTagsController::class, 'TagsSearch'])->name('Product.TagsSearch');
Route::get('/product/tags/TagsOnFly', [ProductTagsController::class, 'TagsOnFly'])->name('Product.TagsOnFly');


Route::get('/product/attribute', [AttributeController::class, 'index'])->name('Shop.ProAttribute.index');
Route::get('/product/attribute/create', [AttributeController::class, 'create'])->name('Shop.ProAttribute.create');
Route::get('/product/attribute/edit/{id}', [AttributeController::class, 'edit'])->name('Shop.ProAttribute.edit');
Route::post('/product/attribute/update/{id}', [AttributeController::class, 'storeUpdate'])->name('Shop.ProAttribute.update');
Route::get('/product/attribute/destroy/{id}', [AttributeController::class, 'ForceDeleteException'])->name('Shop.ProAttribute.destroy');
Route::get('/product/attribute/Sort', [AttributeController::class, 'Sort'])->name('Shop.ProAttribute.Sort');
Route::post('/product/attribute/SaveSort', [AttributeController::class, 'SaveSort'])->name('Shop.ProAttribute.SaveSort');
Route::get('/product/attribute/config', [AttributeController::class, 'config'])->name('Shop.ProAttribute.config');


Route::get('/attribute/value/{AttributeId}', [AttributeValueController::class, 'index'])->name('Shop.ProAttributeValue.index');
Route::get('/attribute/value/create/{AttributeId}', [AttributeValueController::class, 'create'])->name('Shop.ProAttributeValue.create');
Route::get('/attribute/value/edit/{id}', [AttributeValueController::class, 'edit'])->name('Shop.ProAttributeValue.edit');
Route::post('/attribute/value/update/{id}', [AttributeValueController::class, 'storeUpdate'])->name('Shop.ProAttributeValue.update');
Route::get('/attribute/value/destroy/{id}', [AttributeValueController::class, 'ForceDeleteException'])->name('Shop.ProAttributeValue.destroy');
Route::get('/attribute/value/Sort/{AttributeId}', [AttributeValueController::class, 'Sort'])->name('Shop.ProAttributeValue.Sort');
Route::post('/attribute/value/SaveSort', [AttributeValueController::class, 'SaveSort'])->name('Shop.ProAttributeValue.SaveSort');
Route::get('/attribute/value/config/{AttributeId}', [AttributeValueController::class, 'config'])->name('Shop.ProAttributeValue.config');

Route::get('/product/manage-attribute/{id}', [ManageAttributeController::class, 'ManageAttribute'])->name('Shop.Product.manage-attribute');
Route::post('/product/manage-attribute-update/{id}', [ManageAttributeController::class, 'ManageAttributeUpdate'])->name('Shop.Product.manage-attributeUpdate');
Route::get('/product/remove-attribute/{proId}/{AttributeId}', [ManageAttributeController::class, 'RemoveAttribute'])->name('Shop.Product.remove-attribute');

Route::post('/product/attribute-value-update', [ManageAttributeController::class, 'ManageAttributeValueUpdate'])->name('Shop.Product.value-update');
Route::post('/product/UpdateVariants/{proId}', [ManageAttributeController::class, 'UpdateVariants'])->name('Shop.Product.UpdateVariants');
Route::get('/product/remove-variants/{proId}', [ManageAttributeController::class, 'RemoveVariants'])->name('Shop.Product.RemoveVariants');



Route::get('/LandingPage/',[ProductLandingController::class,'index'])->name('LandingPage.index');
Route::get('/LandingPage/create',[ProductLandingController::class,'PageCreate'])->name('LandingPage.create');
Route::get('/LandingPage/AddNew',[ProductLandingController::class,'PageCreate'])->name('LandingPage.AddNew');
Route::get('/LandingPage/edit/{id}',[ProductLandingController::class,'PageEdit'])->name('LandingPage.edit');
Route::post('/LandingPage/update/{id}',[ProductLandingController::class,'PageStoreUpdate'])->name('LandingPage.update');
Route::get('/LandingPage/destroy/{id}',[ProductLandingController::class,'destroy'])->name('LandingPage.destroy');
Route::get('/LandingPage/emptyPhoto/{id}', [ProductLandingController::class,'emptyPhoto'])->name('LandingPage.emptyPhoto');
Route::get('/LandingPage/config', [ProductLandingController::class,'config'])->name('LandingPage.config');





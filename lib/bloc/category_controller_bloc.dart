import 'package:flutter/foundation.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopCategoryModel.dart';
import 'package:hypertools/apis/models/cmsModels/hyperShop/hyperShopContentModel.dart';
import 'package:hypertools/apis/models/models/filterModel.dart';
import 'package:hypertools/apis/serverApis/cmsService/hyperShop/hyperShopCategoryService.dart';
import 'package:hypertools/poco/errorExceptionResult.dart';
import 'package:hypertools/poco/stream_helper.dart';

import 'category_item_bloc.dart';
import 'main_user_bloc.dart';

class CategoryControllerBloc extends Object {
  final MainUserBloc parent;
  CategoryControllerBloc(this.parent);

  StreamHelper<bool> busyIndicatorIsBusy = StreamHelper<bool>(initValue: false);
  StreamHelper<ErrorExceptionResult<HyperShopCategoryModel>> categoryList =
      StreamHelper<ErrorExceptionResult<HyperShopCategoryModel>>();
  StreamHelper<int> productTabItem = StreamHelper<int>(initValue: 0);
  StreamHelper<HyperShopContentModel> selectedProduct =
      StreamHelper<HyperShopContentModel>();
  StreamHelper<CategoryItemBloc> selectedCategory =
      StreamHelper<CategoryItemBloc>();
  ObserverList<CategoryItemBloc> innerBlocs = ObserverList<CategoryItemBloc>();

  Future<ErrorExceptionResult<HyperShopCategoryModel>>
      getProductCategories() async {
    if (categoryList.lastValue != null &&
        categoryList.lastValue.listItems != null &&
        categoryList.lastValue.listItems.length > 0)
      return categoryList.lastValue;
    busyIndicatorIsBusy.changeValue(true);
    var service = new HyperShopCategoryService();
    service.setAuthorizationToken('',
        deviceToken: MainUserBloc.deviceTokenData);
    var rt = await service.serviceGetAllMicroServiceAsync(FilterModel(
        count: true,
        currentPageNumber: 0,
        rowPerPage: 10000,
        sortColumn: "rowId"));
    if (rt.isSuccess) {
      if (rt.listItems != null && rt.listItems.length > 0) {
        for (var r in rt.listItems) {
          var bloc = innerBlocs.firstWhere((element) {
            if (element.model.name == r.name) {
              return true;
            }
            return false;
          }, orElse: () => null);
          if (bloc == null) innerBlocs.add(CategoryItemBloc(this, r));
        }
      }
      categoryList.changeValue(rt);
    }
    Future.delayed(Duration(seconds: 1), () {
      busyIndicatorIsBusy.changeValue(false);
    });

    return rt;
  }

  // Map<String,CategoryItemBloc> map= Map<String,CategoryItemBloc>();
  CategoryItemBloc getBloc(HyperShopCategoryModel model) {
    var bloc = innerBlocs.firstWhere((element) {
      if (element.model.name == model.name) {
        return true;
      }
      return false;
    }, orElse: () => null);

    if (bloc == null) {
      bloc = CategoryItemBloc(this, model);
      innerBlocs.add(bloc);
    }
    return bloc;
  }

  CategoryItemBloc lastCategorySelected;
  void selectCategoryToShow(CategoryItemBloc bloc) {
    selectedCategory.changeValue(null);
    productTabItem.changeValue(2);
    Future.delayed(Duration(milliseconds: 500), () {
      lastCategorySelected = bloc;
      selectedCategory.changeValue(bloc);
    });
  }

  void reSelectCategory() {}

  Future<void> selectProductToShow(
      HyperShopContentModel model, bool calledFromCategoryShow) async {
    selectedProduct.changeValue(null);
    parent.mainTabIndex.changeValue(0);
    productTabItem.changeValue(1);
    var mdl = await parent.orderBloc.getLastModel(model);
    mdl.calledFromCategoryShow = calledFromCategoryShow;
    mdl.calledFromSearch = model.calledFromSearch;
    Future.delayed(Duration(milliseconds: 500), () {
      selectedProduct.changeValue(mdl);
    });
  }
}
